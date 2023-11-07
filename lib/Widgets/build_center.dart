import 'package:flutter/material.dart';
import 'package:my_screen/colors.dart';
import 'package:my_screen/counts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class BuildCenter extends StatelessWidget {
  const BuildCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child:   Card(
        
        color: cardRenk,
        shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        )),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTileView(titleText: AppLocalizations.of(context)?.shipping ?? '', icon: const Icon(Icons.local_shipping), iconColor: cardRenk2),
          ListTileView(titleText: AppLocalizations.of(context)?.payment ?? '', icon: const Icon(Icons.payment_outlined), iconColor: cardRenk3),
          ListTileView(titleText: AppLocalizations.of(context)?.profile ?? '',icon: const Icon(Icons.settings_accessibility_outlined), iconColor: cardRenk2),
          ListTileView(titleText: AppLocalizations.of(context)?.exit ?? '', icon: const Icon(Icons.logout), iconColor: cardRenk3),
          
        ],
      )
       
      )
    );
  }
}

class ListTileView extends StatelessWidget {
  final String titleText;
  final Widget icon;
  final Color iconColor;
  const ListTileView({super.key, required this.titleText, required this.icon, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        leading: SizedBox(
          width:  DoubleCounts.constValue,
          height: DoubleCounts.constValue,
          child: Card(
           color: iconColor,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(DoubleCounts.radiusSmall)),
           child: icon,
          ),
        ),
        title: Text(titleText, style:  TextStyle(color: yaziRenk2,fontWeight: FontWeight.bold, fontFamily: "PlaypenSans"),),
        trailing:  IconButton( onPressed: (){}, icon:const Icon(Icons.chevron_right)),
      )
    ],
  );
  }

}