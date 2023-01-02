import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/appBar.dart';
import '../widgets/custom_button.dart';
import '../widgets/input_forms.dart';

class TumePesaScreen extends StatefulWidget {
  const TumePesaScreen({super.key});

  @override
  State<TumePesaScreen> createState() => _TumePesaScreenState();
}

class _TumePesaScreenState extends State<TumePesaScreen> {
  bool tuma = false;
  bool vocha = false;

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
        title: 'Tuma Pesa',
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
                                title: "Kwa:(Mitandao Yote)",
                                text: "Ingiza kiasi cha kutuma"),
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
                          title: "Kiasi", text: "Ingiza kiasi cha kutuma"),
                    ),
                    const SizedBox(height: 5),
                    Positioned(
                      top: 230,
                      right: 0,
                      left: 0,
                      child: InputForms(
                          title: "Maelezo ya muamala (si lazima)",
                          text: "Ingiza maelezo hapa"),
                    ),
                    Positioned(
                      top: 310,
                      right: 0,
                      left: -10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  tuma = !tuma;
                                  // print(check);
                                });
                              },
                              icon: tuma
                                  ? Icon(Icons.check_box_rounded,
                                      size: 28, color: AppColors.primaryColor)
                                  : Icon(Icons.check_box_outline_blank_rounded,
                                      size: 28, color: Colors.grey[500])),
                          Text("Tuma na yaKutolea",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16)),
                        ],
                      ),
                    ),

                    Positioned(
                      top: 345,
                      right: 0,
                      left: -10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  vocha = !vocha;
                                  // print(check);
                                });
                              },
                              icon: vocha
                                  ? Icon(Icons.check_box_rounded,
                                      size: 28, color: AppColors.primaryColor)
                                  : Icon(Icons.check_box_outline_blank_rounded,
                                      size: 28, color: Colors.grey[500])),
                          Text("Tuma kama Vocha",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16)),
                        ],
                      ),
                    ),
                    // const SizedBox(height: 200),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomButton(
                            textColor: Colors.white,
                            color: AppColors.greenButtonColor,
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
