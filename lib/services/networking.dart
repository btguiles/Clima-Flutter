import 'package:http/http.dart' as http;
import 'dart:convert';

//'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$API_key'

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(
      url,
    );

    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);

      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
