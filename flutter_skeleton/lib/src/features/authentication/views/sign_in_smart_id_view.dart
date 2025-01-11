import 'package:flutter/material.dart';
import '../../queue/views/queue_view.dart';

class SignInSmartIDView extends StatelessWidget {
  const SignInSmartIDView({super.key});

  Future<void> handleSmartIdLogin(BuildContext context) async {
    // Add Smart-ID integration logic here
    await Future.delayed(const Duration(seconds: 2)); // Simulate Smart-ID flow

    // Navigate to the queue page on success
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const QueueView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign in with Smart-ID')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => handleSmartIdLogin(context),
          child: const Text('Sign in with Smart-ID'),
        ),
      ),
    );
  }
}
