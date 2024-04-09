import 'package:flutter/material.dart';

Container aclist(Text text){
  return Container(
    height: 60,
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Colors.black12)
      )
    ),
    child: ListTile(
      title: text,
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
    ),
  );
}