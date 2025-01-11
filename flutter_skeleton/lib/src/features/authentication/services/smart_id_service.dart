import 'dart:convert';
import 'package:http/http.dart' as http;

class SmartIDService {
  final String _baseUrl = 'https://smart-id-api.example.com/authenticate';

  Future<bool> authenticate() async {
    final response = await http.post(Uri.parse(_baseUrl), body: {
      'nationalId': '12345678901',
    });

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['success'];
    }
    return false;
  }
}
