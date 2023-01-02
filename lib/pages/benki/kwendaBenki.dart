import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/appBar.dart';
import '../../widgets/custom_button.dart';
import 'listofbanks.dart';

class TigoPesaKwendaBenki extends StatefulWidget {
  const TigoPesaKwendaBenki({super.key});

  @override
  State<TigoPesaKwendaBenki> createState() => _TigoPesaKwendaBenkiState();
}

class _TigoPesaKwendaBenkiState extends State<TigoPesaKwendaBenki> {
  String? selectedBank;

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
                child: Column(
                  // alignment: Alignment.topCenter,

                  children: [
                    Text(
                        "Tuma Pesa kwenda mitandao yote. Ingiza namba au chagua kutoka kwenye orodha ya simu yako."),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                            flex: 2,
                            child: SizedBox(
                              height: 74,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Chagua benki"),
                                    SizedBox(height: 5),
                                    Container(
                                      height: 47,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: AppColors.primaryColor,
                                              width: 2)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(selectedBank == null
                                            ? 'Chagua Benki'
                                            : selectedBank!),
                                      ),
                                    )
                                  ]),
                            )),
                        const SizedBox(width: 10),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 3.0),
                              child: CustomButton(
                                  color: AppColors.primaryColor,
                                  tap: () async {
                                    final selectedBankValue =
                                        await Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (ctx) =>
                                              const ListOfBankScreen()),
                                    );
                                    setState(() {
                                      selectedBank = selectedBankValue;
                                    });
                                  },
                                  textColor: Colors.white,
                                  text: "CHAGUA"),
                            ))
                      ],
                    ),

                    SizedBox(height: 20),

                    InputForms(
                        title: "Akaunti Namba",
                        text: "Ingiza namba ya akaunti"),

                    SizedBox(height: 20),

                    InputForms(title: "Kiasi", text: "Ingiza kiasi cha kutuma"),
                    SizedBox(height: 20),
                    InputForms(
                        title: "Maelezo", text: "Ingiza maelezo ya muamala"),
                    SizedBox(height: 20),
                    // const SizedBox(height: 200),
                    CustomButton(
                        textColor: Colors.white,
                        color: Colors.green,
                        tap: () {},
                        text: "ENDELEA")
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
