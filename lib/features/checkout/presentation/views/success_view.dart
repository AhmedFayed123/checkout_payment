import 'package:checkout_app/features/checkout/presentation/views/widgets/success_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/appbar.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: const SuccessViewBody(),
      ),
    );
  }
}
