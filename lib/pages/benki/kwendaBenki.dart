import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/appBar.dart';
import '../../widgets/custom_button.dart';

class TigoPesaKwendaBenki extends StatefulWidget {
  const TigoPesaKwendaBenki({super.key});

  @override
  State<TigoPesaKwendaBenki> createState() => _TigoPesaKwendaBenkiState();
}

class _TigoPesaKwendaBenkiState extends State<TigoPesaKwendaBenki> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Tuma kwenda benki',
        actions: [
          IconButton(
              icon: const Icon(Icons.star_border_sharp, color: Colors.amber),
              onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: 600,
          child: Card(
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Stack(
                  // alignment: Alignment.topCenter,

                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Text(
                          "Tuma Pesa kwenda mitandao yote. Ingiza namba au chagua kutoka kwenye orodha ya simu yako."),
                    ),
                    Positioned(
                      top: 50,
                      right: 0,
                      left: 0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 2,
                            child: const InputForms(
                                title: "Chagua benki", text: "Chagua benki"),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 3.0),
                                child: CustomButton(
                                    color: AppColors.primaryColor,
                                    tap: () {},
                                    textColor: Colors.white,
                                    text: "CHAGUA"),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Positioned(
                      top: 140,
                      right: 0,
                      left: 0,
                      child: InputForms(
                          title: "Akaunti Namba",
                          text: "Ingiza namba ya akaunti"),
                    ),
                    const SizedBox(height: 5),
                    Positioned(
                      top: 230,
                      right: 0,
                      left: 0,
                      child: InputForms(
                          title: "Kiasi", text: "Ingiza kiasi cha kutuma"),
                    ),

                    // const SizedBox(height: 200),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomButton(
                            textColor: Colors.white,
                            color: Colors.green,
                            tap: () {},
                            text: "ENDELEA"))
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

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
