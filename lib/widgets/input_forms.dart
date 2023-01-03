import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/text_styles.dart';

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
        Text(
          title,
          style: titleStyle,
        ),
        const SizedBox(height: 5),
        Container(
            decoration: containerstyle,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: text,
                hintStyle:
                    TextStyle(color: AppColors.primaryColor.withOpacity(0.7)),
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
