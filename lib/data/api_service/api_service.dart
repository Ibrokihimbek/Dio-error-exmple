import 'package:dio/dio.dart';
import 'package:dio_error_example/data/api_service/api_client.dart';
import 'package:dio_error_example/data/models/first_models/transaction_model.dart';
import 'package:dio_error_example/data/models/second_models/income_model.dart';

class MyResponse {
  MyResponse({
    this.data,
    required this.error,
  });

  dynamic data;
  String error = "";
}

class ApiService extends ApiClient {
  Future<MyResponse> getIncome() async {
    MyResponse myResponse = MyResponse(error: "");
    try {
      Response response = await dio.get("${dio.options.baseUrl}/income-types");
      if (response.statusCode == 200) {
        myResponse.data = (response.data as List?)
                ?.map((e) => IncomeModel.fromJson(e))
                .toList() ??
            [];
      }
    } catch (err) {
      myResponse.error = err.toString();
    }

    return myResponse;
  }

  Future<MyResponse> getTransaction() async {
    MyResponse myResponse = MyResponse(error: "");
    try {
      Response response =
          await dio.get("${dio.options.baseUrl}/transactions-expenses");
      if (response.statusCode == 200) {
        myResponse.data = (response.data as List?)
                ?.map((e) => TransactionModel.fromJson(e))
                .toList() ??
            [];
      }
    } catch (err) {
      myResponse.error = err.toString();
    }
    return myResponse;
  }
}
