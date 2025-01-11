import 'package:flutter/material.dart';
import '../repositories/queue_repository.dart';

class QueueViewModel extends ChangeNotifier {
  final QueueRepository _queueRepository;

  QueueViewModel(this._queueRepository);

  int? _queuePosition;
  bool _isLoading = false;

  int? get queuePosition => _queuePosition;
  bool get isLoading => _isLoading;

  Future<void> fetchQueuePosition() async {
    _isLoading = true;
    notifyListeners();

    try {
      _queuePosition = await _queueRepository.getQueuePosition();
    } catch (e) {
      debugPrint('Error fetching queue position: $e');
      _queuePosition = null;
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> refreshQueuePosition() async {
    await fetchQueuePosition();
  }
}
