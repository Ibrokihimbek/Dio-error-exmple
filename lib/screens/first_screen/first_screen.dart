import 'package:dio_error_example/screens/app_router.dart';
import 'package:dio_error_example/view_models/transation_view_model/transaction_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction Expense'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteName.second);
            },
            icon: const Icon(
              Icons.navigate_next,
              size: 40,
            ),
          ),
        ],
      ),
      body: Consumer<TransactionViewModel>(
          builder: (context, transactionViewModel, child) {
        if (transactionViewModel.errorForUI.isNotEmpty) {
          return Center(
            child: Text(transactionViewModel.errorForUI),
          );
        }
        var datalist = transactionViewModel.transactionModel;
        return transactionViewModel.transactionModel != null
            ? Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: datalist!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(right: 20, left: 20, top: 15),
                      child: Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                  datalist[index].data[index].receiver.brandImage
                                      .toString(),
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              const SizedBox(width: 15),
                              SizedBox(
                                width: 200,
                                child: Text(
                                  datalist[index].data[index].receiver.name,
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    fontSize: 22,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              );
      }),
    );
  }
}
