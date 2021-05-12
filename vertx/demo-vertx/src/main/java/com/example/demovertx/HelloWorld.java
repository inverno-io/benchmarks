package com.example.demovertx;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.DeploymentOptions;
import io.vertx.core.Vertx;
import io.vertx.core.VertxOptions;
import io.vertx.ext.web.Router;
import io.vertx.core.http.HttpMethod;

public class HelloWorld extends AbstractVerticle {

    // Convenience method so you can run it in your IDE
   public static void main(String[] args) {
       long t0 = System.nanoTime();
       Vertx vertx = Vertx.vertx(new VertxOptions().setPreferNativeTransport(true));
       vertx.deployVerticle(HelloWorld.class.getName(), new DeploymentOptions().setInstances(VertxOptions.DEFAULT_EVENT_LOOP_POOL_SIZE / 2), event -> {
          if (event.succeeded()) {
                System.out.println("Server started on port " + 8080 + " in " + ((System.nanoTime() - t0)/1000000f) + "ms" );
            }
            else {
                System.out.println("Unable to start your application " + event.cause());
            }
          });
    }

    @Override
    public void start() throws Exception {

        Router router = Router.router(vertx);

        /*router.route().handler(routingContext -> {
            routingContext.response().putHeader("content-type", "text/html").end("Hello World!");
        });*/

        router.route("/hello").method(HttpMethod.GET).handler(routingContext -> {
            routingContext.response().end("Hello World");
        });

        vertx.createHttpServer().requestHandler(router).listen(8080);
    }
}
