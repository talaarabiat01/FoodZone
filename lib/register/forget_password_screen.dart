import 'package:flutter/material.dart';

class ForgetPassScreen extends StatefulWidget {
  const ForgetPassScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPassScreen> createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
      ),
      Container(
        width: double.infinity,
        height: 350,
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
      Positioned(
        top: MediaQuery.of(context).size.height * 0.2,
        left: 50,
        child: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.73,
            height: MediaQuery.of(context).size.height * 0.73,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffB31312).withOpacity(0.5),
                  spreadRadius: 4,
                  blurRadius: 5,
                ),
              ],
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.02,
              left: MediaQuery.of(context).size.width * 0.18,
              child: Text(
                "Forget Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.15,
              left: MediaQuery.of(context).size.width * 0.05,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                    "Enter your email address to reset your \n password instruction",
                textAlign: TextAlign.center,),
              )),
          Positioned(
            height: 100,
            width: 250,
            left: 20,
            top: MediaQuery.of(context).size.height * 0.22,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(width: 1, color: Colors.black),
                ),
                enabled: true,
                fillColor: Colors.white,
                filled: true,
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                labelText: "Email",
                labelStyle: const TextStyle(color: Colors.black12),
                // errorText: usernameError.isNotEmpty ? usernameErorr : null,
              ),
            ),
          ),

          Positioned(
              left: 22,
              top: MediaQuery.of(context).size.height * 0.33,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffB31312),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    minimumSize: const Size(243, 43),
                    // side: BorderSide(color: Colors.black,width: 2)
                  ),
                  child: Text(
                    "Send Email ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ))),


        ]),
      )
    ]));
  }
}
