import 'package:checkout_app/features/checkout/presentation/views/widgets/payment_details_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodsList extends StatefulWidget {
  const PaymentMethodsList({super.key, required this.updatePaymentMethod});


  final Function({required int index}) updatePaymentMethod;
  @override
  State<PaymentMethodsList> createState() => _PaymentMethodsListState();
}

class _PaymentMethodsListState extends State<PaymentMethodsList> {
  final List<String> paymentMethodsItems = const [
    'assets/images/cart.png',
    'assets/images/paypal.png'
  ];

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          itemCount: paymentMethodsItems.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                  widget.updatePaymentMethod(index: activeIndex);
                },
                child: PaymentDetailsMethodItem(
                  isActive: activeIndex == index,
                  image: paymentMethodsItems[index],
                ),
              ),
            );
          }),
    );
  }
}