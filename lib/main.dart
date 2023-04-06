import 'package:flutter/material.dart';
import 'package:landing/widgets/AssetCard.dart';
import 'package:landing/widgets/Button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                    fontSize: 22, color: Colors.white.withOpacity(0.8)),
              ),
              const Text('\$5 194 482',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(children: const [
                Button(
                    text: 'Transfer',
                    bgColor: Colors.amber,
                    textColor: Colors.black),
                Button(
                    text: 'Request',
                    bgColor: Colors.black,
                    textColor: Colors.white),
              ]),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                children:  [
                  const AssetCard(
                      name: 'Euro',
                      code: 'EUR',
                      amount: '6 428',
                      icon: Icons.euro_rounded,
                      cardColor: Colors.black),
                  Transform.translate(
                    offset: const Offset(5, -15),
                  child:const AssetCard(
                      name: 'Bitcoin',
                      code: 'BTC',
                      amount: '5',
                      icon: Icons.currency_bitcoin_rounded,
                      cardColor: Colors.amber),
                  ),
                  Transform.translate(
                    offset: const Offset(10, -30),
                    child:
                  const AssetCard(
                      name: 'Dollar',
                      code: 'USD',
                      amount: '428',
                      icon: Icons.attach_money_rounded,
                      cardColor: Colors.lightBlueAccent),),
                ],
              )
            ],
          ),
        ),
        ),
      ),
    );
  }
}
