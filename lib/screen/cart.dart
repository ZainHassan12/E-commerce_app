import 'package:flutter/material.dart';

import '../string.dart';
import 'checkout_form.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cart",
          style: TextStyle(fontFamily: semibold, color: Colors.white,),
        ),
        toolbarHeight: screenHeight * 0.06,
        backgroundColor: golden,
        leading: Container(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.75,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: golden,
                          blurRadius: 10,
                          offset: Offset(2, 2),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? newValue) {
                            setState(() {
                              isChecked = newValue ?? false;
                            });
                          },
                          checkColor: Colors.white,
                          activeColor: golden,
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          margin: const EdgeInsets.only(right: 15),
                          child: Image.asset("assets/images/bed1.jpeg"),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Bed",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: bold,
                                color: greyDark,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "\$150",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: bold,
                                color: greyDark,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 10),
                                  child: const Text(
                                    "01",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: semibold,
                                      color: golden,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Add more items as needed
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckoutForm(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: golden
              ),
              child: const Text(
                "Checkout",
                style: TextStyle(
                  fontFamily: semibold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
