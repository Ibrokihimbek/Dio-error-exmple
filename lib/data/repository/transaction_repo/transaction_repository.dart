import 'package:dio_error_example/data/api_service/api_service.dart';

class TransactionRepositpry {
  ApiService apiService;

  TransactionRepositpry({required this.apiService});

  Future<MyResponse> getMyTransaction() => apiService.getTransaction();
}