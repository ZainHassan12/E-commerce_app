import 'package:flutter/material.dart';

import '../authScreen/loginScreen.dart';
import '../string.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(const Duration(seconds: 3), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(background),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: screenHeight/2.5, bottom: 5),
                child: Image.asset(logo, width: screenWidth/1.5,),
              ),
              const Text(
                slogan,
                style: TextStyle(fontFamily: bold, fontSize: 11, color: golden,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

