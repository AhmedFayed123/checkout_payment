import 'package:checkout_app/core/widgets/custom_button.dart';
import 'package:checkout_app/features/checkout/presentation/views/success_view.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/payment_methods_list.dart';
import 'package:flutter/material.dart';

import 'custom_credit_card.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [

        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12.0, left: 16, right: 16),
              child: CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SuccessView(),
                      ),
                    );
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'Pay',
              ),
            ),
          ),
        )
      ],
    );
  }
}
