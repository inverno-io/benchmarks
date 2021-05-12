PRGDIR=`dirname "$0"`
cd "$PRGDIR"/demo-micronaut
exec mvn clean package
cd -
