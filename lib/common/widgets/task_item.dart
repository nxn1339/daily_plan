import 'package:flutter/material.dart';

Widget taskItem() {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(color: Color(0xffF9FAFD)),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('Cleaning Clothes',style: TextStyle(fontSize: 16,color: Color(0xff2C406E)),), Icon(Icons.more_vert,size: 12,)],
        )
      ],
    ),
  );
}
