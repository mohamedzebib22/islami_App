import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';

class RadioAndReciters extends StatelessWidget {
   RadioAndReciters({super.key , required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: 185,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kPrimaryColor

      ),
      child: Center(child: Text(title , style: TextStyle(color: kBlackColor , fontSize: 16, fontWeight: FontWeight.bold),)),
      
    );
  }
}