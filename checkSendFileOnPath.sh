#!/bin/bash
# by tleite@bsd.com.br
# Tiago Silva Leite
# V.1
### Verifica se há arquivos e envia para outro diretório

src='Colocar aqui o diretório a ser monitorado'
dst='Colocar aqui o diretório a receber os arquivos'
log='Colocar aqui o diretório do log'

# Execução
cmd=`ls $DIR  | wc -l`

if [ $cmd -gt 0 ]; then
mv $src*  $dst  &&  echo "Copia  de $src para: $dst com sucesso em: $(date "+%r , dia %d de %b de %Y")"  >> $log
else
echo " Diretorio vazio,backup nao realizado em: $(date "+%r , dia %d de %b de %Y")"  >> $log
fi
exit
