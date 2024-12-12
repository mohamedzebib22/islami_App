import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';

class SebhaTools extends StatelessWidget {
   SebhaTools({super.key , required this.title ,required this.number});

  String title;
  int number;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset('assets/images/sebha_image.png',width: 379,height: 460,),
        Column(
          children: [
            Text(title , style: TextStyle(color: kWhiteColor , fontSize: 36),),
            Text('$number', style: TextStyle(color: kWhiteColor , fontSize: 36),),
          ],
        )
      ],
    );
  }
}