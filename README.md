# Hello Docker (Spring Boot)
Aplicação Java 17 + Spring Boot 3 minimalista para demonstrar Dockerfile e docker-compose.

## Deploy na VM

### 1. Login na VM
```bash
ssh rm560716@172.177.20.228
```

### 2. Atualizar sistema e baixar pacotes necessários
```bash
sudo dnf update -y
sudo dnf install -y yum-utils
```

### 3. Adicionar repositório Docker
```bash
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
```

### 4. Instalar Docker Engine
```bash
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

### 5. Conferir o status do Docker
```bash
sudo systemctl status docker
```

### 6. Liberar uso sem sudo
```bash
sudo usermod -aG docker rm560716
newgrp docker
```

### 7. Corrigir permissões (caso necessário)
```bash
sudo chown root:docker /var/run/docker.sock
sudo chmod 660 /var/run/docker.sock
```

### 8. Testar a instalação
```bash
docker run hello-world
```

### 9. Instalar o Git
```bash
sudo dnf install -y git
git --version
```

### 10. Clonar o repositório
```bash
git clone https://github.com/MadjerFin/challengesprint2.git
```

### 11. Buildar e rodar o projeto
```bash
cd challengesprint2/
docker compose build
docker compose up -d
docker compose ps
```

### 12. Acessar o projeto
```
http://172.177.20.228:80
```
