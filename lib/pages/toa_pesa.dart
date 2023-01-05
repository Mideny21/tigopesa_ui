import 'package:flutter/material.dart';
import 'package:tigo_pesa/utils/text_styles.dart';

import '../utils/colors.dart';
import '../widgets/appBar.dart';
import '../widgets/custom_button.dart';
import '../widgets/input_forms.dart';

class ToaPesaScreen extends StatefulWidget {
  const ToaPesaScreen({super.key});

  @override
  State<ToaPesaScreen> createState() => _ToaPesaScreenState();
}

class _ToaPesaScreenState extends State<ToaPesaScreen> {
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
        title: 'Kutoa Pesa',
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tembelea wakala wa Tigo Pesa ili kutoa pesa",
                      style: titleStyle,
                    ),

                    const SizedBox(height: 20),

                    InputForms(
                        title: "Kutoka",
                        text: "Ingiza namba ya wakala kwa usahihi"),

                    const SizedBox(height: 20),
                    InputForms(title: "Kiasi", text: "Ingiza kiasi cha kutoa"),

                    const SizedBox(height: 20),
                    InputForms(
                        title: "Maelezo ya muamala (si lazima)",
                        text: "Ingiza maelezo hapa"),
                    // const SizedBox(height: 200),
                    const SizedBox(height: 20),

                    CustomButton(
                        textColor: Colors.white,
                        color: AppColors.greenButtonColor,
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
