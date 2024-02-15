import 'package:flutter/material.dart';
import 'package:islamy_test/components/constants/colors.dart';

import 'package:islamy_test/components/text_format.dart';

class SebhaTab extends StatefulWidget {
  static const String routeName = 'Sebha_Tab';
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int index = 0;
  List<String> prays = [
    'سبحان الله',
    'الحمدلله',
    'لا إله إلا الله',
    'اللهم صل وسلم على محمد',
  ];

  prayCounter() {
    counter++;
    for (int i = 0; i < prays.length; i++) {
      if (counter == 30) {
        index = (index + 1) % prays.length;
        counter = 0;
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          GestureDetector(
            onTap: prayCounter,
            child: Image.asset(
              'assets/images/sebha.png',
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const elMessiri(
            text: 'عدد التسبيحات',
            fontS: 25,
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.57),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              '$counter',
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: prayCounter,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                prays[index],
                style: const TextStyle(
                  fontSize: 25,
                  color: white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
