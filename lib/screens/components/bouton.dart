import 'dart:developer';

import 'package:flutter/material.dart';

class Bouton extends StatelessWidget {
  final String text;
  final Color colorBouton;
  final Color colorText;
  final Function onTap;
  final Widget icone;
  final Color borderColor;

  const Bouton(
      {Key key,
      this.text,
      this.colorBouton,
      this.colorText,
      this.onTap,
      this.icone,
      this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: colorText, fontWeight: FontWeight.bold, fontSize: 16),
            ),
            if (icone != null)
              Row(
                children: [SizedBox(width: 10), icone],
              ),
          ],
        ),
        decoration: BoxDecoration(
            color: colorBouton,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: borderColor)),
      ),
    );
  }
}
