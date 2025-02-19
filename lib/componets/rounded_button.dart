import 'package:flutter/material.dart';
class Rounded_Button extends StatelessWidget {
  Rounded_Button({required this.text, required this.color , required this.onPressed});
  final String text;
  final Color color;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          // onPressed: onpressed,() {
          //   //Go to registration screen.
          //   // Navigator.push(context,
          //   //     MaterialPageRoute(builder: (context) {
          //   //   return RegistrationScreen();
          //   // }));
          //
          // },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
