import 'package:flutter/material.dart';

import 'bouton.dart';

class ValideButton extends StatelessWidget {
  final String text;
  final Widget icone;
  final Function onTap;
  const ValideButton({Key key, this.text, this.icone, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bouton(
        text: text,
        borderColor: Colors.purple.shade300,
        colorText: Colors.white,
        colorBouton: Colors.purple.shade300,
        onTap: onTap,
        icone: icone);
  }
}
