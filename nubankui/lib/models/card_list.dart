import 'package:flutter/material.dart';
import 'package:nubankui/colors.dart';

class CardsBtn {
  String text;
  Function onPressd;

  CardsBtn(this.text, this.onPressd);
}

List<Map<String, dynamic>> cards = [
  {
    'title': 'IPO do Nubank: Investimento a partir de R\$30 até 07/12.',
  },
  {
    'title': '25% de desconto em empréstimo com portabilidade de salário.',
  },
  {
    'title': 'Salve seus amigos da burocracia. Faça um convite para o nubank.',
  },
];

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 1050,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            cards.length,
            (f) => Container(
              constraints:
                  BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
              margin: EdgeInsets.all(15),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: CustomColors.grey,
                border: Border.all(color: CustomColors.grey),
                borderRadius: BorderRadius.circular(9.0),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(5.0),
                  ),
                  SizedBox(width: 1),
                  Flexible(
                    child: Text(
                      "${cards[f]['title']}",
                      style: TextStyle(color: CustomColors.primaryColor),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
