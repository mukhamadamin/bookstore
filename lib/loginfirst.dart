import 'package:bookstore/loginsecond.dart';
import 'package:flutter/material.dart';

class Login_first extends StatefulWidget {
  const Login_first({super.key});

  @override
  State<Login_first> createState() => _Login_firstState();
}

double rating = 0.0;

class _Login_firstState extends State<Login_first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 91,
          ),
          Image.asset(
            "assets/login/first.png",
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
            "Читайте ваши любимые книги",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Все ваши любимые книги находятся в одном месте, и вы можете прочитать их в любом месте и в любое время",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 71,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login_second()),
              );
            },
            child: const Text(
              "Далее",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
