import 'package:flutter/cupertino.dart';
import 'package:tigo_pesa/utils/helpers.dart';

import '../pages/tuma_pesa.dart';

List<Map> services = [
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Tuma Pesa",
    "badge": false,
    "function": (BuildContext context) =>
        nextScreen(context, const TumePesaScreen()),
  },
  {
    "image": "assets/images/uhuru na umoja.jpeg",
    "secondary": "assets/images/gepg.png",
    "name": "Kulipia Bili",
    "badge": false,
    "function": null
  },
  {
    "image": "assets/images/mastaa shangwe.jpeg",
    "secondary": "assets/images/captain.jpeg",
    "name": "Benki",
    "badge": false,
    "function": null
  },
  {
    "image": "assets/images/vodabima.jpeg",
    "secondary": "assets/images/mpwa.png",
    "name": "Kutoa Pesa",
    "badge": false,
    "function": null
  },
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Malipo ya Serikali",
    "badge": false,
    "function": null
  },
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Lipa Kwa Simu",
    "badge": true,
    "function": null
  },
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Duka La tigo",
    "badge": false,
    "function": null
  },
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Tuma Nje ya Nchi",
    "badge": false,
    "function": null
  },
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Huduma za Kifedha",
    "badge": true,
    "function": null
  },
];
