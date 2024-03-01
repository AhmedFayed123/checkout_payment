import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utils/stripe_services.dart';
import '../models/payment_intent_input_model.dart';
import 'checkout_repo.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  final StripeServices stripeService = StripeServices();

  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);

      return right(null);
    } on StripeException catch (e) {
      return left(ServerFailure(
          errMessage: e.error.message ?? 'Oops there was an error'));
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
