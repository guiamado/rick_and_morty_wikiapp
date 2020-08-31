import 'package:http/http.dart' as http;

Future<http.Response> get(String url) async {
  final headers = _headers();
  var response = await http.get(url, headers: headers);
  return response;
}

Map<String, String> _headers() {
  Map<String, String> headers = {
    "Content-Type": "application/json",
  };
  return headers;
}
