import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';
import 'package:islami_app/constants/image_name.dart';
import 'package:islami_app/models/sura_details_model.dart';
import 'package:islami_app/models/sura_model.dart';

import 'package:islami_app/components/custom_textfeild.dart';
import 'package:islami_app/components/sura_container.dart';
import 'package:islami_app/components/sura_veiw.dart';
import 'package:islami_app/screens/sura_details_screen.dart';

class QuranPage extends StatefulWidget {
  QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  List<SuraModel> suraList = [];
  List<SuraModel> filterList=[];

  void addSuraList(){
    for (int i = 0; i < 114; i++) {
      suraList.add(SuraModel(
          suraErName: SuraModel.englishQuranSurahs[i],
          suraArName: SuraModel.arabicQuranSuras[i],
           verses: SuraModel.ayaNumber[i], 
          fileName: '${i+1}.txt')
          
          );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addSuraList();
    filterList =suraList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(islmaiLogo),
          CustomTextfeild(onChanged: (title ) { 
            filterList =suraList.where((sura){
              return sura.suraErName.toLowerCase().contains(title.toLowerCase()) || 
                sura.suraArName.contains(title);
            }).toList();
            setState(() {
              
            });
           },

          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Most Recently',
            style: TextStyle(color: kWhiteColor),
          ),
          SuraContainer(),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Sura List',
              style: TextStyle(color: kWhiteColor),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: filterList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SuraDetailsScreen.id,
                            arguments: filterList[index],
                        );
                      },
                      child: SuraVeiw(
                        suraModel: filterList[index],
                        index: index + 1,
                      ));
                }),
          )
        ],
      ),
    );
  }
}
