import 'package:flutter/material.dart';

class Lesson01 extends StatelessWidget {
  const Lesson01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.menu)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_vert)),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Hiar Riaz',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo),
                  ),
                  const Text(
                    'Ux/Ui designer',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '8900',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo),
                          ),
                          Text(
                            'Income',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '5500',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo),
                          ),
                          Text(
                            'Expenses',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '890',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo),
                          ),
                          Text(
                            'Loan',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  'Overview',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.notifications_none_sharp,
                  size: 30,
                ),
                Expanded(child: Container()),
                const Text(
                  'Sep 13, 2020',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.indigo),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Center(
                child:  ListTile(
                  leading: Container(
                    height: 200,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.cyanAccent, borderRadius: BorderRadius.circular(15)),
                    child: const Icon(Icons.arrow_upward_outlined),
                  ),
                  title: const Text('Sent', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),
                  subtitle: const Text('sdkfhldshfkjdshfk'),
                  trailing: const Text('150', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),
                ),
              )
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child:  ListTile(
                    leading: Container(
                      height: 200,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.cyanAccent, borderRadius: BorderRadius.circular(15)),
                      child: const Icon(Icons.arrow_upward_outlined),
                    ),
                    title: const Text('Sent', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),),
                    subtitle: const Text('sdkfhldshfkjdshfk'),
                    trailing: const Text('150', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),),
                  ),
                )
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child:  ListTile(
                    leading: Container(
                      height: 200,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.cyanAccent, borderRadius: BorderRadius.circular(15)),
                      child: const Icon(Icons.arrow_upward_outlined),
                    ),
                    title: const Text('Sent', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),),
                    subtitle: const Text('sdkfhldshfkjdshfk'),
                    trailing: const Text('150', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
