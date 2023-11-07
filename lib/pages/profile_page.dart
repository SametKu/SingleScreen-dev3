import 'package:flutter/material.dart';
import 'package:my_screen/Widgets/build_center.dart';
import 'package:my_screen/Widgets/build_inside.dart';
import 'package:my_screen/Widgets/build_top.dart';
import 'package:my_screen/colors.dart';
import 'package:my_screen/counts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerTop(
        child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)?.title ?? '', 
        style: TextStyle(
          color: yaziRenk, 
          fontWeight: FontWeight.bold, 
          fontSize: DoubleCounts.fontS, 
          fontFamily: "PlaypenSans"
          ),
          ),
          ),
        backgroundColor: Colors.transparent,
        body:  const Stack(
              children: [
               Positioned(
                top: DoubleCounts.sayi2,
                child: BuildTop()),
               Positioned(
                bottom: DoubleCounts.sayi2,
                child:  BuildCenter()),
          ],
        ),
      ),
    );
  }
}






