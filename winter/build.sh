PRGDIR=`dirname "$0"`
cd "$PRGDIR"/demo-winter
exec mvn clean package
cd -
