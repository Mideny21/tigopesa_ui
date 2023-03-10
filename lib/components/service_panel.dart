import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:tigo_pesa/utils/colors.dart';
import 'package:tigo_pesa/utils/helpers.dart';
import 'package:tigo_pesa/utils/text_styles.dart';
import 'package:tigo_pesa/widgets/custom_button.dart';

import '../data/services.dart';
import '../pages/benki/choosebank.dart';
import '../pages/chagua_bill.dart';
import '../pages/duka_la_tigo.dart';
import '../pages/hudumaZaKifedha.dart';
import '../pages/kulipia_bill.dart';
import '../pages/toa_pesa.dart';
import '../pages/tuma_kwend_nje.dart';
import '../pages/tuma_pesa.dart';

class ServicePanel extends StatefulWidget {
  const ServicePanel({super.key});

  @override
  State<ServicePanel> createState() => _ServicePanelState();
}

class _ServicePanelState extends State<ServicePanel> {
  String dropdownValue = 'Tigo Pesa';
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            mainAxisExtent: 100,
            crossAxisCount: 2),
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: services.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: InkWell(
                    onTap: () {
                      switch (services[index]['name']) {
                        case 'Tuma Pesa':
                          nextScreen(context, const TumePesaScreen());
                          break;
                        case 'Malipo ya Serikali':
                          malipoYaSerikaliDialog(context);
                          break;
                        case 'Lipa Kwa Simu':
                          lipaKwaSimuDialog(context);
                          break;
                        case 'Benki':
                          nextScreen(context, const ChaguaBank());
                          break;
                        case 'Kutoa Pesa':
                          nextScreen(context, const ToaPesaScreen());
                          break;
                        case 'Kulipia Bili':
                          nextScreen(context, const ChaguaBillScreen());
                          break;
                        case 'Duka La tigo':
                          nextScreen(context, const DukaLaTigoScreen());
                          break;
                        case 'Huduma za Kifedha':
                          nextScreen(context, const HudumaZaKifedhaScreen());
                          break;
                        case 'Tuma Nje ya Nchi':
                          nextScreen(context, const TumaKwendaNjeScreen());
                          break;
                        default:
                      }
                    },
                    child: Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            services[index]['image'] != null
                                ? Image.asset(services[index]['image'],
                                    height: 40, fit: BoxFit.cover)
                                : services[index]['icon'] == null
                                    ? Container()
                                    : services[index]['icon'],
                            const SizedBox(height: 10),
                            services[index]['name'] == "Lipa Kwa Simu"
                                ? Text(
                                    "Lipa Kwa Simu",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: AppColors.primaryColor
                                            .withOpacity(0.8),
                                        fontWeight: FontWeight.bold),
                                  )
                                : Text(services[index]['name'],
                                    overflow: TextOverflow.ellipsis),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                services[index]['badge'] == true
                    ? Positioned(
                        top: -4,
                        right: 0,
                        child: Container(
                          height: 45,
                          decoration: const BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                          child: Center(
                              child: Text(
                            "MPYA",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ))
                    : Container()
              ],
            ),
          );
        }));
  }

  Future<void> malipoYaSerikaliDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 10),
          elevation: 0,
          actionsAlignment: MainAxisAlignment.spaceAround,
          title:
              const Text('Chagua njia ya malipo', textAlign: TextAlign.center),
          content: Column(mainAxisSize: MainAxisSize.min, children: [
            CustomButton(
                tap: () {},
                text: 'SKANI PICHA YA QR KULIPA',
                textColor: Colors.white,
                color: AppColors.primaryColor),
            const SizedBox(height: 10),
            CustomButton(
              tap: () => nextScreen(
                  context,
                  KulipiaBillScreen(
                    title: 'Malipo ya Serikali/ Goverments Payments',
                    controlnumber: '001001',
                  )),
              text: 'INGIZA NAMBA YA MALIPO',
              textColor: Colors.white,
              color: AppColors.greenButtonColor,
            ),
            const SizedBox(height: 10),
            CustomButton(
                tap: () {
                  Navigator.pop(context);
                },
                text: 'SITISHA',
                textColor: Colors.white,
                color: Colors.grey),
            const SizedBox(height: 5),
          ]),
        );
      },
    );
  }

  Future<void> lipaKwaSimuDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 10),
          elevation: 0,
          actionsAlignment: MainAxisAlignment.spaceAround,
          title:
              const Text('Chagua njia ya malipo', textAlign: TextAlign.center),
          content: Column(mainAxisSize: MainAxisSize.min, children: [
            CustomButton(
                tap: () {},
                text: 'SKANI PICHA YA QR',
                textColor: Colors.white,
                color: AppColors.primaryColor),
            const SizedBox(height: 10),
            CustomButton(
              tap: () => ingizaNambaYaBiasharaDialog(context),
              text: 'INGIZA NAMBA YA BIASHARA',
              textColor: Colors.white,
              color: AppColors.greenButtonColor,
            ),
            const SizedBox(height: 10),
            CustomButton(
                tap: () {
                  Navigator.pop(context);
                },
                text: 'SITISHA',
                textColor: Colors.white,
                color: Colors.grey),
            const SizedBox(height: 5),
          ]),
        );
      },
    );
  }

  Future<void> ingizaNambaYaBiasharaDialog(BuildContext context) async {
    Navigator.of(context).pop(); //
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 5),
          elevation: 0,
          content: Column(mainAxisSize: MainAxisSize.min, children: [
            Column(
              children: [
                const Text(
                  "Chagua Huduma za Malipo",
                  textAlign: TextAlign.center,
                  style: titleStyle,
                ),
                const SizedBox(height: 4),
                Container(
                  decoration: containerstyle,
                  child: DropdownButtonFormField<String>(
                    icon: Icon(Icons.keyboard_arrow_down_rounded, size: 26),
                    value: dropdownValue,
                    hint: const Text(
                      'Chagua Malipo',
                      textAlign: TextAlign.center,
                    ),
                    items: <String>['Tigo Pesa', 'M-Pesa', 'Master Card']
                        .map<DropdownMenuItem<String>>((String value) {
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
                const SizedBox(height: 15),
                Column(
                  children: [
                    const Text("Ingiza Namba ya Biashara",
                        style: titleStyle, textAlign: TextAlign.center),
                    const SizedBox(height: 5),
                    Container(
                        decoration: containerstyle,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText:
                                'Ingiza tarakimu 7 au 8 za mfanyabiashara',
                            hintStyle: TextStyle(
                                color: AppColors.primaryColor.withOpacity(0.7)),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 5, bottom: 5, top: 5, right: 5),
                          ),
                        )),
                  ],
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
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: CustomButton(
                      tap: () {},
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
