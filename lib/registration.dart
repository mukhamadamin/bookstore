import 'package:bookstore/constants.dart';
import 'package:bookstore/loginfirst.dart';
import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 120, 24, 80),
                child: Image.asset("assets/login/login.png"),
              ),
              const Text(
                'Создать аккаунт',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                  focusColor: kPrimaryColor,
                  labelText: 'Имя',
                  border: const UnderlineInputBorder(borderSide: BorderSide()),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  focusColor: kPrimaryColor,
                  labelText: 'Электронная почта',
                  border: const UnderlineInputBorder(borderSide: BorderSide()),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  focusColor: kPrimaryColor,
                  labelText: 'Пароль',
                  border: const UnderlineInputBorder(borderSide: BorderSide()),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    minimumSize: const Size.fromHeight(50)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login_first(),
                    ),
                  );
                },
                child: const Text("Продолжить"),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
