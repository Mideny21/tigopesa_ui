import 'package:flutter/material.dart';
import 'package:tigo_pesa/utils/colors.dart';
import 'package:tigo_pesa/widgets/custom_button.dart';

import '../data/services.dart';
import '../widgets/appBar.dart';

class HudumaZaKifedhaScreen extends StatefulWidget {
  const HudumaZaKifedhaScreen({super.key});

  @override
  State<HudumaZaKifedhaScreen> createState() => _HudumaZaKifedhaScreenState();
}

class _HudumaZaKifedhaScreenState extends State<HudumaZaKifedhaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Huduma za Kifedha"),
      body: SingleChildScrollView(
          child: Column(
        children: [
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                mainAxisExtent: 100,
                crossAxisCount: 2),
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: hudumaZaKifedha.length,
            itemBuilder: ((context, index) {
              return Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      hudumaZaKifedha[index]['name'] == 'visa'
                          ? Image.asset(hudumaZaKifedha[index]['image'],
                              height: 80, fit: BoxFit.cover)
                          : hudumaZaKifedha[index]['icon'],
                      const SizedBox(height: 10),
                      hudumaZaKifedha[index]['name'] == 'visa'
                          ? Container()
                          : Text(hudumaZaKifedha[index]['name'],
                              overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              );
            }),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/images/bima.jpg',
                  height: 100, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.16,
              child: Card(
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 4,
                            child: Column(
                              children: [
                                Text(
                                  "Unahitaji Msaada?",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primaryColor),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Tuna uwezo wa kukusaidia tafadhali jisikie huru kuuliza maswali yako",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black54),
                                ),
                                const SizedBox(height: 8),
                                CustomButton(
                                    height: 35,
                                    fontSize: 14,
                                    tap: () {},
                                    color: AppColors.primaryColor,
                                    textColor: Colors.white,
                                    text: 'Piga Huduma kwa Wateja')
                              ],
                            )),
                        const SizedBox(width: 10),
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/customer.png',
                                  height: 120, fit: BoxFit.fill),
                            ))
                      ]),
                ),
              ))
        ],
      )),
    );
  }
}
