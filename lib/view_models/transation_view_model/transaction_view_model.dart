import 'package:dio_error_example/data/api_service/api_service.dart';
import 'package:dio_error_example/data/models/first_models/transaction_model.dart';
import 'package:dio_error_example/data/repository/transaction_repo/transaction_repository.dart';
import 'package:flutter/cupertino.dart';

class TransactionViewModel extends ChangeNotifier {
  TransactionRepositpry transactionRepositpry;
  TransactionViewModel({required this.transactionRepositpry}) {
    fetchTransaction();
  }

  List<TransactionModel>? transactionModel;
  String errorForUI = "";

  fetchTransaction() async {
    MyResponse myResponse = await transactionRepositpry.getMyTransaction();

    if (myResponse.error.isEmpty) {
      transactionModel = myResponse.data as List<TransactionModel>;
    } else {
      errorForUI = myResponse.error;
    }
    notifyListeners();
  }
}
