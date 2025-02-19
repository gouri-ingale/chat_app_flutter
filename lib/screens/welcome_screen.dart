import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/componets/rounded_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>  with SingleTickerProviderStateMixin{
   late AnimationController controller;
   late Animation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        duration: Duration(seconds: 1),
        vsync: this);
    controller.forward();

    // animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
     animation = ColorTween(begin: Colors.blueGrey , end: Colors.white).animate(controller);
    controller.addListener((){
      setState(() {});
     // print(animation.value);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Flash Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Rounded_Button(
              text: 'Login',
              color: Colors.lightBlueAccent,
              onPressed: (){
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            Rounded_Button(
              text: 'Register',
              color: Colors.blueAccent,
              onPressed: (){
            Navigator.pushNamed(context, RegistrationScreen.id);
            },
            ),
          ],
        ),
      ),
    );
  }
}

