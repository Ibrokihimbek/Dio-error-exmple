import 'package:dio_error_example/data/models/first_models/data/data_model.dart';

class TransactionModel {
  String transferDate;
  List<DataModel> data;

  TransactionModel({
    required this.transferDate,
    required this.data,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> jsonData) {
    return TransactionModel(
      transferDate: jsonData['transfer_date'],
      data:
          (jsonData['data'] as List).map((e) => DataModel.fromJson(e)).toList(),
    );
  }
}
