import 'dart:convert';
import 'package:http/http.dart' as http;

class PaymentService {
  final String _baseUrl = 'https://api.maksekeskus.ee/payments';

  Future<bool> processPayment(double amount) async {
    final response = await http.post(Uri.parse(_baseUrl), body: {
      'amount': amount.toString(),
      'currency': 'EUR',
    });

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['success'];
    }
    return false;
  }
}
