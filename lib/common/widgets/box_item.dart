import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget boxItem(
    String pathIcon, String title, String subTitle, List<Color> colors, int type, {IconData? icon}) {
      if(type == 0){
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(gradient: LinearGradient(colors: colors),borderRadius: const BorderRadius.all(Radius.circular(8))),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              pathIcon,
              height: 69,
              width: 92,
              fit: BoxFit.fill,
            ),
            Container(width: 22,),
            const Icon(Icons.arrow_forward_rounded,size: 12,)
          ],
        ),
        Text(title),
        Text(subTitle)
      ],
    ),
  );}
  else{
    return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(gradient: LinearGradient(colors: colors),borderRadius: const BorderRadius.all(Radius.circular(8))),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon, color: Colors.white,),
            Container(width: 22,),
            const Icon(Icons.arrow_forward_rounded,size: 12, color: Colors.white,)
          ],
        ),
        Text(title,style: const TextStyle(color: Colors.white),),
        Text(subTitle,style: const TextStyle(color: Colors.white),)
      ],
    ),
  );
  }
}
