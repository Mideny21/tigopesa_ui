import 'package:flutter/material.dart';

import '../components/service_panel.dart';
import '../components/slider_ad.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: CustomButton(
                leading: true, tap: () {}, text: "Angalia Salio (bure)"),
          ),
          const ServicePanel(),
          const AdvertisementPanel()
        ],
      ),
    );
  }
}
