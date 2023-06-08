// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:bookstore/bookstore.dart';
import 'package:flutter/material.dart';

class Login_Third extends StatefulWidget {
  const Login_Third({super.key});

  @override
  State<Login_Third> createState() => _Login_firstState();
}

var rating;

class _Login_firstState extends State<Login_Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 91,
          ),
          Image.asset(
            "assets/login/third.png",
            height: 296,
            width: 400,
          ),
          const SizedBox(
            height: 80,
          ),
          // Slider(
          //   value: rating,
          //   onChanged: (newRating) {
          //     setState(() => rating = newRating);
          //   },
          //   divisions: 4,
          //   label: "$rating",
          // ),
          const SizedBox(
            height: 38,
          ),
          const Text(
            "Собирай бонусы",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "За каждую приобретённую книгу вы получаете специальные бонусы",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 71,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bookstore()),
                );
              },
              child: const Text(
                "Далее",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ))
        ],
      ),
    );
  }
}
