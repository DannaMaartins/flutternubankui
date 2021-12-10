import 'package:flutter/material.dart';
import 'package:nubankui/colors.dart';
import 'package:nubankui/styles.dart';
import 'package:nubankui/widgets/custom_btn.dart';

class DescubraList extends StatelessWidget {
  const DescubraList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20, right: 20, top: 10, bottom: 20), //padding do titulo e card
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Descubra mais",
              style: mediumTxt.copyWith(fontSize: 20),
            ),
          ],
        ),
        SizedBox(
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                width: 200,
                height: 10,
                decoration: BoxDecoration(
                    color: CustomColors.grey,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Indique seus amigos.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                    Text(
                      "Mostre aos seus amigos como é fácil uma vida sem burocracia.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                    const SizedBox(height: 40),
                    CustomButton(
                      onTap: () {},
                      label: Text('Indicar amigos',
                          style: smallTxt.copyWith(color: Colors.white)),
                      color: CustomColors.primaryColor,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                width: 200,
                height: 80,
                decoration: BoxDecoration(
                    color: CustomColors.grey,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("WhatsApp",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                    Text(
                      "Pagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem sair da conversa. ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                    const SizedBox(height: 40),
                    CustomButton(
                      onTap: () {},
                      label: Text('Quero conhecer',
                          style: smallTxt.copyWith(color: Colors.white)),
                      color: CustomColors.primaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
