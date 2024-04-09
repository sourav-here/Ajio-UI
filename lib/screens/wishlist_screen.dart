import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListState();
}

class _WishListState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.close),
        actions: const [Icon(Icons.shopping_bag_outlined)],
        title: const Text('Wish List'),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Column(
                      children: [
                        const Image(
                            image: AssetImage('assets/images/puma.jpg'),
                            height: 120,
                            width: 140),
                        const Text('Puma',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0))),
                        const Text('Men Ess slim fit Polo T-Shirt'),
                        const Text('₹816'),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.delete),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.shopping_bag_outlined),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          const Image(
                              image: AssetImage('assets/images/gc.jpg'),
                              height: 120,
                              width: 140),
                          const Text('GC',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0))),
                          const Text('Mens Analogue Watch'),
                          const Text('₹27,557'),
                          Row(
                            children: [
                              const SizedBox(width: 50),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.delete),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.shopping_bag_outlined),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Column(
                      children: [
                        const Image(
                            image: AssetImage('assets/images/british.jpg'),
                            height: 120,
                            width: 140),
                        const Text('British Club',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0))),
                        const Text('Mens Check Printed Shirt'),
                        const Text('₹816'),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.delete),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.shopping_bag_outlined),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          const Image(
                              image: AssetImage('assets/images/prada.jpg'),
                              height: 120,
                              width: 140),
                          const Text('Prada Linea Rossa',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0))),
                          const Text('UV-Protected Shield Sunglasses'),
                          const Text('₹19,990'),
                          Row(
                            children: [
                              const SizedBox(width: 60),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.delete),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.shopping_bag_outlined),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}