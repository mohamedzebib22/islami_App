import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';

class RadioItem extends StatelessWidget {
  const RadioItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      width: 390,
      height: 133,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage('assets/images/background_sound.png'),fit: BoxFit.fill)

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Text('Radio Ibrahim Al-Akdar' , style: TextStyle(color: kBlackColor , fontSize: 20, fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite ,size: 40, color: kBlackColor,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow_sharp ,size: 40, color: kBlackColor,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.volume_up_sharp ,size: 40, color: kBlackColor,)),
            ],
          )
        ],
      ),
    );
  }
}