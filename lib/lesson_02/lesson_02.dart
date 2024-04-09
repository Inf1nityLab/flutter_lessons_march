import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_lesson_march/lesson_01/lesson_01.dart';

class Lesson02 extends StatelessWidget {
  const Lesson02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 90),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundColor: Colors.indigo,
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email_outlined),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30)),
                //helperText: 'Email address',
                hintText: 'Email Address',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_open),
                suffixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.visibility_sharp)),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30)),
                //helperText: 'Email address',
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Lesson01()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
