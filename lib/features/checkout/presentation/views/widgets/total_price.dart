import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.value});

  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Total',
          style: Styles.style25,
        ),
        const Spacer(),
        Text(
          value,
          style: Styles.style25,
        ),
      ],
    );
  }
}
