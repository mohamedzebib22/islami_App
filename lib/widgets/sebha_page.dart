import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';
import 'package:islami_app/components/sebha_tools.dart';

class SebhaPage extends StatefulWidget {
  const SebhaPage({super.key});

  @override
  State<SebhaPage> createState() => _SebhaPageState();
}

class _SebhaPageState extends State<SebhaPage> {
  String title = 'سبحان الله';
  int number =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/islami_logo.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى " ,style: TextStyle(color: kWhiteColor, fontSize: 36),),
            ],
          ),
          GestureDetector(
            onTap: changeText,
              
            child: SebhaTools(title: title, number: number,)),
        ],
      )
    );
  }
  void changeText(){
    String text1 ='سبحان الله';
    String text2='الحمدلله';
    String text3='الله اكبر';
    number++;
    setState(() { 
    });
    if(number==33 && title == text1){
      title = text2;
      number=0;
      
    }else if(number ==33 && title == text2){
      title = text3;
      number=0;
      
    }else if(number == 33 && title == text3){
      title = text1;
      number =0;
    }
    setState(() {
      });
  }
}