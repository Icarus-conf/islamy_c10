import 'package:flutter/material.dart';
import 'package:islamy_test/pages/home/home_page.dart';
import 'package:islamy_test/pages/tabs/hadeth_tab.dart';
import 'package:islamy_test/pages/tabs/quran_tab.dart';
import 'package:islamy_test/pages/tabs/radio_tab.dart';
import 'package:islamy_test/pages/tabs/sebha_tab.dart';
import 'package:islamy_test/pages/tabs/settings_tab.dart';
import 'components/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        QuranTab.routeName: (context) => const QuranTab(),
        HadethTab.routeName: (context) => const HadethTab(),
        RadioTab.routeName: (context) => const RadioTab(),
        SebhaTab.routeName: (context) => const SebhaTab(),
        SettingsTab.routeName: (context) => const SettingsTab(),
        SuraDetails.routeName: (context) => const SuraDetails(),
      },
    );
  }
}
