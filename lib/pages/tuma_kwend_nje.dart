import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/appBar.dart';
import '../../widgets/custom_button.dart';
import '../utils/text_styles.dart';
import '../widgets/input_forms.dart';

class TumaKwendaNjeScreen extends StatefulWidget {
  const TumaKwendaNjeScreen({super.key});

  @override
  State<TumaKwendaNjeScreen> createState() => _TumaKwendaNjeScreenState();
}

class _TumaKwendaNjeScreenState extends State<TumaKwendaNjeScreen> {
  String dropdownValue = 'Tigo Pesa';

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
        title: 'Tuma Pesa Nje ya Nchi',
        actions: [
          IconButton(
              icon: const Icon(Icons.star_border_sharp,
                  color: AppColors.yellowColors),
              onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Card(
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        "Tuma Pesa Nje ya Nchi. Chagua nchi na mtandao kisha Ingiza namba au kutoka kwenye orodha ya simu yako",
                        style: titleStyle,
                      ),
                      SizedBox(height: 20),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nchi",
                            style: titleStyle,
                          ),
                          const SizedBox(height: 5),
                          Container(
                            decoration: containerstyle,
                            child: DropdownButtonFormField<String>(
                              value: dropdownValue,
                              hint: const Text(
                                'Chagua Nchi',
                                textAlign: TextAlign.center,
                              ),
                              items: <String>[
                                'Tigo Pesa',
                                'M-Pesa',
                                'Master Card'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                              decoration: InputDecoration(
                                fillColor:
                                    AppColors.primaryColor.withOpacity(0.4),
                                hintStyle:
                                    TextStyle(color: AppColors.primaryColor),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: const EdgeInsets.only(
                                    left: 5, bottom: 5, top: 5, right: 5),
                              ),
                              dropdownColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mtandao",
                            style: titleStyle,
                          ),
                          const SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                                color: tigoPesaLightBlue,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color:
                                        AppColors.primaryColor.withOpacity(0.4),
                                    width: 2)),
                            child: DropdownButtonFormField<String>(
                              value: dropdownValue,
                              hint: const Text(
                                'Chagua Nchi',
                                textAlign: TextAlign.center,
                              ),
                              items: <String>[
                                'Tigo Pesa',
                                'M-Pesa',
                                'Master Card'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                              decoration: InputDecoration(
                                hintStyle:
                                    TextStyle(color: AppColors.primaryColor),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: const EdgeInsets.only(
                                    left: 5, bottom: 5, top: 5, right: 5),
                              ),
                              dropdownColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 2,
                            child: const InputForms(
                                title: "Kwa", text: "Ingiza namba ya simu"),
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
                      SizedBox(height: 20),

                      InputForms(
                          title: "Kiasi", text: "Ingiza kiasi cha kutuma"),
                      SizedBox(height: 20),
                      InputForms(
                          title: "Maelezo ya muamala (si lazima)",
                          text: "Ingiza maelezo ya muamala"),
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
      ),
    );
  }
}
