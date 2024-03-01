import 'package:flutter/material.dart';

import '../utils/styles.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    leading: const Icon(
      Icons.arrow_back_outlined,
    ),
    centerTitle: true,
    title: Text(
      title??'',
      style: Styles.style24,
    ),
  );
}