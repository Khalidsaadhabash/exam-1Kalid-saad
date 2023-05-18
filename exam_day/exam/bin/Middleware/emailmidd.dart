import 'package:shelf/shelf.dart';
import 'emailmidd.dart';

Middleware checkEmail() => (innerHandler) => (Request req) {
      final header = req.headers;

      if (header['UserType'] != 'email') {
        return Response.unauthorized('Unauthorized!');
      }

      return innerHandler(req);
    };