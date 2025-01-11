import '../services/payment_service.dart';

class PaymentViewModel {
  final PaymentService _paymentService = PaymentService();

  Future<bool> initiatePayment(double amount) async {
    try {
      return await _paymentService.processPayment(amount);
    } catch (e) {
      print('Error: $e');
      return false;
    }
  }
}
