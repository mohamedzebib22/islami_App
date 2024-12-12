import 'package:flutter/material.dart';
import 'package:islami_app/components/time_card.dart';
import 'package:islami_app/constants/const.dart';

class TimeDetailsHead extends StatelessWidget {
  const TimeDetailsHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26 , vertical: 14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(children: [
              Text('16 Jul' , style: TextStyle(color: kWhiteColor, fontSize: 16),),
              Text('2024' , style: TextStyle(color: kWhiteColor, fontSize: 16),),
            ],),
            
            Column(children: [
              Text('Pray Time' , style: TextStyle(color: kBlackColor, fontSize: 16),),
              Text('Tuesday' , style: TextStyle(color: kBlackColor, fontSize: 16),),
            ],),
            
            Column(children: [
              Text('09 Muh' , style: TextStyle(color: kWhiteColor, fontSize: 16),),
              Text('1446' , style: TextStyle(color: kWhiteColor, fontSize: 16),),
            ],)
          ],),
          SizedBox(
            height: 135,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index){
              return TimeCard();
            }),
          ),
          Row(
          
            children: [
              Spacer(flex: 4,),
              Text('Next Pray - 02:32' , style: TextStyle(color: kBlackColor, fontSize: 16, fontWeight: FontWeight.bold),),
              Spacer(flex: 3,),
              IconButton(onPressed: (){}, icon: Icon(Icons.volume_down_sharp))
            ],
          )
          
        ],
      ),
    );
  }
}

