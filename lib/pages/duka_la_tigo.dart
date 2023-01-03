import 'package:flutter/material.dart';
import 'package:tigo_pesa/utils/colors.dart';

import 'package:tigo_pesa/widgets/appBar.dart';

import '../data/services.dart';

class DukaLaTigoScreen extends StatefulWidget {
  const DukaLaTigoScreen({super.key});

  @override
  State<DukaLaTigoScreen> createState() => _DukaLaTigoScreenState();
}

class _DukaLaTigoScreenState extends State<DukaLaTigoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Duka La Tigo"),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Material(
            elevation: 5,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.14,
              decoration:
                  BoxDecoration(color: Colors.lightBlue.withOpacity(0.2)),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone_android_outlined,
                          color: AppColors.primaryColor),
                      SizedBox(width: 8),
                      Text(
                        "Salio kuu 0 Tsh",
                        style: TextStyle(
                            fontSize: 20,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 2),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DukaLatigoLayout1(
                          icon: Icons.wifi,
                          text: '0MB',
                          iconColor: Colors.deepOrange),
                      DukaLatigoLayout1(
                          icon: Icons.phone_android,
                          text: '0Sec',
                          iconColor: AppColors.primaryColor),
                      DukaLatigoLayout1(
                          icon: Icons.email,
                          text: '9964 SMS',
                          iconColor: Colors.deepPurple)
                    ],
                  ),
                )
              ]),
            ),
          ),
          const SizedBox(height: 10),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                mainAxisExtent: 100,
                crossAxisCount: 2),
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: dukalaTigoServices.length,
            itemBuilder: ((context, index) {
              return Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(services[index]['image'],
                          height: 40, fit: BoxFit.cover),
                      const SizedBox(height: 10),
                      Text(services[index]['name'],
                          overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              );
            }),
          )
        ],
      )),
    );
  }
}

class DukaLatigoLayout1 extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;
  const DukaLatigoLayout1({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        Text(text)
      ],
    );
  }
}
