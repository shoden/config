export PATH=$PATH:$HOME/bin
export EDITOR="vim"
export DEBFULLNAME="Juan Roldan Ruiz"
export DEBEMAIL="juan@shoden.es"

# Jade
export JADE_LIB=/usr/lib/jade
JADE_CP=$JADE_LIB/http.jar:$JADE_LIB/iiop.jar:$JADE_LIB/jade.jar:$JADE_LIB/jadeTools.jar:$JADE_LIB/commons-codec/commons-codec-1.3.jar
alias rJade='java -cp $JADE_CP jade.Boot'
alias cJade='javac -cp $JADE_CP'

# export CDPATH=.:~/src/iptv/code/src
# corregir typos al hacer cd
shopt -s cdspell

