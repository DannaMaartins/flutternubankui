import 'package:flutter/material.dart';
import 'package:nubankui/colors.dart';

import 'package:nubankui/styles.dart';
import 'package:nubankui/widgets/custom_btn.dart';

class InfoList extends StatelessWidget {
  const InfoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(
          Icons.credit_card,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Cartão de Crédito",
              style: mediumTxt.copyWith(fontSize: 20),
            ),
            Icon(Icons.keyboard_arrow_right)
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Fatura atual",
          style: TextStyle(
              fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "R\$1.000",
          style: mediumTxt.copyWith(fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Limite Disponível de R\$1.000",
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
