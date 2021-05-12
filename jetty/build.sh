PRGDIR=`dirname "$0"`
JETTY_VERSION=11.0.2

if ! [ -e "$PRGDIR"/jetty-home ]
then
    wget -O "$PRGDIR"/jetty-home.tar.gz https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/"$JETTY_VERSION"/jetty-home-"$JETTY_VERSION".tar.gz
    tar xvfz "$PRGDIR"/jetty-home.tar.gz -C "$PRGDIR"
    mv "$PRGDIR"/jetty-home-"$JETTY_VERSION" "$PRGDIR"/jetty-home
fi

cd "$PRGDIR"/demo-jetty
mvn clean package
cd -

cp -v "$PRGDIR"/demo-jetty/target/demo-jetty.war "$PRGDIR"/jetty-base/webapps
