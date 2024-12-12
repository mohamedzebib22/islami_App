import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';

class ItemSuraContent extends StatefulWidget {
   ItemSuraContent({super.key , required this.content ,required this.index});
  String content;
  int index;

  @override
  State<ItemSuraContent> createState() => _ItemSuraContentState();
}

class _ItemSuraContentState extends State<ItemSuraContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
       
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 3, color: kPrimaryColor)
      ),
      child: Text('(${widget.index+1}) ${widget.content}',style: TextStyle(color: kPrimaryColor , fontSize: 20,fontWeight: FontWeight.bold,),textDirection: TextDirection.rtl,textAlign: TextAlign.center,),
    );
  }
}