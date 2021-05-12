PRGDIR=`dirname "$0"`

cd "$PRGDIR"/demo-jetty
mvn clean
cd -

rm -rf "$PRGDIR"/jetty-home
rm "$PRGDIR"/jetty-home.tar.gz


