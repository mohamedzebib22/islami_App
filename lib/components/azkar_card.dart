import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';

class AzkarCard extends StatelessWidget {
   AzkarCard({super.key , required this.image, required this.text});
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      width: 185,
      height: 259,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 46, 45, 43),
        border: Border.all(width: 3 ,color: kPrimaryColor),
      ),
      child: Column(
        children: [
          Image.asset(image, width: 185,height: 185,),
          Text(text , style: TextStyle(color: kWhiteColor , fontSize: 20, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}