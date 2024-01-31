import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edens/bottombar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import '../string.dart';
import 'loginScreen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController repassController = TextEditingController();

  final isPasswordVisible = true.obs;
  final isRepassVisible = true.obs;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passController.dispose();
    repassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(background),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(logo, width: 150,),
                const SizedBox(height: 5,),
                const Text(
                  "Join $title Now",
                  style: TextStyle(
                    color: golden,
                    fontFamily: semibold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  width: screenWidth * 0.78,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: golden,
                        blurRadius: 10,
                        offset: Offset(2, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Name',
                            style: TextStyle(
                              fontFamily: semibold,
                              fontSize: 15,
                              color: golden,
                            ),
                          ),
                        ),
                        TextField(
                          style: const TextStyle(color: Colors.black),
                          controller: nameController,
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Enter Your Name',
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: golden),
                            ),
                          ),
                          keyboardType: TextInputType.name,
                          maxLines: 1,
                        ),
                        const SizedBox(height: 15,),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Email Address',
                            style: TextStyle(
                              fontFamily: semibold,
                              fontSize: 15,
                              color: golden,
                            ),
                          ),
                        ),
                        TextField(
                          style: const TextStyle(color: Colors.black),
                          controller: emailController,
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Enter Your Email',
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: golden),
                            ),
                          ),
                          maxLines: 1,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 15,),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontFamily: semibold,
                              fontSize: 15,
                              color: golden,
                            ),
                          ),
                        ),
                        Obx(
                              ()=> TextField(
                            style: const TextStyle(color: Colors.black),
                            controller: passController,
                            obscureText: isPasswordVisible.value,
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  isPasswordVisible.toggle();
                                },
                                child: isPasswordVisible.value
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility),
                              ),
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Enter Password',
                              border: const OutlineInputBorder(),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: golden),
                              ),
                            ),
                            maxLines: 1,
                          ),
                        ),
                        const SizedBox(height: 15,),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Re-Type Password',
                            style: TextStyle(
                              fontFamily: semibold,
                              fontSize: 15,
                              color: golden,
                            ),
                          ),
                        ),
                        Obx(
                              ()=> TextField(
                            style: const TextStyle(color: Colors.black),
                            controller: repassController,
                            obscureText: isRepassVisible.value,
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  isRepassVisible.toggle();
                                },
                                child: isRepassVisible.value
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility),
                              ),
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Re-type Password',
                              border: const OutlineInputBorder(),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: golden),
                              ),
                            ),
                            maxLines: 1,
                          ),
                        ),
                        const SizedBox(height: 15,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: golden,
                          ),
                          onPressed: () async {
                            var name = nameController.text;
                            var email = emailController.text;
                            var pass = passController.text;
                            var repass = repassController.text;

                            if (name.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  content: Text(
                                    "Enter Your Name",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: golden,
                                ),
                              );
                            } else if (email.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  content: Text(
                                    "Enter Your Email Address",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: golden,
                                ),
                              );
                            } else if (pass.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  content: Text(
                                    "Enter Password",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: golden,
                                ),
                              );
                            } else if (repass.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  content: Text(
                                    "Re-Enter Password",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: golden,
                                ),
                              );
                            } else if (pass != repass) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  content: Text(
                                    "Re-Enter Correct Password",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: golden,
                                ),
                              );
                            } else {
                              EasyLoading.show(status: "Please wait ...");
                              try {
                                await FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                  email: email,
                                  password: pass,
                                )
                                    .then((userCredential) async {
                                  // Send email verification
                                  await userCredential.user?.sendEmailVerification();

                                  // Check if email is verified
                                  if (userCredential.user?.emailVerified ?? false) {
                                    // Add user data to Firestore
                                    await FirebaseFirestore.instance
                                        .collection('user')
                                        .doc(userCredential.user?.uid)
                                        .set({
                                      'name': name,
                                      'email': email,
                                      'password': pass,
                                      'createdOn': DateTime.now(),
                                    });

                                    // Redirect to the appropriate screen
                                    if (userCredential.user?.emailVerified ?? false) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const BottomBar(),
                                        ),
                                      );
                                    } else {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const VerifyEmail(),
                                        ),
                                      );
                                    }

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        behavior: SnackBarBehavior.floating,
                                        content: Text(
                                          "Account created successfully. Please check your email for verification.",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        backgroundColor: golden,
                                      ),
                                    );
                                  } else {
                                    // Delete the created user as email is not verified
                                    await userCredential.user?.delete();
                                  }
                                });
                              } catch (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    content: Text(
                                      e.toString(),
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                    backgroundColor: golden,
                                  ),
                                );
                              }

                              EasyLoading.dismiss();
                            }
                          },
                          child: const Text(
                            "Signup",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              width: 2,
                              color: golden,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Back To Login",
                            style: TextStyle(
                              color: golden,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const Text(
              'Verify your email address',
              style: TextStyle(
                color: Colors.black, // Changed text color to black for better visibility
                fontFamily: 'semibold', // Updated to a string 'semibold' instead of semibold variable
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber, // Changed button color to amber for better visibility
              ),
              onPressed: () async {
                User? user = FirebaseAuth.instance.currentUser;

                if (user != null) {
                  try {
                    await user.sendEmailVerification();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        behavior: SnackBarBehavior.floating,
                        content: Text(
                          "Verification email has been resent.",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.green,
                      ),
                    );
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        behavior: SnackBarBehavior.floating,
                        content: Text(
                          "Failed to resend verification email. ${e.toString()}",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      behavior: SnackBarBehavior.floating,
                      content: Text(
                        "User not found. Please log in again.",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: const Text(
                'Resend Verification Email',
                style: TextStyle(
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
