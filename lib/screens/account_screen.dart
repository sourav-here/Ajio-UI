import 'package:ajio/widgets/accountlist.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Account'),
      ),
      body: ListView(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            color: const Color.fromARGB(255, 237, 243, 247),
            child: Row(
              children: [
                const Gap(20),
                const CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person,
                  color: Colors.white,size: 30,
                  ),
                ),
                const Gap(30),
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black
                      ),
                      child: const Center(
                          child: Text('Sign in/join',
                          style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          aclist(const Text('Customer Care')),
          aclist(const Text('Invite Friends & Earn')),
          aclist(const Text('Coupon Quest')),
          Container(
            height: 15,
            width: double.infinity,
            color: const Color.fromARGB(255, 237, 243, 247),
          ),
          aclist(const Text('Notifications')),
          Container(
            height: 15,
            width: double.infinity,
            color: const Color.fromARGB(255, 237, 243, 247),
          ),
          aclist(const Text('Return Creation Demo')),
          aclist(const Text('How To Return')),
          aclist(const Text('How Do I Redeem My Coupon?')),
          aclist(const Text('Terms & Conditions')),
          aclist(const Text('Promotions Terms & Condition')),
          aclist(const Text('Returns & Refund Poliocy')),
          aclist(const Text('We Respect Your Privacy')),
          aclist(const Text('Fees & Payments')),
          aclist(const Text('Who We Are')),
          aclist(const Text('Join Our Team')),
          Container(
            height: 15,
            width: double.infinity,
            color: const Color.fromARGB(255, 237, 243, 247),
          ),
          Container(
            height: 90,
            width: double.infinity,
            color: Colors.white,
            child: Center(
              child:Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: const Center(
                  child: Text('Logout',
                  style: TextStyle(color: Colors.white))
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}