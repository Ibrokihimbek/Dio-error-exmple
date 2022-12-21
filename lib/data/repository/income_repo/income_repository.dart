import 'package:dio_error_example/data/api_service/api_service.dart';

class IncomeRepositpry {
  ApiService apiService;

  IncomeRepositpry({required this.apiService});

  Future<MyResponse> getMyIncome() => apiService.getIncome();
}