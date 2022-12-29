import 'package:flutter/material.dart';

import '../data/services.dart';

class ServicePanel extends StatelessWidget {
  const ServicePanel({super.key});

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
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: Card(
                    elevation: 0,
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
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
