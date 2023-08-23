import 'package:flutter/material.dart';

import '../models/tune_model.dart';




class Homeitem extends StatelessWidget {

  const Homeitem({required this.onTap,required this.iconPlay,required this.tuneModel });


    final VoidCallback? onTap;
    final bool iconPlay;
    final TuneModel tuneModel;
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Stack(
        alignment: Alignment.centerLeft,
        children:
            [
                 Container(
                      width: double.infinity,
                      color: tuneModel.color,
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsetsDirectional.only(end: 100),
                        child: IconButton(

                          onPressed: onTap,
                          icon: iconPlay ?  const Icon(Icons.pause,color: Colors.white,size: 45,) : const Icon(Icons.play_arrow,color: Colors.white,size: 45),

                        ),
                      ),

                    ),

                  Container(
                      margin: const EdgeInsetsDirectional.only(start: 40,top: 10),
                      child: Text('${tuneModel.songText}',style: const TextStyle(fontSize: 25,color:Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Lugr'),)),

                ],

      ),
    );





  }
}
