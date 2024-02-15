import 'package:flutter/material.dart';
import 'package:islamy_test/components/constants/colors.dart';
import 'package:islamy_test/components/text_format.dart';
import 'package:islamy_test/pages/tabs/hadeth_tab.dart';
import 'package:islamy_test/pages/tabs/quran_tab.dart';
import 'package:islamy_test/pages/tabs/radio_tab.dart';
import 'package:islamy_test/pages/tabs/sebha_tab.dart';
import 'package:islamy_test/pages/tabs/settings_tab.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'Home_page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List<Widget> tabs = [
    const QuranTab(),
    const HadethTab(),
    const SebhaTab(),
    const RadioTab(),
    const SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/default_bg.png',
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const elMessiri(
              text: 'إسلامي',
              fontS: 30,
              fontWeight: FontWeight.w700,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            iconSize: 35,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: primaryColor,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/ic_quran.png',
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/ic_hadeth.png',
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/ic_sebha.png',
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/ic_radio.png',
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: '',
              ),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }
}
