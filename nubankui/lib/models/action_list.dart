import 'package:flutter/material.dart';
import 'package:nubankui/models/action_btn.dart';

List<ActionBtn> actions=[
  new ActionBtn(
    Icon(
      Icons.qr_code,
  color: Colors.black,),
  "Área Pix", (){}
  ),

  new ActionBtn(
    Icon(
      Icons.payments,
  color: Colors.black,),
  "Pagar", (){}
  ),

  new ActionBtn(
    Icon(
      Icons.money_rounded,
  color: Colors.black,),
  "Transferir", (){}
  ),
  
  new ActionBtn(
    Icon(
      Icons.attach_money,
  color: Colors.black,),
  "Depositar", (){}
  ),

  new ActionBtn(
    Icon(
      Icons.mobile_friendly,
  color: Colors.black,),
  "Recarga", (){}
  ),
];

class ActionList extends StatelessWidget {
  const ActionList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: actions.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: ()=> actions[index].onPressd,
            child: Padding(padding: index == 0
            ? EdgeInsets.only(left:15, right: 10, top: 10, bottom: 10)
            : EdgeInsets.all(10.0),
            child: Container(
              width: 70,
              child: Column(
                children: [
                  CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(.2),
                  radius: 35,
                  child: actions[index].icon
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  actions[index].text,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                )
                ],
              ),
            ),),
          );

        },
      ),
      
    );
  }
}

