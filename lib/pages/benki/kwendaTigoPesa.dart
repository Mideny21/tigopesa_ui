import 'package:flutter/material.dart';
import 'package:tigo_pesa/widgets/appBar.dart';
import 'package:tigo_pesa/widgets/custom_button.dart';

import '../../utils/colors.dart';
import '../../utils/text_styles.dart';

class BenkiKwendaTigoPesa extends StatefulWidget {
  const BenkiKwendaTigoPesa({super.key});

  @override
  State<BenkiKwendaTigoPesa> createState() => _BenkiKwendaTigoPesaState();
}

class _BenkiKwendaTigoPesaState extends State<BenkiKwendaTigoPesa> {
  String dropdownValue = 'Equity Bank';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Benki Kwenda Tigo Pesa"),
      body: SizedBox(
        height: 700,
        child: Card(
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Chagua benki yako kuhamisha pesa kwenda Tigo Pesa"),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Jina la Benki",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        decoration: containerstyle,
                        child: DropdownButtonFormField<String>(
                          value: dropdownValue,
                          hint: const Text(
                            'Chagua Benki',
                          ),
                          items: <String>[
                            'CRDB',
                            'NMB',
                            'NBC',
                            'Akiba Commercial Bank',
                            'Amana',
                            'BOA',
                            'Absa Bank',
                            'ACCESS Bank',
                            'Azania Bank',
                            'NCBA',
                            'DCB',
                            'DTB',
                            'Ecobank',
                            'Equity Bank',
                            'Exim Bank',
                            'FINCA',
                            'MKOMBOZI BANK',
                            'IM Bank',
                            'KCB',
                            'Letshego Bank',
                            'Maendeleo Bank',
                            'Mwalimu Commercial Bank',
                            'PBZ',
                            'Stanbic Bank',
                            'Standard Chartered Bank',
                            'TPB',
                            'UBA',
                            'Uchumi Bank',
                            'Yetu Bank'
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
                            hintStyle: TextStyle(
                                color: AppColors.primaryColor.withOpacity(0.7)),
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
                  const SizedBox(height: 20),
                  CustomButton(
                    tap: () {},
                    text: 'ENDELEA',
                    color: Colors.green,
                    textColor: Colors.white,
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
