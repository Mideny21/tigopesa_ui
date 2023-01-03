import 'package:flutter/material.dart';
import 'package:tigo_pesa/utils/helpers.dart';

import '../utils/colors.dart';
import '../widgets/appBar.dart';
import '../widgets/custom_button.dart';
import 'kulipia_bill.dart';

class ChaguaBillScreen extends StatefulWidget {
  const ChaguaBillScreen({super.key});

  @override
  State<ChaguaBillScreen> createState() => _ChaguaBillScreenState();
}

class _ChaguaBillScreenState extends State<ChaguaBillScreen> {
  List<Map> listofbusiness = [
    {'name': "LUKU", 'number': '001002'},
    {'name': "TUKUZA", 'number': '878777'},
    {'name': "Azam Pay TV", 'number': '144444'},
    {'name': "DSTV", 'number': '300000'},
    {'name': "Million Solar", 'number': '240240'},
    {'name': "ELIFE", 'number': '889900'},
    {'name': "Air Tanzania", 'number': '787878'},
    {'name': "GCSTanzania Ltd", 'number': '006688'},
    {'name': "D Light Tz", 'number': '250011'},
    {'name': "MOBISOL", 'number': '800200'},
    {'name': "Precision Air", 'number': '333777'},
    {'name': "4Pesa Limited", 'number': '444441'},
    {'name': "A One Product Ltd", 'number': '444444'},
    {'name': "AA TANCH", 'number': '267891'},
    {'name': "AAR Insurance", 'number': '761676'},
    {'name': "Ada Lipa", 'number': '466466'},
    {'name': "Afrobox", 'number': '334422'},
    {'name': "AfyaCall Health Service", 'number': '349977'}
  ];

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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(children: [
                  CustomButton(
                      tap: () {},
                      text: 'SKANI PICHA YA QR KULIPA',
                      textColor: Colors.white,
                      color: AppColors.primaryColor),
                  const SizedBox(height: 10),
                  CustomButton(
                      tap: () {},
                      text: 'INGIZA NAMBA YA MALIPO',
                      textColor: Colors.white,
                      color: AppColors.greenButtonColor),
                ]),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            elevation: 8,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 15),
              child: Column(children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: AppColors.primaryColor, width: 2)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Tafuta kwa namba ya bili au jina',
                        hintStyle: TextStyle(color: AppColors.primaryColor),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 5, bottom: 5, top: 5, right: 5),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: listofbusiness.length,
                      shrinkWrap: true,
                      itemBuilder: ((context, index) {
                        return ListTile(
                          onTap: () => nextScreen(
                              context,
                              KulipiaBillScreen(
                                title: listofbusiness[index]['name'],
                                controlnumber: listofbusiness[index]['number'],
                              )),
                          title: Text(
                              '${listofbusiness[index]['name']} ( ${listofbusiness[index]['number']} )'),
                        );
                      })),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
