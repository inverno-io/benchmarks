PRGDIR=`dirname "$0"`
cd "$PRGDIR"/demo-microprofile
exec mvn clean package
cd -
