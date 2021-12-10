import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubankui/styles.dart';

class Emprestimo extends StatelessWidget {
  const Emprestimo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 10, top: 10, bottom: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(
          Icons.money_sharp,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Empréstimo",
              style: mediumTxt.copyWith(fontSize: 20),
            ),
            Icon(Icons.keyboard_arrow_right)
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Valor disponível de até",
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
