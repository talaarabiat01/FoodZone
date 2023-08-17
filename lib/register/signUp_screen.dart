import 'package:flutter/material.dart';
import 'package:food_zoon/buttom_navigation_bar_screens/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
            child: Stack(
              children: [
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
                    left: MediaQuery.of(context).size.width * 0.27,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Positioned(
                  height: 100,
                  width: 250,
                  left: 20,
                  top: MediaQuery.of(context).size.height * 0.09,
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
                        Icons.person,
                        color: Colors.black,
                      ),
                      labelText: "Username",
                      labelStyle: const TextStyle(color: Colors.black12),
                      // errorText: usernameError.isNotEmpty ? usernameErorr : null,
                    ),
                  ),
                ),
                Positioned(
                  height: 100,
                  width: 250,
                  left: 20,
                  top: MediaQuery.of(context).size.height * 0.19,
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
                  height: 100,
                  width: 250,
                  left: 20,
                  top: MediaQuery.of(context).size.height * 0.29,
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
                        Icons.key,
                        color: Colors.black,
                      ),
                      labelText: "Password",
                      labelStyle: const TextStyle(color: Colors.black12),
                      // errorText: usernameError.isNotEmpty ? usernameErorr : null,
                    ),
                  ),
                ),
                Positioned(
                  height: 100,
                  width: 250,
                  left: 20,
                  top: MediaQuery.of(context).size.height * 0.39,
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
                        Icons.key,
                        color: Colors.black,
                      ),
                      labelText: "Confirm Password",
                      labelStyle: const TextStyle(color: Colors.black12),
                      // errorText: usernameError.isNotEmpty ? usernameErorr : null,
                    ),
                  ),
                ),
                Positioned(
                    left: 23,
                    top: MediaQuery.of(context).size.height * 0.49,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffB31312),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          minimumSize: const Size(243, 43),
                          // side: BorderSide(color: Colors.black,width: 2)
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ))),
                Positioned(
                  height: 2,
                  width: 210,
                  left: 40,
                  top: MediaQuery.of(context).size.height * 0.6,
                  child: Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                Positioned(
                    left: 80,
                    top: MediaQuery.of(context).size.height * 0.62,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/facebook.png"))),
                Positioned(
                    left: 160,
                    top: MediaQuery.of(context).size.height * 0.62,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/google.png")))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
