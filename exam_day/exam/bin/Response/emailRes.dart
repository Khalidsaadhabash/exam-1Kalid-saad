
import 'dart:convert';
import 'package:shelf/shelf.dart';

List<Map> email = [{'email':'alhabash001@gmail.com'}];
List<Map> password = [{'password':123123}];

loginemailResponse(Request req) async {
  final Map email = jsonDecode(await req.readAsString());
  for (var i in loginemailResponse(req)) {
    if (email["email"] == password[123123]) {
      return Response.ok(
        "   successfully",
        headers: {"Content-Type": "Application/json"},
      );
    }
  }
}

userResponse(Request req) async {
  final Map password = jsonDecode(await req.readAsString());
  for (var i in userResponse(req)) {
    if (email!= password[123123]) {
      return Response.forbidden(
        "   403",
        headers: {"Content-Type": "Application/json"},
      );
    }
  }


  

  return Response.ok(
    " logein up successfully",
    headers: {"Content-Type": "Application/json"},
  );
}

