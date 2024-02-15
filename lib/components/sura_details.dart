import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_test/components/constants/colors.dart';
import 'package:islamy_test/components/text_format.dart';
import 'package:islamy_test/model/sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'Sura_Details';
  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  suraReader(int index) async {
    final sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    final List<String> lines = sura.split('\n');
    verses = lines;
    setState(() {});
    return verses;
  }

  @override
  Widget build(BuildContext context) {
    var suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      suraReader(suraModel.index);
    }
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
            title: elMessiri(
              text: suraModel.name,
              fontS: 30,
              fontWeight: FontWeight.w700,
            ),
            centerTitle: true,
          ),
          body: Container(
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    elMessiri(
                      text: suraModel.name,
                      fontS: 25,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset('assets/images/ic_play.png'),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const Divider(
                          color: primaryColor,
                        );
                      },
                      itemCount: verses.length,
                      itemBuilder: (context, index) {
                        return elMessiri(
                          text: '${verses[index].trim()} (${index + 1})',
                          fontS: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.8,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
