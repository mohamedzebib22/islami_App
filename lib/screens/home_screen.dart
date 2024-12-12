import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';
import 'package:islami_app/constants/image_name.dart';
import 'package:islami_app/widgets/hadeth_page.dart';
import 'package:islami_app/widgets/quran_page.dart';
import 'package:islami_app/widgets/radio_page.dart';
import 'package:islami_app/widgets/sebha_page.dart';
import 'package:islami_app/widgets/time_page.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

   static String id = 'HomePage';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;

  List<String> backgroundImageList =[
    'assets/images/background_quran.png',
    'assets/images/background_hadeth.png',
    'assets/images/background_sebha.png',
    'assets/images/background_radio.png',
    'assets/images/background_time.png'
  ];

  List<Widget> pagesList=[
    QuranPage(),HadethPage(),SebhaPage(),RadioPage(),TimePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: kPrimaryColor
        ),
        child: BottomNavigationBar(
          currentIndex: selectIndex,
          onTap: (index){
            selectIndex = index ;
            setState(() {  
            });
            },
          items: [
            BottomNavigationBarItem(icon:selectedItem(index: 0, imageName: quran),label: 'quran'),
            BottomNavigationBarItem(icon:selectedItem(index: 1, imageName: sura),label: 'sura'),
            BottomNavigationBarItem(icon:selectedItem(index: 2, imageName: sebha),label: 'sebha'),
            BottomNavigationBarItem(icon:selectedItem(index: 3, imageName: radio),label: 'radio'),
            BottomNavigationBarItem(icon:selectedItem(index: 4, imageName: time),label: 'time'),
          ]
          ),
      ),
      body: Stack(
        children: [
          Image.asset(backgroundImageList[selectIndex] ,fit: BoxFit.fill,),
          pagesList[selectIndex],
        ],
      ),
    );
  }

  Widget selectedItem({required int index , required String imageName}){
    return selectIndex == index ? Container(
      padding: EdgeInsets.symmetric(vertical: 6,horizontal: 20),
      decoration: BoxDecoration(
        color:Color(0xff946107),
        borderRadius: BorderRadius.circular(66),
      ),
      child: ImageIcon(AssetImage('assets/images/$imageName.png')) ,
    ) : ImageIcon(AssetImage('assets/images/$imageName.png'));
     
  }
}