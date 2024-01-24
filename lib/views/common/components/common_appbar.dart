import 'package:flutter/material.dart';
import 'package:porelab_integrity_tester_design/configs/app_constants.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({super.key, this.actions, this.text});

  final String? text;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      leadingWidth: size.width * .15,
      leading: Image.asset(
        AssetsName.m19Logo,
        fit: BoxFit.cover,
      ),
      title: Text(text ?? ""),
      actions: actions,
    );
  }
}
