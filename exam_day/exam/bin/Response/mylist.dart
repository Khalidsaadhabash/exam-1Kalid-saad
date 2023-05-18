
import 'dart:convert';

import 'package:shelf/shelf.dart';


mylist(Request req) async {
final body =await req.readAsString();
final jsonBody=json.decode(body);
myinfo.add(jsonBody);
Response.ok('add info');
{
final jsonBody=json.encode(myinfo);

return Response.ok(jsonBody);
}
  
}
List<Map> myinfo=
[{"name":"khalid",
  "age":23,
  "address":"abha"}];

