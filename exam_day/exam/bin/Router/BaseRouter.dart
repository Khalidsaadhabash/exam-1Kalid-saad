import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../Response/BaseResponse.dart';
import 'emailRouter.dart';
import 'imageRouter.dart';
import 'mylistRouter.dart';
class BaseRoute {
  Router get handler {
    final router = Router()
      ..get('/', rootHandler)
      ..mount('/endpoint1', emailRoute().handler)
      ..mount('/endpoint2', image().handler)
      ..mount('/endpoint3&4',mylistRouter().handler)
      ..mount('endpoint5',mylistRouter().handler)
      ..all('/<name|.*>', (Request req){
        return Response.notFound('sorry page not found!:');
      });
  
    return router;

  }
}