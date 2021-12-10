import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nubankui/colors.dart';
import 'package:nubankui/styles.dart';
import 'package:nubankui/widgets/custom_btn.dart';

class Teste2 extends StatelessWidget {
  const Teste2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        height: 60.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: CustomColors.grey,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AutoSizeText.rich(
                        TextSpan(
                          text: '25% de desconto',
                          style: const TextStyle(
                              color: CustomColors
                                  .primaryColor), // default text style
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  ' em empréstimo com portabilidade e salário. ',
                              style: const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ])),
            Container(
                padding: const EdgeInsets.all(8.0),
                width: 300.0,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: CustomColors.grey,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AutoSizeText.rich(
                        TextSpan(
                          text: 'Salve seus amigos da burocracia. ',
                          style: const TextStyle(
                              color: Colors.black), // default text style
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Faça um convite para o Nubank.',
                              style: const TextStyle(
                                  color: CustomColors.primaryColor),
                            ),
                          ],
                        ),
                      ),
                    ])),
          ],
        ));
  }
}
