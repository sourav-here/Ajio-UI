import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 235, 235),
        appBar: AppBar(
          title: const Column(
            children: [SizedBox(height: 20), Text('Bag (1 Product)')],
          ),
          leading: const Icon(Icons.close),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_border)),
            const SizedBox(width: 15)
          ],
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(70),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                    child: Image(
                        image: AssetImage('assets/images/bobbag.jpg'),
                        height: 70))
              ])),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 255,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 234, 205, 172),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                )),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.warning_amber_rounded,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    '    1 Product Unavailable',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          )),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                              children: [
                                const Image(
                                    image: AssetImage(
                                        'assets/images/skechers.jpg'),
                                    height: 120,
                                    width: 140),
                                const Text('Out of Stock',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 223, 19, 19))),
                                OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        side: const BorderSide(
                                            color: Colors.white)),
                                    onPressed: () {},
                                    child: const Text(
                                      'Show Similar',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 7, 82, 139),
                                          fontWeight: FontWeight.bold),
                                    )),
                                const SizedBox(height: 5)
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Skechers',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              const Text('Track-Moulton Lace-Up Shoes'),
                              const SizedBox(height: 30),
                              const Text('₹3,549.00',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(height: 48),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const SizedBox(width: 80),
                                  OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          side: const BorderSide(
                                              color: Colors.white)),
                                      onPressed: () {},
                                      child: const Text('Remove',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 7, 82, 139),
                                              fontWeight: FontWeight.bold)))
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Column(
                    children: [
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Order Payment Details',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bag Total',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '₹4,999.00',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bag Savings',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '-₹1,450.00',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 18, 199, 9)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Coupon Savings',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Apply Coupon',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 26, 137, 228)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Convince Fee',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                                onPressed: null,
                                child: Text(
                                  "What's This?",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 26, 137, 228)),
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '        Delivey Fee',
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                            Text(
                              'Free            ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 18, 199, 9)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '        Platform Fee',
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                            Text(
                              '₹29.00         ',
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Amount Payable',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              '₹3549.00',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 92, 244, 201),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.celebration,
                        color: Color.fromARGB(255, 202, 157, 8),
                      ),
                      Text('  Cheers!'),
                      Text(
                        'You Saved ₹1,549.00',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(8.0),
                  child: const Row(
                    children: [
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text('₹3,549.00',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text(
                            'View details',
                            style: TextStyle(
                                color: Color.fromARGB(255, 26, 137, 228),
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(width: 40),
                      Expanded(
                          child: ElevatedButton(
                              onPressed: null,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  'Proceed To Payment',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 110, 109, 109),
                                      fontWeight: FontWeight.bold),
                                ),
                              )))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}