import 'package:http/http.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Middleware/emailmidd.dart';
import '../Response/emailRes.dart';



class emailRoute {
  Handler get handler {
    final router = Router()
      ..post('/logein/',loginemailResponse )
      ..post('/user', userResponse);
      
    final pipline = Pipeline().addMiddleware(checkEmail()).addHandler(router);
    return pipline;
  }
}