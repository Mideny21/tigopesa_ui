import 'package:flutter/material.dart';
import 'package:tigo_pesa/utils/colors.dart';

import 'package:tigo_pesa/widgets/appBar.dart';
import 'package:tigo_pesa/widgets/custom_button.dart';

import '../data/services.dart';

class JihudumieScreens extends StatefulWidget {
  const JihudumieScreens({super.key});

  @override
  State<JihudumieScreens> createState() => _JihudumieScreensState();
}

class _JihudumieScreensState extends State<JihudumieScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Tigo Pesa'),
      body: ListView(
        children: [
          SizedBox(
            height: 180,
            child: Card(
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30.0, horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "RAYMOND MWAIKASU",
                                style: TextStyle(
                                    fontSize: 19,
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Prepaid: +255 767 108989",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Barua Pepe:",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Lugha",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Container(
                          width: 1, color: Colors.grey.withOpacity(0.6)),
                    ), // This is divider
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 12),
                                child: Image.asset('assets/images/thumb.png',
                                    height: 55)),
                            Column(
                              children: [
                                Text(
                                  'Imeandikishwa kutumia',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 12),
                                ),
                                Text(
                                  'NIDA',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 12),
                                ),
                              ],
                            ),
                            Text(
                              '03-12-2021',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: CustomButton(
                                  tap: () {},
                                  fontSize: 12,
                                  height: 33,
                                  color: AppColors.primaryColor,
                                  text: 'Tazama Maelezo',
                                  textColor: Colors.white),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ),
          JihudumieList(
            title: 'Tigo Pesa',
            height: 240,
            itemslength: tigopesa.length,
            itemslistImage: tigopesa.map((e) => e['image']).toList(),
            itemslistName: tigopesa.map((e) => e['name']).toList(),
          ),
          const SizedBox(height: 10),
          JihudumieList(
            title: 'Mipangilio ya Simu',
            height: 130,
            itemslength: mipangilio.length,
            itemslistImage: mipangilio.map((e) => e['image']).toList(),
            itemslistName: mipangilio.map((e) => e['name']).toList(),
          ),
          const SizedBox(height: 10),
          JihudumieList(
            title: 'Kituo cha Msaada',
            height: 120,
            itemslength: kituo.length,
            itemslistImage: kituo.map((e) => e['image']).toList(),
            itemslistName: kituo.map((e) => e['name']).toList(),
          ),
          const SizedBox(height: 10),
          JihudumieList(
            title: 'Kituo cha Msaada',
            height: 120,
            itemslength: alika.length,
            itemslistImage: alika.map((e) => e['image']).toList(),
            itemslistName: alika.map((e) => e['name']).toList(),
          ),
        ],
      ),
    );
  }
}

class JihudumieList extends StatelessWidget {
  final String title;
  final double height;
  final int itemslength;
  final List? itemslistImage;
  final List? itemslistName;

  const JihudumieList({
    Key? key,
    required this.title,
    required this.height,
    required this.itemslength,
    required this.itemslistImage,
    required this.itemslistName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      letterSpacing: 0.6,
                      color: AppColors.primaryColor),
                ),
                const SizedBox(height: 15),
                GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 0,
                            crossAxisSpacing: 0,
                            mainAxisExtent: 60,
                            crossAxisCount: 3),
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: itemslength,
                    itemBuilder: ((context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(itemslistImage![index],
                              height: 30, fit: BoxFit.cover),
                          const SizedBox(height: 5),
                          Text(itemslistName![index],
                              overflow: TextOverflow.ellipsis),
                        ],
                      );
                    }))
              ],
            ),
          ),
        ));
  }
}
