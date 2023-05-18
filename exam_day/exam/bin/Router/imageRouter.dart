


import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../Response/imageRes.dart';
import '../Middleware/imageMidd.dart';

class image{
  Handler get handler {
    final router=Router()
   ..post('/image', image().handler)
    ..delete("/delete",image().handler);
    final pipline = Pipeline().addMiddleware(checkImage()).addHandler(router);
    return pipline;

}
}