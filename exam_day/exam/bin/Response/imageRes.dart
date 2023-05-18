

// ignore_for_file: dead_code

import 'dart:io';
import 'dart:math';

import 'package:shelf/shelf.dart';
import 'package:http_parser/http_parser.dart';
image(Request req)async{
try{

final ContentType=MediaType.parse(req.headers['Content-Type']!);
print(ContentType.mimeType);

if(ContentType.mimeType !='image/png' && ContentType.mimeType !='image/jpeg');
 
 return Response.forbidden("403");

 
print(ContentType.subtype);

  final body=await req.read().expand((element) => element).toList();

  final id=Random().nextInt(99999);

 final file =File('bin/image/$id.png${ContentType.subtype}');

 
 await file.writeAsBytes(body);
 print(body);
 
 return Response.ok('status code');
   
    await file.delete();
    
    return Response.ok(body);





}catch(error){
 
  print(error);
}

}
