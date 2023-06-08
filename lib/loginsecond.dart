// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:bookstore/loginthird.dart';
import 'package:flutter/material.dart';

class Login_second extends StatefulWidget {
  const Login_second({super.key});

  @override
  State<Login_second> createState() => _Login_firstState();
}

var rating;

class _Login_firstState extends State<Login_second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 91,
          ),
          Image.asset(
            "assets/login/second.png",
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
            "Делайте покупки в один клик",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Все ваши любимые книги можно приобрести в один клик не выходя из дома, с доставкой или самовызовом",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 71,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login_Third()),
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
