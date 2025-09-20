#!/bin/bash

RED='\033[0;31m'
YELLOW='\033[0;32m'
NC='\033[0m'

CISCO_NAME="Packet_Tracer822_amd64_signed.deb"
CISCO_URL="https://github.com/Luidooo/Cisco/releases/download/v1.0/$CISCO_NAME"
LIBGL_DEB="libgl1-mesa-glx_22.0.1-1ubuntu2_amd64.deb"
REPO_URL="https://github.com/Luidooo/Cisco.git"
TEMP_DIR="/tmp/cisco_install"

echo -e "${YELLOW}=== CISCO PACKET TRACER INSTALLER ===${NC}"

download_release() {
  mkdir -p "$TEMP_DIR"
  cd "$TEMP_DIR"

  echo -e "${YELLOW}[INSTALLER]${NC} Baixando $CISCO_NAME..."
  echo -e "${YELLOW}[INSTALLER]${NC} Se você estiver na UnB isso vai demorar..."
  if ! wget --progress=bar:force "$CISCO_URL" -O "$CISCO_NAME"; then
    echo -e "${RED}[ERROR]${NC} Falha no download da release"
    echo -e "${YELLOW}[HELP]${NC} Tente baixar manualmente:"
    echo -e "${YELLOW}[URL]${NC} https://github.com/Luidooo/Cisco/releases/"
    echo -e "${YELLOW}[HELP]${NC} Clique em $CISCO_NAME e salve em $TEMP_DIR"
    echo -e "${YELLOW}[CONTACT]${NC} Telegram: @luis_luid"
    echo -e "${YELLOW}[DOCS]${NC} https://simplificandoredes.com/en/install-packet-tracer-on-linux/"
    exit 1
  fi
}

clone_repository() {
  cd "$TEMP_DIR"

  if [ -d "Cisco" ]; then
    rm -rf Cisco
  fi

  echo -e "${YELLOW}[INSTALLER]${NC} Clonando repositório..."
  if ! git clone "$REPO_URL"; then
    echo -e "${RED}[ERROR]${NC} Falha ao clonar repositório"
    exit 1
  fi
}

install_dependencies() {
  echo -e "${YELLOW}[INSTALLER]${NC} Instalando dependências..."
  echo -e "${YELLOW}[APT]${NC} Atualizando lista de pacotes..."
  sudo apt update
  echo -e "${YELLOW}[APT]${NC} Instalando pacotes necessários..."
  sudo apt-get install -y dialog libxcb-xinerama0-dev wget git

  echo -e "${YELLOW}[APT]${NC} Tentando instalar libgl1-mesa-glx..."
  if ! sudo apt-get install -y libgl1-mesa-glx; then
    echo -e "${YELLOW}[INSTALLER]${NC} Usando instalação manual do libgl..."
    install_libgl_manual
  fi
}

install_libgl_manual() {
  cd "$TEMP_DIR/Cisco"

  if [ -f "$LIBGL_DEB" ]; then
    echo -e "${YELLOW}[DPKG]${NC} Instalando $LIBGL_DEB..."
    sudo dpkg -i "$LIBGL_DEB"
  else
    echo -e "${RED}[ERROR]${NC} Arquivo $LIBGL_DEB não encontrado"
  fi
}

install() {
  cd "$TEMP_DIR"

  echo -e "${YELLOW}[INSTALLER]${NC} Instalando Cisco Packet Tracer..."
  echo -e "${YELLOW}[DPKG]${NC} Primeira tentativa de instalação..."
  sudo dpkg -i "$CISCO_NAME"
  echo -e "${YELLOW}[APT]${NC} Corrigindo dependências quebradas..."
  sudo apt --fix-broken install -y
  echo -e "${YELLOW}[DPKG]${NC} Segunda tentativa de instalação..."
  sudo dpkg -i "$CISCO_NAME"

  if [ $? -eq 0 ]; then
    echo -e "${YELLOW}[SUCCESS]${NC} Cisco Packet Tracer instalado com sucesso!"
    echo -e "${YELLOW}[INFO]${NC} Para executar: packettracer"
  else
    echo -e "${RED}[ERROR]${NC} Falha na instalação"
    echo -e "${YELLOW}[CONTACT]${NC} Telegram: @luis_luid"
    echo -e "${YELLOW}[DOCS]${NC} https://simplificandoredes.com/en/install-packet-tracer-on-linux/"
  fi
}

cleanup() {
  echo -e "${YELLOW}[INSTALLER]${NC} Limpando arquivos temporários..."
  rm -rf "$TEMP_DIR"
}

main() {
  install_dependencies
  download_release
  clone_repository
  install
  cleanup
  echo -e "${YELLOW}[INSTALLER]${NC} Processo concluído!"
}

#cisco cisco cisco cisco

main
