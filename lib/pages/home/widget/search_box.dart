import 'package:flutter/material.dart';

Widget searchBox(context) {
  return SizedBox(
      height: 50,
      child: Row(children: [
        Expanded(
            child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.withOpacity(0.1),
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.grey[400]),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        )),
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(10)),
          child: Icon(Icons.tune, color: Colors.white),
        )
      ]));
}
