import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tigo_pesa/utils/colors.dart';

class AdvertisementPanel extends StatefulWidget {
  const AdvertisementPanel({Key? key}) : super(key: key);

  @override
  State<AdvertisementPanel> createState() => _AdvertisementPanelState();
}

class _AdvertisementPanelState extends State<AdvertisementPanel> {
  final advertisements = [
    "assets/images/dstvlogo.jpeg",
    "assets/images/dstvlogo.jpeg",
    "assets/images/dstvlogo.jpeg"
  ];

  final _pagecontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 3),
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: _pagecontroller,
            children: advertisements
                .map((e) => Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: Image.asset(e, fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ))
                .toList(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SmoothPageIndicator(
                controller: _pagecontroller,
                count: advertisements.length,
                effect: const ExpandingDotsEffect(
                    expansionFactor: 4,
                    dotWidth: 8,
                    dotHeight: 8,
                    spacing: 5,
                    dotColor: Colors.grey,
                    activeDotColor: AppColors.yellowColors),
              ),
            ),
          )
        ],
      ),
    );
  }
}
