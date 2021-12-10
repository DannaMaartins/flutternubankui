import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nubankui/colors.dart';

class NubankAppBar extends StatelessWidget {
  const NubankAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toolbarHeight = 135.0;

    return SliverAppBar(
      floating: true,
      stretch: true,

      toolbarHeight: toolbarHeight,
      backgroundColor: CustomColors.primaryColor,
      title: Container(
        height: toolbarHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(.3),
                  radius: 30,
                  child: IconButton(
                    icon: Icon(Icons.person_outline,
                        color: Colors.white, size: 30),
                    onPressed: () {},
                  ),
                ),
                Spacer(),
                iconBtn(Icons.remove_red_eye_outlined),
                iconBtn(Icons.info_outline),
                iconBtn(Icons.email_outlined),
              ],
            ),
            Expanded(
              child:Container(
                height: toolbarHeight,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Spacer(),
                      Text(
                        "Olá, Danna",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ])))
          ],
        ),
      ),
    );
  }
}

Widget iconBtn(IconData data) {
  return Padding(
    padding: const EdgeInsets.only(right: 5.0),
    child: IconButton(
      splashRadius: 20,
      icon: Icon(
        data,
        size: 25,
      ),
      onPressed: () {},
    ),
  );
}
