import 'package:shelf/shelf.dart';
import 'mylistmidd.dart';


Middleware checklist() => (innerHandler) => (Request req) {
      final header = req.headers;

      return innerHandler(req);
    };