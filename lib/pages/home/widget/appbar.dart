import 'package:flutter/material.dart';

Widget appbar(context) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Text("Hey👋",
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16)),
    Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage("assets/4.png"), fit: BoxFit.cover)),
    )
  ]);
}
