import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/queue_view_model.dart';

class QueuePositionView extends StatelessWidget {
  const QueuePositionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final queueViewModel = Provider.of<QueueViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Queue Position'),
      ),
      body: Center(
        child: queueViewModel.isLoading
            ? const CircularProgressIndicator()
            : queueViewModel.queuePosition != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your position in the queue:',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '${queueViewModel.queuePosition}',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(color: Colors.green),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () => queueViewModel.refreshQueuePosition(),
                        child: const Text('Refresh'),
                      ),
                    ],
                  )
                : const Text('You are not in the queue.'),
      ),
    );
  }
}
