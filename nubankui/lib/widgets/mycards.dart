import 'package:flutter/material.dart';
import 'package:nubankui/colors.dart';

import 'package:nubankui/screens/detailsscreen.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(),
              ),
            ),
        child: Container(
            margin: EdgeInsets.all(15),
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            width: 300,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: CustomColors.grey),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.credit_card,
                  size: 30.0,
                ),
                const SizedBox(
                  width: 30,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1),
                    child: Text(
                      "Meus cartões",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
