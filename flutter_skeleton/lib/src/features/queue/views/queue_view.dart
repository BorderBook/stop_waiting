import 'package:flutter/material.dart';

class QueueView extends StatelessWidget {
  const QueueView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Queue')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('You have successfully joined the queue!'),
            SizedBox(height: 16),
            Text('Thank you for using our service.'),
          ],
        ),
      ),
    );
  }
}
