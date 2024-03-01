import 'dart:developer';

import 'package:checkout_app/features/checkout/presentation/manager/payment/payment_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/payment_intent_input_model.dart';
import '../../../data/repos/checkout_repo.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutRepo) : super(PaymentInitial());
  final CheckoutRepo checkoutRepo;

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(PaymentLoading());

    var data = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);

    data.fold(
          (l) => emit(PaymentFailure(l.errMessage)),
          (r) => emit(
        PaymentSuccess(),
      ),
    );
  }

  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }

}
