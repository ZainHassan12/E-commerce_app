import 'package:flutter/material.dart';

import '../string.dart';

class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  TextEditingController streetController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Address Information'),
        toolbarHeight: screenHeight * 0.06,
        backgroundColor: golden,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                cursorColor: greyDark,
                controller: streetController,
                style: const TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Street Address",
                  labelStyle: const TextStyle(color: Colors.black, fontFamily: bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: golden),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                cursorColor: greyDark,
                controller: cityController,
                style: const TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "City",
                  labelStyle: const TextStyle(color: Colors.black, fontFamily: semibold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: golden),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                cursorColor: greyDark,
                controller: stateController,
                style: const TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "State",
                  labelStyle: const TextStyle(color: Colors.black, fontFamily: semibold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: golden),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                cursorColor: greyDark,
                controller: postalCodeController,
                style: const TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Postal Code",
                  labelStyle: const TextStyle(color: Colors.black, fontFamily: semibold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: golden),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                cursorColor: greyDark,
                controller: countryController,
                style: const TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Country",
                  labelStyle: const TextStyle(color: Colors.black, fontFamily: semibold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: golden),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: golden,
                  ),
                  onPressed: () {
                    // Process the address information (you can add validation here)
                    String street = streetController.text;
                    String city = cityController.text;
                    String state = stateController.text;
                    String postalCode = postalCodeController.text;
                    String country = countryController.text;

                    // You can use the collected address information as needed
                    print('Street Address: $street');
                    print('City: $city');
                    print('State: $state');
                    print('Postal Code: $postalCode');
                    print('Country: $country');
                  },
                  child: const Text('Save Address'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
