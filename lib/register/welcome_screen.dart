import 'package:flutter/material.dart';
import 'package:food_zoon/register/logIn_screen.dart';
import 'package:food_zoon/register/signUp_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 580,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffB31312), Colors.black],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(160),
                    bottomRight: Radius.circular(160),
                  )),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  minimumSize: const Size(243, 43),
                  side: BorderSide(color: Colors.black,width: 2)
                ),
                child: Text("Sign Up",style:
                TextStyle(color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold),)
            ),
            SizedBox(height: 15,),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LogInScreen()));

                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffB31312),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    minimumSize: const Size(243, 43),
                    // side: BorderSide(color: Colors.black,width: 2)
                ),
                child: Text("Log In ",style:
                TextStyle(color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),)
            )
          ],
        ),
      ),
    );
  }
}
