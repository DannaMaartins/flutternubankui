import 'package:flutter/material.dart';

import '../styles.dart';

class Shopping extends StatelessWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 10, top: 10, bottom: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(Icons.shopping_bag),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Shopping",
              style: mediumTxt.copyWith(fontSize: 20),
            ),
            Icon(Icons.keyboard_arrow_right)
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Vantagens exclusivas das nossas marcas preferidas.",
          style: TextStyle(
              fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "R\$12.000",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(
          height: 20,
          color: Colors.grey,
        ),
      ]),
    );
  }
}
