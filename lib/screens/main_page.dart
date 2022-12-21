import 'package:dio_error_example/screens/app_router.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
        children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteName.first);
              },
              child: const Text(
                'Transaction',
                style: TextStyle(fontSize: 32),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteName.web);
              },
              child: const Text(
                'Web',
                style: TextStyle(fontSize: 32),
              ),
            ),
        ],
      ),
          )),
    );
  }
}
