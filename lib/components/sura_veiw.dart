import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';
import 'package:islami_app/constants/image_name.dart';

class SuraVeiw extends StatelessWidget {
   SuraVeiw({super.key , required this.arabicName , required this.englishName , required this.ayaNumber , required this.index});


  String arabicName;
  String englishName;
  String ayaNumber;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        children: [
          Row(children: [
            Stack(
              alignment: Alignment.center,
              children: [
              Image.asset(ayaIcon),
      
              Text('$index' ,style: TextStyle(color: kWhiteColor),),
            ],),
            SizedBox(width: 5,),
            Column(children: [
              Text(englishName,  style: TextStyle(color: kWhiteColor , fontSize: 14),),
              Text('$ayaNumber verses' ,  style: TextStyle(color: kWhiteColor , fontSize: 14),),
            ],),
            Spacer(),
            Text(arabicName ,  style: TextStyle(color: kWhiteColor , fontSize: 14),),
          ],),
          Divider(thickness: 2,color: kWhiteColor, indent: 20,endIndent: 20,)
        ],
      ),
    );
  }
}
