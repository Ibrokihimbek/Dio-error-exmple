// class TransactionModel {
//   String? transferDate;
//   List<Data>? data;

//   TransactionModel({this.transferDate, this.data});

//   TransactionModel.fromJson(Map<String, dynamic> json) {
//     transferDate = json['transfer_date'];
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['transfer_date'] = this.transferDate;
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Data {
//   int? transactionCode;
//   String? date;
//   int? expenseId;
//   double? amount;
//   int? cardId;
//   Receiver? receiver;

//   Data(
//       {this.transactionCode,
//       this.date,
//       this.expenseId,
//       this.amount,
//       this.cardId,
//       this.receiver});

//   Data.fromJson(Map<String, dynamic> json) {
//     transactionCode = json['transaction_code'];
//     date = json['date'];
//     expenseId = json['expense_id'];
//     amount = json['amount'];
//     cardId = json['card_id'];
//     receiver = json['receiver'] != null
//         ? new Receiver.fromJson(json['receiver'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['transaction_code'] = this.transactionCode;
//     data['date'] = this.date;
//     data['expense_id'] = this.expenseId;
//     data['amount'] = this.amount;
//     data['card_id'] = this.cardId;
//     if (this.receiver != null) {
//       data['receiver'] = this.receiver!.toJson();
//     }
//     return data;
//   }
// }

// class Receiver {
//   String? brandImage;
//   String? name;
//   String? location;

//   Receiver({this.brandImage, this.name, this.location});

//   Receiver.fromJson(Map<String, dynamic> json) {
//     brandImage = json['brand_image'];
//     name = json['name'];
//     location = json['location'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['brand_image'] = this.brandImage;
//     data['name'] = this.name;
//     data['location'] = this.location;
//     return data;
//   }
// }




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
