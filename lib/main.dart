import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_integration/paypal/paypal_payment.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey =
      "pk_test_51NMT1NJ81KNyY6h3kYVyIr0AgCwT4lH73Zsg2KSl0DEJ1nyxBII8FVACQJxK3igyh52mYXGtIwT66o2dk1Rs5Cfc00UyNDslvf";

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Paypal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),  
      home: const PayPalIntegration(),
    );
  }
}
