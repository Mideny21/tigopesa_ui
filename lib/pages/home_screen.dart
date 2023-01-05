import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:tigo_pesa/utils/colors.dart';

import '../components/service_panel.dart';
import '../components/slider_ad.dart';
import '../utils/text_styles.dart';
import '../widgets/appBar.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'TigoPesa',
        actions: [
          IconButton(
              icon: const Icon(Icons.star_border_sharp,
                  color: AppColors.yellowColors),
              onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.bookmark_outline_outlined,
                  color: Colors.amber),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: CustomButton(
                  color: AppColors.yellowColors.withOpacity(0.8),
                  leading: true,
                  textColor: AppColors.primaryColor,
                  tap: () => checkBalance(context),
                  text: "Angalia Salio (bure)"),
            ),
            const ServicePanel(),
            const AdvertisementPanel()
          ],
        ),
      ),
    );
  }

  Future<void> showBalance(BuildContext context) async {
    Navigator.of(context).pop(); //

    return showDialog(
        context: context,
        barrierDismissible: true, // user must tap button!

        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: AppColors.yellowColors,
            insetPadding: const EdgeInsets.symmetric(horizontal: 5),
            elevation: 0,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.account_balance_wallet_outlined,
                    size: 50, color: AppColors.primaryColor),
                SizedBox(height: 20),
                Text(
                  'Salio jipya ni:',
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  'Tsh 20,356',
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        });
  }

  Future<void> checkBalance(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 5),
          elevation: 0,
          title: const Text('Angalia Salio', textAlign: TextAlign.center),
          content: Column(mainAxisSize: MainAxisSize.min, children: [
            Column(
              children: [
                const Text(
                  "Namba ya siri",
                  textAlign: TextAlign.center,
                  style: titleStyle,
                ),
                const SizedBox(height: 10),
                PinCodeTextField(
                  //  highlightPinBoxColor: AppColors.primaryColor,
                  autofocus: true,
                  hideCharacter: true,
                  highlight: true,
                  highlightColor: AppColors.primaryColor,
                  defaultBorderColor: AppColors.primaryColor.withOpacity(0.5),

                  onTextChanged: (text) {
                    setState(() {});
                  },
                  onDone: (text) {
                    print("DONE $text");
                  },
                  pinBoxWidth: 50,
                  pinBoxHeight: 64,
                  hasUnderline: false,
                  wrapAlignment: WrapAlignment.spaceAround,
                  pinBoxDecoration:
                      ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                  pinTextStyle:
                      TextStyle(fontSize: 30.0, color: AppColors.primaryColor),
                  pinTextAnimatedSwitcherTransition:
                      ProvidedPinBoxTextAnimation.scalingTransition,
                  //               pinBoxColor: AppColors.primaryColor,
                  pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
//                    highlightAnimation: true,
                  highlightAnimationBeginColor: AppColors.primaryColor,
                  highlightAnimationEndColor: AppColors.primaryColor,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: CustomButton(
                      tap: () {
                        Navigator.of(context).pop(); //
                      },
                      text: 'SITISHA',
                      color: Colors.grey,
                      textColor: Colors.white,
                    )),
                SizedBox(width: 10),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: CustomButton(
                      tap: () => showBalance(context),
                      text: 'THIBITISHA',
                      color: AppColors.greenButtonColor,
                      textColor: Colors.white,
                    )),
              ],
            )
          ]),
        );
      },
    );
  }
}
