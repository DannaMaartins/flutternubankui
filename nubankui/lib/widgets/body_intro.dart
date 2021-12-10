import 'package:flutter/material.dart';
import 'package:nubankui/colors.dart';
import 'package:nubankui/styles.dart';
import 'package:nubankui/widgets/custom_btn.dart';

class BodyIntro extends StatelessWidget {
  const BodyIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Conta",
              style: mediumTxt.copyWith(fontSize: 25),
            ),
            Icon(Icons.keyboard_arrow_right)
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "R\$ 100,00",
          style: mediumTxt.copyWith(fontSize: 25),
        ),
        SizedBox(
          height: 25,
        ),
        CustomButton(
          onTap: () {},
          label: Text("Eu quero ser Nusócio",
              style: mediumTxt.copyWith(color: Colors.white)),
          color: CustomColors.primaryColor,
        ),
      ]),
    );
  }
}
