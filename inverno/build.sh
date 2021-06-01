PRGDIR=`dirname "$0"`
cd "$PRGDIR"/demo-inverno
exec mvn clean package
cd -
