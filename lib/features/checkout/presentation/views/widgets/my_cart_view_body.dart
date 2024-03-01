import 'package:checkout_app/features/checkout/presentation/manager/payment/payment_cubit.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/payment_method_bottom_sheet.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../data/repos/checkout_repo_impl.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: Image.asset('assets/images/Group.png'),
          ),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: r'$42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Discount',
            value: r'$0',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shipping',
            value: r'$8',
          ),
          const Divider(
            height: 34,
            thickness: 2,
            color: Color(0xffC7C7C7),
          ),
          const TotalPrice(value: r'$50.97'),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                builder: (context) =>BlocProvider(
                    create: (BuildContext context) =>PaymentCubit(CheckoutRepoImpl()),
                child: const PaymentMethodsBottomSheet()),
              );
            },
            text: 'Complete Payment',
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
