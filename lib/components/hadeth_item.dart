import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';

class HadethItem extends StatelessWidget {
   HadethItem({super.key , required this.title , required this.content});

   String title;
   String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      width: 313,
      height: 618,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kPrimaryColor,
        image: DecorationImage(image: AssetImage('assets/images/hadeth_card.png'),fit: BoxFit.fill),
      ),
      child: Padding(
         padding: const EdgeInsets.symmetric(vertical: 45 , horizontal: 20),
        child: Column(
          children: [
            Text(title , style: TextStyle(color: kBlackColor, fontSize: 24, fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
            SizedBox(height: 40,),
            Expanded(child: SingleChildScrollView(child: Text(content , style: TextStyle(color: kBlackColor, fontSize: 20),textDirection: TextDirection.rtl,textAlign: TextAlign.center,))),
          ],
        ),
      ),
    );
  }
}