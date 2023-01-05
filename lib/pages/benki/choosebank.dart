import 'package:flutter/material.dart';
import 'package:tigo_pesa/utils/colors.dart';
import 'package:tigo_pesa/utils/helpers.dart';

import '../../widgets/appBar.dart';
import 'kwendaBenki.dart';
import 'kwendaTigoPesa.dart';

class ChaguaBank extends StatefulWidget {
  const ChaguaBank({super.key});

  @override
  State<ChaguaBank> createState() => _ChaguaBankState();
}

class _ChaguaBankState extends State<ChaguaBank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Benki',
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            BankChoiceCard(
              tap: () => nextScreen(context, const TigoPesaKwendaBenki()),
              icon: Icons.account_balance_outlined,
              title: 'Tuma Kwenda Benki',
            ),
            BankChoiceCard(
              tap: () => nextScreen(context, const BenkiKwendaTigoPesa()),
              icon: Icons.account_balance_outlined,
              title: 'Benki kwenda Tigo Pesa',
            ),
          ],
        ),
      ),
    );
  }
}

class BankChoiceCard extends StatelessWidget {
  final VoidCallback tap;
  final IconData icon;
  final String title;
  const BankChoiceCard({
    Key? key,
    required this.tap,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      width: MediaQuery.of(context).size.width * 1.0,
      child: InkWell(
        onTap: tap,
        child: Card(
            elevation: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: AppColors.primaryColor, size: 50),
                const SizedBox(height: 5),
                Text(
                  title,
                  style: TextStyle(color: AppColors.primaryColor, fontSize: 17),
                )
              ],
            )),
      ),
    );
  }
}
