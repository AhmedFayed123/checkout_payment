import 'package:checkout_app/features/checkout/presentation/views/widgets/my_cart_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/appbar.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(title: 'My Cart'),
        body: const MyCartViewBody(),
      ),
    );
  }


}
