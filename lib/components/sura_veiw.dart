import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';
import 'package:islami_app/constants/image_name.dart';
import 'package:islami_app/models/sura_model.dart';

class SuraVeiw extends StatelessWidget {
   SuraVeiw({super.key , required this.suraModel, required this.index});


  SuraModel suraModel;
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
              Text(suraModel.suraErName,  style: TextStyle(color: kWhiteColor , fontSize: 14),),
              Text('${suraModel.verses} verses' ,  style: TextStyle(color: kWhiteColor , fontSize: 14),),
            ],),
            Spacer(),
            Text(suraModel.suraArName ,  style: TextStyle(color: kWhiteColor , fontSize: 14),),
          ],),
          Divider(thickness: 2,color: kWhiteColor, indent: 20,endIndent: 20,)
        ],
      ),
    );
  }
}
