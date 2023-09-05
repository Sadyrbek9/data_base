import 'dart:math';
import 'package:http/http.dart' as http;

class ApiServise{
Future<dynamic>getUsers() async{
  try{
    var uri = Uri.parse("https://github.com/Sadyrbek9/Sadyrbek9.github.io/blob/main/my%20data/data.json");
    var responce = await http.get(uri);
    if (responce.statusCode == 200) {
      print(responce.body);
    }
  }catch(e) {
    log(e.toString() as num);
  }
  return null;
}
}
final apiServise = ApiServise().getUsers();