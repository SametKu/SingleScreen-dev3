import 'package:flutter/material.dart';
import 'package:my_screen/colors.dart';
import 'package:my_screen/counts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class BuildTop extends StatelessWidget {
  const BuildTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
    child: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        
        children: [ 
           ClipOval(
            child: SizedBox.fromSize(
              size: const Size.fromRadius(DoubleCounts.constValue), 
              child: Image.asset('images/kopek.png', 
              fit: BoxFit.cover,),),),
            Padding(
             padding:  const EdgeInsets.symmetric(
              vertical: DoubleCounts.paddingVertical),
             child:  Text(AppLocalizations.of(context)?.name ?? '',
              style: TextStyle(
                color: yaziRenk,
                fontSize: DoubleCounts.fontS3 ,
                fontWeight: FontWeight.bold,
                fontFamily: "PlaypenSans"),),
           ),
            SizedBox(
              
              width: 90,
              child:  Card(
              child:  Center(
                child: Text(AppLocalizations.of(context)?.point ?? '', 
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: DoubleCounts.fontS2),))),
           ),
        ],
      ),
    ),
  );
  }
}