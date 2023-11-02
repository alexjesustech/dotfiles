# Dotfiles

Cconfigurações do meu ambiente de trabalho.

## Requisitos

Gerenciado por [dotdrop](https://github.com/deadc0de6/dotdrop)

## Uso

Adicione um novo arquivo a ser rastreado pelo dotdrop.

```bash
./dotdrop.sh import filepath
```

Atualize o repositório dotdrop após alterações no sistema host.

```bash
./update.sh

# or ./dotdrop.sh update -f
# ./update.sh automatiza a ocultação de segredos e alguns arquivos extras
```

Compare o repo com o sistema host (ou novo sistema antes de instalar).

```bash
./dotdrop.sh compare
```

Instalar em um novo host.

```bash
./dotdrop install
```
