

import 'package:checkout_app/features/checkout/presentation/views/widgets/success_card.dart';
import 'package:flutter/material.dart';

import 'custom_check_icon.dart';
import 'custom_dashed_line.dart';

class SuccessViewBody extends StatelessWidget {
  const SuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
           const SuccessCard(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            left: 20 + 8,
            right: 20 + 8,
            child:  const CustomDashedLine(),
          ),
          Positioned(
              left: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child:  const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              right: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child:  const CircleAvatar(
                backgroundColor: Colors.white,
              )),
           const Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: CustomCheckIcon(),
          ),
        ],
      ),
    );
  }
}
