import 'package:edens/authScreen/loginScreen.dart';
import 'package:edens/screen/paymentMethod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import'package:flutter/material.dart';
import '../string.dart';
import 'address_info.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "User Profile",
          style: TextStyle(fontFamily: semibold, color: Colors.white,),
        ),
        toolbarHeight: screenHeight * 0.06,
        backgroundColor: golden,
        leading: Container(),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                userbg,
                width: screenWidth,
                height: screenHeight * 0.2,
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.only(left: screenWidth * 0.03, top: screenHeight*0.09),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: screenWidth * 0.1,
                      backgroundColor:golden,
                      backgroundImage: const NetworkImage(
                        'https://images.unsplash.com/photo-1599566150163-29194dcaad36?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D',
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Text(
                      'Zain Hassan',
                      style: TextStyle(
                        fontFamily: bold,
                        fontSize: screenHeight * 0.03,
                        color: golden,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: screenHeight*0.05, left: screenWidth*0.035),
                width: screenWidth * 0.3,
                height: screenHeight*0.05,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: golden,
                  ),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: golden,
                      blurRadius: 10,
                      offset: Offset(2, 2),
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: const Center(
                  child: Text(
                    "Orders",
                    style: TextStyle(
                        fontFamily: bold,
                        color: greyDark
                    ),
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddressScreen(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: screenHeight*0.05,),
                  width: screenWidth * 0.3,
                  height: screenHeight*0.05,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: golden,
                    ),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: golden,
                        blurRadius: 10,
                        offset: Offset(2, 2),
                      ),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: const Center(
                    child: Text(
                      "Saved Address",
                      style: TextStyle(
                          fontFamily: bold,
                          color: greyDark
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentScreen(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: screenHeight*0.05, right: screenWidth*0.035),
                  width: screenWidth * 0.3,
                  height: screenHeight*0.05,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: golden,
                    ),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: golden,
                        blurRadius: 10,
                        offset: Offset(2, 2),
                      ),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: const Center(
                    child: Text(
                      "Payment Method",
                      style: TextStyle(
                          fontFamily: bold,
                          color: greyDark
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            margin: EdgeInsets.only(top: screenHeight*0.035),
            width: screenWidth,
            height: screenHeight*0.5,
            decoration: BoxDecoration(
              color: Colors.white70,
              boxShadow: [
                BoxShadow(
                  color: golden.withOpacity(0.8),
                  blurRadius: 10,
                  offset: const Offset(2, 2),
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(3)),
            ),
            child: Column(
              children: [
                const ListTile(
                  title: Text('Full Name'),
                  subtitle: Text('John Doe'),
                ),
                const ListTile(
                  title: Text('Email'),
                  subtitle: Text('johndoe@example.com'),
                ),
                const ListTile(
                  title: Text('Phone Number'),
                  subtitle: Text('+1 (123) 456-7890'),
                ),

                SizedBox(
                  height: screenHeight*0.05,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: golden,
                  ),
                  onPressed: () {
                  },
                  child: const Text('Edit Info', style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(height: 10,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Logout"),
                          content: const Text("Are you sure you want to logout?",),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("Cancel", style: TextStyle(color: golden),),
                            ),
                            TextButton(
                              onPressed: () {
                                FirebaseAuth.instance.signOut().then((value) =>
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const LoginScreen(),
                                      ),
                                    )
                                );
                              },
                              child: const Text("Logout", style: TextStyle(color: golden),),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Logout', style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
