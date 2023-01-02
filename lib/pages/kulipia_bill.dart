import 'package:flutter/material.dart';

import 'package:tigo_pesa/utils/colors.dart';
import 'package:tigo_pesa/widgets/appBar.dart';

import '../widgets/custom_button.dart';
import '../widgets/input_forms.dart';

class KulipiaBillScreen extends StatefulWidget {
  final String title;
  final String controlnumber;
  const KulipiaBillScreen({
    Key? key,
    required this.title,
    required this.controlnumber,
  }) : super(key: key);

  @override
  State<KulipiaBillScreen> createState() => _KulipiaBillScreenState();
}

class _KulipiaBillScreenState extends State<KulipiaBillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Kulipia Bili',
        actions: [
          IconButton(
              icon: const Icon(Icons.star_border_sharp,
                  color: AppColors.yellowColors),
              onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Hakikisha una kumbukumbu namba na unaingiza kiasi sahihi kufanya malipo"),

                      const SizedBox(height: 20),
                      Text(
                        "Utalipa kwa:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: AppColors.yellowColors,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Icon(
                                  Icons.food_bank_outlined,
                                  color: Colors.white,
                                ),
                              )),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 5),
                              Text(widget.controlnumber)
                            ],
                          )
                        ],
                      ),

                      const SizedBox(height: 30),

                      InputForms(title: "Namba ya kadi", text: "Namba ya kadi"),

                      const SizedBox(height: 20),
                      InputForms(
                          title: "Kiasi", text: "Ingiza kiasi cha kulipa"),

                      const SizedBox(height: 20),
                      InputForms(
                          title: "Maelezo ya muamala (si lazima)",
                          text: "Ingiza maelezo hapa"),
                      // const SizedBox(height: 200),
                      const SizedBox(height: 20),

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
      ),
    );
  }
}
