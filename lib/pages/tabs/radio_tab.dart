import 'package:flutter/material.dart';

import 'package:islamy_test/components/text_format.dart';

class RadioTab extends StatelessWidget {
  static const String routeName = 'Radio_Tab';
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('assets/images/radio_image.png'),
        const elMessiri(text: 'إذاعة القرآن الكريم', fontS: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/ic-back.png'),
            Image.asset('assets/images/ic_play_radio.png'),
            Image.asset('assets/images/ic-next.png'),
          ],
        ),
      ],
    );
  }
}
