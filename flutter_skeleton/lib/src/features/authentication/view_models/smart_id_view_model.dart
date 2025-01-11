import '../services/smart_id_service.dart';

class SmartIDViewModel {
  final SmartIDService _smartIDService = SmartIDService();

  Future<bool> signIn() async {
    try {
      return await _smartIDService.authenticate();
    } catch (e) {
      print('Error: $e');
      return false;
    }
  }
}
