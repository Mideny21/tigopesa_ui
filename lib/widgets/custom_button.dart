import 'dart:ffi';

import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback tap;
  final String text;
  final bool leading;

  final Color color;
  const CustomButton({
    Key? key,
    required this.tap,
    required this.text,
    this.leading = false,
    this.color = AppColors.yellowColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.maxFinite,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        onPressed: tap,
        label: Text(text,
            style: TextStyle(
                fontSize: 16,
                color: Colors.blueGrey[700],
                // fontWeight: FontWeight.bold,
                letterSpacing: 0.8)),
        icon: leading
            ? Icon(Icons.account_balance_wallet_outlined,
                color: Colors.blueGrey[700], size: 33)
            : Container(),
      ),
    );
  }
}