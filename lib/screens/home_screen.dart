import 'package:ajio/widgets/appbar.dart';
import 'package:ajio/widgets/bottombox.dart';
import 'package:ajio/widgets/boxwidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BoxWidget(image: Image.asset('assets/images/carouselpuma.jpg')),
                  const Gap(10),
                  BoxWidget(image: Image.asset('assets/images/carouselgap.jpg')),
                  const Gap(10),
                  BoxWidget(image: Image.asset('assets/images/carouselax.jpg')),
                  const Gap(10),
                  BoxWidget(image: Image.asset('assets/images/carouseldnmx.jpg')),
                  const Gap(10),
                  BoxWidget(image: Image.asset('assets/images/carouseljp.jpg')),
                  const Gap(10),
                  BoxWidget(image: Image.asset('assets/images/avaasa.jpg')),
                  const Gap(10),
                  BoxWidget(image: Image.asset('assets/images/perfomax.jpg')),
                ],
              ),
            ),
            CarouselSlider(
            options: CarouselOptions(
              height: 290.0,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(seconds: 1),
              viewportFraction: 1,
            ),
            items: [
                'assets/images/fslide1.jpg',
                'assets/images/fslide2.jpg',
                'assets/images/fslide3.jpg',
                'assets/images/fslide4.jpg',
                'assets/images/fslide5.jpg',
                'assets/images/fslide6.jpg'
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
            const Gap(15),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Row(
                children: [
                  Image.asset('assets/images/ajiodelivery.jpg',
                  width: 411)
                ],
              ),
            ),
            CarouselSlider(
            options: CarouselOptions(
              height: 60.0,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(seconds: 1),
              viewportFraction: 1,
            ),
            items: [
                'assets/images/rupay.jpg',
                'assets/images/yesbank.jpg',
                'assets/images/sbi.jpg',
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
            const Gap(20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BigBoxWidget(image: Image.asset('assets/images/slideimage1.jpg')),
                  const Gap(10),
                  BigBoxWidget(image: Image.asset('assets/images/slideimage2.jpg')),
                  const Gap(10),
                  BigBoxWidget(image: Image.asset('assets/images/slideimage3.jpg')),
                  const Gap(10),
                  BigBoxWidget(image: Image.asset('assets/images/slideimage4.jpg')),
                  const Gap(10),
                  BigBoxWidget(image: Image.asset('assets/images/slideimage5.jpg')),
                  const Gap(10),
                  BigBoxWidget(image: Image.asset('assets/images/slideimage5.jpg')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}