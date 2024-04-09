import 'package:ajio/widgets/appbar.dart';
import 'package:ajio/widgets/storebox.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CommonAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Image.asset('assets/images/ajioluxe.jpg',
              fit: BoxFit.cover,
              ),
            ),
            CarouselSlider(
            options: CarouselOptions(
              height: 450,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16/9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              viewportFraction: 1,
            ),
            items: [
                'assets/images/store1.jpg',
                'assets/images/store2.jpg',
                'assets/images/store3.jpg',
                'assets/images/store4.jpg',
              ].map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(item),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoreBoxWidget(image: Image.asset('assets/images/storebox1.jpg')),
                  const Gap(10),
                  StoreBoxWidget(image: Image.asset('assets/images/storebox2.jpg')),
                  const Gap(10),
                  StoreBoxWidget(image: Image.asset('assets/images/storebox3.jpg')),
                  const Gap(10),
                  StoreBoxWidget(image: Image.asset('assets/images/storebox4.jpg')),
                  const Gap(10),
                  StoreBoxWidget(image: Image.asset('assets/images/storebox5.jpg')),
                  const Gap(10),
                  StoreBoxWidget(image: Image.asset('assets/images/storebox6.jpg')),
                  const Gap(10),
                  StoreBoxWidget(image: Image.asset('assets/images/storebox7.jpg')),
                  const Gap(10),
                  StoreBoxWidget(image: Image.asset('assets/images/storebox8.jpg')),
                  const Gap(10),
                  StoreBoxWidget(image: Image.asset('assets/images/storebox9.jpg')),
                  const Gap(10),
                  StoreBoxWidget(image: Image.asset('assets/images/storebox10.jpg')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}