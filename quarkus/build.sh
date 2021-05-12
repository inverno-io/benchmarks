PRGDIR=`dirname "$0"`
cd "$PRGDIR"/demo-quarkus
exec mvn clean package
cd -
