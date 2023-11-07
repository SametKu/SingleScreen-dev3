import 'package:flutter/material.dart';
import 'package:my_screen/colors.dart';

class ContainerTop extends StatelessWidget {
  final Widget child;
  const ContainerTop({
    super.key, required this.child
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(image: const AssetImage('images/sunset2.png'), 
          fit: BoxFit.cover, 
          colorFilter: ColorFilter.mode(opacityColor.withOpacity(0.4), BlendMode.dstATop),
        )
      ),
      child:  child
   
      
    );
  }
}
