import 'package:flutter/material.dart';

import '../string.dart';

class CheckoutForm extends StatefulWidget {
  const CheckoutForm({super.key});

  @override
  State<CheckoutForm> createState() => _CheckoutFormState();
}

class _CheckoutFormState extends State<CheckoutForm> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Checkout",
          style: TextStyle(fontFamily: semibold),
        ),
        toolbarHeight: screenHeight * 0.06,
        backgroundColor: golden,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(height: 10),
          TextFormField(
            cursorColor: greyDark,
            style: const TextStyle(
              fontSize: 15,
            ),
            decoration: InputDecoration(
              labelText: "Name",
              labelStyle: const TextStyle(color: Colors.black, fontFamily: semibold),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: golden),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            keyboardType: TextInputType.name,
          ),
          const SizedBox(height: 10),
          TextFormField(
            cursorColor: greyDark,
            style: const TextStyle(
              fontSize: 15,
            ),
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle: const TextStyle(color: Colors.black, fontFamily: semibold),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: golden),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: golden,
            ),
            onPressed: () {
            },
            child: const Text(
              'Place Order',
              style: TextStyle(
                fontFamily: bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
