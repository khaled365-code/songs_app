import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/home_container_item.dart';
import '../models/tune_model.dart';



class Homescreen extends StatefulWidget {
  const Homescreen({super.key});




  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {



  List<TuneModel> modelList=[
  TuneModel(color: Colors.red,songText: 'Aalo Aleeky',songSource: 'https://serv100.albumaty.com/song2022/Albumaty.Com_mhmd_sayd_kalwa_alyky.mp3'  ),
  TuneModel(color: Colors.orange ,songText: 'Ana W Enta',songSource: 'https://serv100.albumaty.com/dl/3en/amr-diab/albums/ahla-w-ahla/08_-_Ana_W_Enta.mp3' ),
  TuneModel(color: Colors.yellow,songText: 'tshirt el3omr',songSource:  'https://serv100.albumaty.com/dl/alf/uwk/singels/Albumaty.Com.UWK.ya.tshirt.el3omr.mp3'),
  TuneModel(color: Colors.green,songText: 'Wahashtiny',songSource: 'https://serv100.albumaty.com/dl/3en/amr-diab/albums/lely-nhary/02.Wahashtiny.mp3' ),
  TuneModel(color: Colors.teal,songText: 'Qusad Einy',songSource: 'https://serv100.albumaty.com/dl/3en/amr-diab/albums/lely-nhary/08.Qusad_Einy.mp3' ),
  TuneModel(color: Colors.blue,songText: 'Makmelnash',songSource: 'https://serv100.albumaty.com/songs_2020/Albumaty.Com_mhmd_sayd_mkmlnash.mp3'),
  TuneModel(color: Colors.purple,songText: 'Konty Aolely',songSource: 'https://serv100.albumaty.com/songs_2020/Albumaty.Com_mhmd_sayd_knty_kwlyly.mp3')];

  List<bool>isPlaying=[false,false,false,false,false,false,false];
  List<bool>iconPlay=[false,false,false,false,false,false,false];








  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle:  const SystemUiOverlayStyle(
          statusBarColor: Color(0xff253238),
        ),
        title: const Text('Tune app',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: const Color(0xff253238),
        titleSpacing: 140,
      ),

      body:Column(
        children: [
            Homeitem(
                tuneModel: modelList[0] ,
                 iconPlay: iconPlay[0],

                onTap: () {
                  setState(() {
                    isPlaying[0]=!isPlaying[0];
                    iconPlay[0]=!iconPlay[0];
                    isPlaying[0]? modelList[0].playSound(): modelList[0].stopSound();

                  });


            }),
            Homeitem(
              tuneModel: modelList[1] ,
              iconPlay: iconPlay[1],
              onTap: () {
                setState(() {
                  isPlaying[1]=!isPlaying[1];
                  iconPlay[1]=!iconPlay[1];
                  isPlaying[1]? modelList[1].playSound(): modelList[1].stopSound();

                });

              },
            ),
            Homeitem(
              tuneModel: modelList[2] ,
              iconPlay: iconPlay[2],
              onTap: () {
                setState(() {
                  isPlaying[2]=!isPlaying[2];
                  iconPlay[2]=!iconPlay[2];
                  isPlaying[2]? modelList[2].playSound(): modelList[2].stopSound();
                });




              },
            ),
            Homeitem(
              tuneModel: modelList[3] ,
              iconPlay: iconPlay[3],
              onTap: () {

                setState(() {
                  isPlaying[3]=!isPlaying[3];
                  iconPlay[3]=!iconPlay[3];
                  isPlaying[3]? modelList[3].playSound(): modelList[3].stopSound();


                });

              },
            ),
            Homeitem(
              tuneModel: modelList[4] ,
              iconPlay: iconPlay[4],
              onTap: () {
                setState(() {
                  isPlaying[4]=!isPlaying[4];
                  iconPlay[4]=!iconPlay[4];
                  isPlaying[4]? modelList[4].playSound(): modelList[4].stopSound();

                });


              },
            ),
            Homeitem(
              tuneModel: modelList[5] ,
              iconPlay: iconPlay[5],
              onTap: () {
                setState(() {
                  isPlaying[5]=!isPlaying[5];
                  iconPlay[5]=!iconPlay[5];
                  isPlaying[5]? modelList[5].playSound(): modelList[5].stopSound();

                });

              },
            ),
            Homeitem(
              tuneModel: modelList[6] ,
              iconPlay: iconPlay[6],
              onTap: () {
                setState(() {
                  isPlaying[6]=!isPlaying[6];
                  iconPlay[6]=!iconPlay[6];
                  isPlaying[6]? modelList[6].playSound(): modelList[6].stopSound();

                });

              },
            ),
          ],

      )
    );
  }
}
