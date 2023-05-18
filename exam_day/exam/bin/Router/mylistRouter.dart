

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Middleware/mylistmidd.dart';
import '../Response/mylist.dart';

// ignore: camel_case_types
class mylistRouter{

  // ignore: non_constant_identifier_names
  Handler get handler{
    final router=Router()
    ..get('/mylist', mylist)
    ..post('/addMylist',mylist);

    
    final pipline = Pipeline().addMiddleware(checklist()).addHandler(router);
    
    return pipline;
  
}

}



