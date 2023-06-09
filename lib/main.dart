import 'package:flutter/material.dart';
import 'package:my_project/widgets/button.dart';
import 'package:my_project/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text('Total Balance',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 22,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Text('\$ 5 942 182',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 42,
                    )),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  amount: '6 428',
                  code: 'EUR',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  offsetNum: 0,
                ),
                Transform.translate(
                  offset: const Offset(0, -25),
                  child: const CurrencyCard(
                    name: 'Bitcoin',
                    amount: '9 785',
                    code: 'BTC',
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                    offsetNum: 10,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -50),
                  child: const CurrencyCard(
                    name: 'Dollar',
                    amount: '428',
                    code: 'USD',
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                    offsetNum: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
