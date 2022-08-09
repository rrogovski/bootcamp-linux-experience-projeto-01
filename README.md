# bootcamp-linux-experience-projeto-01
Projeto 01 do Bootcamp Linux Experience - Infra as a Code

## Como usar ou testar esse script

Faço o clone desse projeto e entre no diretório:

```sh
git clone https://github.com/rrogovski/bootcamp-linux-experience-projeto-01.git
cd bootcamp-linux-experience-projeto-01
```

Para criação e teste do script fiz utilização de um container Docker Arch Linux. Caso tenha o instalado basta usar o comando abaixo que iniciar um container Arch Linux no modo iterativo:

```sh
docker run -it --rm -v $(pwd)/:/scripts archlinux:latest
```

Com isso você estará em um container pronto para uso. *Lembrando que ao sair do container todas as alterações feitas, serão perdidas*.

Dentro do container execute os comandos abaixo para instalar o vim e o openssl:

```sh
pacman -Sy openssl vim --noconfirm
```

Acesse o diretório do scrip, altere para permissão de execução e execute:

```sh
cd /scripts
chmod +x script.sh
./script.sh
```
Feito isso basta realizar os testes de permissão de cada usuário que foi criado. Como por exemplo ao acessar com o usuário `carlos` será solicitado para alterar a senha (assim como os demais) e verificar as permissões dos diretórios.


