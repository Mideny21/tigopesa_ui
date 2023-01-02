import 'package:flutter/material.dart';

import '../../widgets/appBar.dart';

class ListOfBankScreen extends StatefulWidget {
  const ListOfBankScreen({super.key});

  @override
  State<ListOfBankScreen> createState() => _ListOfBankScreenState();
}

class _ListOfBankScreenState extends State<ListOfBankScreen> {
  List listofbanks = <String>[
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Chagua',
        actions: [
          IconButton(
              icon: const Icon(Icons.star_border_sharp, color: Colors.amber),
              onPressed: () {}),
        ],
      ),
      body: ListView.builder(
          itemCount: listofbanks.length,
          shrinkWrap: true,
          itemBuilder: ((context, index) {
            return ListTile(
              onTap: () => Navigator.of(context).pop(listofbanks[index]),
              leading: const Icon(Icons.radio_button_off_sharp),
              title: Text(listofbanks[index]),
            );
          })),
    );
  }
}
