import 'package:dio_error_example/data/api_service/api_service.dart';
import 'package:dio_error_example/data/repository/income_repo/income_repository.dart';
import 'package:dio_error_example/data/repository/transaction_repo/transaction_repository.dart';
import 'package:dio_error_example/screens/app_router.dart';
import 'package:dio_error_example/view_models/income_view_model/income_view_model.dart';
import 'package:dio_error_example/view_models/transation_view_model/transaction_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TransactionViewModel(
            transactionRepositpry: TransactionRepositpry(
              apiService: ApiService(),
            ),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => IncomeViewModel(
            incomeRepositpry: IncomeRepositpry(
              apiService: ApiService(),
            ),
          ),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteName.main,
      onGenerateRoute: AppRoutes.generateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
