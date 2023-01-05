import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tigo_pesa/utils/colors.dart';
import 'package:tigo_pesa/utils/helpers.dart';

import '../pages/tuma_pesa.dart';

List<Map> services = [
  {
    "image": null,
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Tuma Pesa",
    "icon": Icon(Icons.offline_share_outlined,
        color: AppColors.primaryColor, size: 50),
    "badge": false
  },
  {
    "image": null,
    "secondary": "assets/images/gepg.png",
    "name": "Kulipia Bili",
    "icon": Icon(Icons.sticky_note_2_outlined,
        color: AppColors.primaryColor, size: 50),
    "badge": false
  },
  {
    "image": null,
    "secondary": "assets/images/captain.jpeg",
    "name": "Benki",
    "icon": Icon(Icons.account_balance_outlined,
        color: AppColors.primaryColor, size: 50),
    "badge": false
  },
  {
    "image": null,
    "secondary": "assets/images/mpwa.png",
    "name": "Kutoa Pesa",
    "icon": Icon(Icons.upload_file_outlined,
        color: AppColors.primaryColor, size: 50),
    "badge": false
  },
  {
    "image": "assets/images/uhuru na umoja.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Malipo ya Serikali",
    "icon": Icon(Icons.account_balance_outlined,
        color: AppColors.primaryColor, size: 50),
    "badge": false
  },
  {
    "image": null,
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Lipa Kwa Simu",
    "icon": null,
    "badge": true
  },
  {
    "image": null,
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Duka La tigo",
    "icon": Icon(Icons.shopping_cart_outlined,
        color: AppColors.primaryColor, size: 50),
    "badge": false
  },
  {
    "image": null,
    "secondary": "assets/images/dstvlogo.jpeg",
    "icon":
        Icon(Icons.language_outlined, color: AppColors.primaryColor, size: 50),
    "name": "Tuma Nje ya Nchi",
    "badge": false
  },
  {
    "image": null,
    "secondary": "assets/images/dstvlogo.jpeg",
    "icon":
        Icon(Icons.handshake_outlined, color: AppColors.primaryColor, size: 50),
    "name": "Huduma za Kifedha",
    "badge": true
  },
];

List<Map> dukalaTigo = [
  {
    "name": "Nunua Salio",
    "icon": Icon(Icons.phone_android_outlined,
        color: AppColors.primaryColor, size: 50),
  },
  {
    "name": "Nunua Kifurushi",
    "icon": Icon(Icons.shopping_cart, color: AppColors.primaryColor, size: 50),
  },
  {
    "name": "Home Internet",
    "icon": Icon(Icons.wifi_rounded, color: AppColors.primaryColor, size: 50),
  },
  {
    "name": "Huduma ya Niwezeshe",
    "icon":
        Icon(Icons.handshake_outlined, color: AppColors.primaryColor, size: 50),
  },
  {
    "name": "jihudumie",
    "icon":
        Icon(Icons.add_box_outlined, color: AppColors.primaryColor, size: 50),
  }
];

List<Map> hudumaZaKifedha = [
  {"name": "visa", "icon": null, "image": "assets/images/visatigo.png"},
  {
    "name": "Mikopo",
    "icon":
        Icon(Icons.shopping_basket, color: AppColors.primaryColor, size: 50),
  },
  {
    "name": "Bima",
    "icon": Icon(Icons.groups, color: AppColors.primaryColor, size: 50),
    "image": null
  },
  {
    "name": "Akiba",
    "icon": Icon(Icons.takeout_dining, color: AppColors.primaryColor, size: 50),
    "image": null
  },
];

List<Map> dukalaTigoServices = [
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Tuma Pesa",
    "badge": false
  },
  {
    "image": "assets/images/uhuru na umoja.jpeg",
    "secondary": "assets/images/gepg.png",
    "name": "Kulipia Bili",
    "badge": false
  },
  {
    "image": "assets/images/mastaa shangwe.jpeg",
    "secondary": "assets/images/captain.jpeg",
    "name": "Benki",
    "badge": false
  },
  {
    "image": "assets/images/vodabima.jpeg",
    "secondary": "assets/images/mpwa.png",
    "name": "Kutoa Pesa",
    "badge": false
  },
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Malipo ya Serikali",
    "badge": false
  }
];

List<Map> tigopesa = [
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Namba ya Siri",
    "badge": false
  },
  {
    "image": "assets/images/uhuru na umoja.jpeg",
    "secondary": "assets/images/gepg.png",
    "name": "Taarifa elektroniki",
    "badge": false
  },
  {
    "image": "assets/images/mastaa shangwe.jpeg",
    "secondary": "assets/images/captain.jpeg",
    "name": "Rudisha Muamala",
    "badge": false
  },
  {
    "image": "assets/images/vodabima.jpeg",
    "secondary": "assets/images/mpwa.png",
    "name": "Kazi Zangu",
    "badge": false
  },
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Token za LUKU",
    "badge": false
  },
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Namba Zangu",
    "badge": false
  },
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Fungua Akaunti",
    "badge": false
  },
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Pata tokeni",
    "badge": false
  }
];

List<Map> mipangilio = [
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Vifaa vyangu",
    "badge": false
  },
  {
    "image": "assets/images/uhuru na umoja.jpeg",
    "secondary": "assets/images/gepg.png",
    "name": "Mipangilio wa",
    "badge": false
  },
  {
    "image": "assets/images/mastaa shangwe.jpeg",
    "secondary": "assets/images/captain.jpeg",
    "name": "Boresha programu",
    "badge": false
  },
];

List<Map> kituo = [
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Huduma kwa..",
    "badge": false
  },
  {
    "image": "assets/images/uhuru na umoja.jpeg",
    "secondary": "assets/images/gepg.png",
    "name": "Taarifa",
    "badge": false
  },
];

List<Map> alika = [
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Alika na Uzawadi..",
    "badge": false
  },
];
