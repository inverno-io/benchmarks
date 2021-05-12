PRGDIR=`dirname "$0"`
cd "$PRGDIR"/demo-vertx
exec mvn clean package
cd -
