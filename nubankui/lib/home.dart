import 'package:flutter/material.dart';

import 'package:nubankui/models/action_list.dart';
import 'package:nubankui/models/card_list.dart';
import 'package:nubankui/models/descubra.dart';
import 'package:nubankui/models/emprestimo.dart';

import 'package:nubankui/models/info_list.dart';
import 'package:nubankui/models/teste2.dart';

import 'package:nubankui/widgets/app_bar.dart';
import 'package:nubankui/widgets/body_intro.dart';
import 'package:nubankui/widgets/investimentos.dart';

import 'package:nubankui/widgets/mycards.dart';
import 'package:nubankui/widgets/segurodevida.dart';
import 'package:nubankui/widgets/shopping.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      NubankAppBar(),
      SliverToBoxAdapter(
        child: BodyIntro(),
      ),
      SliverToBoxAdapter(
        child: ActionList(),
      ),
      SliverToBoxAdapter(
        child: MyCard(),
      ),
      SliverToBoxAdapter(
        child: Teste2(),
      ),
      SliverToBoxAdapter(
        child: InfoList(),
      ),
      SliverToBoxAdapter(child: Investimentos()),
      SliverToBoxAdapter(
        child: Emprestimo(),
      ),
      SliverToBoxAdapter(
        child: SegurodeVida(),
      ),
      SliverToBoxAdapter(
        child: Shopping(),
      ),
      SliverToBoxAdapter(
        child: DescubraList(),
      )
    ]));
  }
}
