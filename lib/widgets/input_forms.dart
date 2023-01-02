import 'package:flutter/material.dart';

import '../utils/colors.dart';

class InputForms extends StatelessWidget {
  final String title;
  final String text;

  const InputForms({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 5),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.primaryColor, width: 2)),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: text,
                hintStyle: TextStyle(color: AppColors.primaryColor),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding:
                    const EdgeInsets.only(left: 5, bottom: 5, top: 5, right: 5),
              ),
            )),
      ],
    );
  }
}
