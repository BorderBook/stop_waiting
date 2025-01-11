import 'package:flutter/material.dart';
import '../../queue/views/queue_view.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  Future<void> handlePayment(BuildContext context) async {
    // Add payment integration logic here (e.g., Maksekeskus)
    await Future.delayed(const Duration(seconds: 2)); // Simulate payment flow

    // Navigate to the queue page on success
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const QueueView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => handlePayment(context),
          child: const Text('Pay 1 EUR'),
        ),
      ),
    );
  }
}
