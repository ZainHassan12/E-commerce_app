import 'package:flutter/material.dart';

import '../string.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedPaymentMethod = '';

  List<String> paymentMethods = [
    'Credit Card',
    'Debit Card',
    'PayPal',
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Payment Method'),
        toolbarHeight: screenHeight * 0.06,
        backgroundColor: golden,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Choose a Payment Method',
              style: TextStyle(fontSize: 20, fontFamily: bold),
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: paymentMethods.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(paymentMethods[index], style: const TextStyle(fontFamily: semibold),),
                  trailing: Radio(
                    activeColor: golden,
                    value: paymentMethods[index],
                    groupValue: selectedPaymentMethod,
                    onChanged: (value) {
                      setState(() {
                        selectedPaymentMethod = value.toString();
                      });
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: golden,
                ),
                onPressed: () {
                  if (selectedPaymentMethod.isNotEmpty) {
                    print('Selected Payment Method: $selectedPaymentMethod');
                  } else {
                    print('Please select a payment method');
                  }
                },
                child: const Text('Proceed to Payment'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
