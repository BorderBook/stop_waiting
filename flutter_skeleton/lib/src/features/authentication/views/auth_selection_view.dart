import 'package:flutter/material.dart';
import 'sign_in_smart_id_view.dart';
import 'payment_view.dart';

class AuthSelectionView extends StatelessWidget {
  const AuthSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stop Waiting'),
        centerTitle: true, // Align the title to the center
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Login with Smart-ID and get your ticket for free',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInSmartIDView(),
                        ),
                      );
                    },
                    child: const Text('Sign in with Smart-ID'),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 2),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Pay 1 EUR and get your ticket',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentView(),
                        ),
                      );
                    },
                    child: const Text('Pay 1 EUR'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
