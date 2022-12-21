import 'package:dio_error_example/data/api_service/api_service.dart';
import 'package:dio_error_example/data/models/second_models/income_model.dart';
import 'package:dio_error_example/data/repository/income_repo/income_repository.dart';
import 'package:flutter/cupertino.dart';

class IncomeViewModel extends ChangeNotifier {
  IncomeRepositpry incomeRepositpry;
  IncomeViewModel({required this.incomeRepositpry}) {
    fetchIncome();
  }

  List<IncomeModel>? incomeModel;
  String errorForUI = '';

  fetchIncome() async {
    MyResponse myResponse = await incomeRepositpry.getMyIncome();

    if (myResponse.error.isEmpty) {
      incomeModel = myResponse.data as List<IncomeModel>;
    } else {
      errorForUI = myResponse.error;
    }
    notifyListeners();
  }
}
