import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../styles.dart';

class SegurodeVida extends StatelessWidget {
  const SegurodeVida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 10, top: 10, bottom: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(
          LineIcons.heartAlt,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Seguro de Vida",
              style: mediumTxt.copyWith(fontSize: 20),
            ),
            Icon(Icons.keyboard_arrow_right)
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Conheça Nubank Vida: um seguro simples e que cabe no bolso.",
          style: TextStyle(
              fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        const Divider(
          height: 20,
          color: Colors.grey,
        ),
      ]),
    );
  }
}
