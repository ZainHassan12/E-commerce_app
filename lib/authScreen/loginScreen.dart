import 'package:edens/authScreen/signupScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:edens/controller/google_signin.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../bottombar.dart';
import '../string.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GoogleSignInController _googleSignInController = Get.put(GoogleSignInController());

  final isPasswordVisible = true.obs;

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(background),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight*0.05,),
              Image.asset(logo, width: 150,),
              const SizedBox(height: 5,),
              const Text(
                "Login to $title",
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
                      Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Email",
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
                              prefixIcon: const Icon(Icons.email),
                              hintText: "Enter Email Address",
                              border: const OutlineInputBorder(),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: golden),
                              ),
                            ),
                            maxLines: 1,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(height: 15,)
                        ],
                      ),
                      Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Password",
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
                              controller: passwordController,
                              obscureText: isPasswordVisible.value,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.password),
                                suffixIcon: GestureDetector(
                                  onTap: (){
                                    isPasswordVisible.toggle();
                                  },
                                  child: isPasswordVisible.value?
                                  const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
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
                          const SizedBox(height: 15,)
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: golden,
                        ),
                        onPressed: () async {
                          var email = emailController.text;
                          var password = passwordController.text;

                          if(email.isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  content: Text("Enter Email Address", style: TextStyle(color: Colors.white),),
                                  backgroundColor: golden,
                                ));
                          }else if(password.isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  content: Text("Enter Password", style: TextStyle(color: Colors.white),),
                                  backgroundColor: golden,
                                ));
                          }else{

                            try{
                              await FirebaseAuth.instance.signInWithEmailAndPassword(
                                email: email,
                                password: password,
                              ).then((value) =>
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const BottomBar(),
                                    ),
                                  )
                              );
                            }catch (e){
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  content: Text(
                                    "Wrong Email or Password",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: golden,
                                ),
                              );
                            }
                          }
                        },
                        child: const Text(
                          "SignIn",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: const Text(
                            "Forget Password",
                            style: TextStyle(
                              color: golden,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth*0.1, right: screenWidth*0.1),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              width: 2,
                              color: golden,
                            ),
                          ),
                          onPressed: (){
                            _googleSignInController.signInWithGoogle();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(google, width: 25, height: 25,),
                              const SizedBox(width: 5,),
                              const Text(
                                "SignIn with Google",
                                style: TextStyle(
                                  color: golden,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style:TextStyle(
                              color: golden,
                              fontFamily: regular,
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUp(),
                                ),
                              );
                            },
                            child: const Text(
                              "Signup",
                              style:TextStyle(
                                color: golden,
                                fontFamily: bold,
                                decoration: TextDecoration.underline,
                                decorationColor: golden,
                                decorationThickness: 2,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
