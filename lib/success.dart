import 'package:bookstore/bookstore.dart';
import 'package:bookstore/constants.dart';
import 'package:bookstore/loginfirst.dart';
import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/pay/success.png"),
              const Text(
                'Payment successfully completed',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Bookstore(),
                    ),
                  );
                },
                icon: const Icon(Icons.chevron_left),
                label: const Text(
                  "Go back to the store",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Login_first(),
            ),
          );
        },
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}
