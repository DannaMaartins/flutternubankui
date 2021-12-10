import 'package:flutter/material.dart';

class Teste extends StatelessWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.credit_card),
        ListTile(
          title: Text('Cartão de Crédito'),
          subtitle: Text('Fatura atual'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('horse');
          },
          selected: true,
        ),
        Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: CircleAvatar(),
          title: Text('Cow'),
          subtitle: Text('Provider of milk'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('cow');
          },
        ),
        ListTile(
          leading: CircleAvatar(),
          title: Text('Camel'),
          subtitle: Text('Comes with humps'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('camel');
          },
          enabled: false,
        ),
        ListTile(
          leading: CircleAvatar(),
          title: Text('Sheep'),
          subtitle: Text('Provides wool'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('sheep');
          },
        ),
        ListTile(
          leading: CircleAvatar(),
          title: Text('Goat'),
          subtitle: Text('Some have horns'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            print('goat');
          },
        ),
      ],
    );
  }
}
