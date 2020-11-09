import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'router_handler.dart';

class Routes {
  static String root = '/';
  static String detailsPage = '/detail';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
        });
    router.define(detailsPage, handler: detailsHandler);
    // router.define(demoSimple, handler: demoRouteHandler);
    // router.define(demoSimpleFixedTrans,
    //     handler: demoRouteHandler, transitionType: TransitionType.inFromLeft);
    // router.define(demoFunc, handler: demoFunctionHandler);
    // router.define(deepLink, handler: deepLinkHandler);
  }
}