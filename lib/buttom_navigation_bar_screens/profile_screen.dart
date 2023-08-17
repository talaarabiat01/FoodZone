import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'My Profile',
          style: TextStyle(
              color: Colors.black
          ),
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF9B1A19)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/user_avatars.png",
                  height: 120,
                  width: 120,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Welcome ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ButtonCard(
                  title: 'My Information',
                  press: () {  },
                ),
                ButtonCard(
                  title: 'My Orders',
                  press: () {  },
                ),
                ButtonCard(
                  title: 'My Payment Cards',
                  press: () {  },
                ),
                ButtonCard(
                  title: 'My Address',
                  press: () {  },
                ),
                ButtonCard(
                  title: 'My Promocodes',
                  press: () {  },
                ),
                ButtonCard(
                  title: 'Share Promocodes',
                  press: () {  },
                ),
                ButtonCard(
                  title: 'FAQ',
                  press: () {  },
                ),
                ButtonCard(
                  title: 'Exit',
                  press: () {  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class ButtonCard extends StatelessWidget{
  const ButtonCard({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal:12 ,vertical:8 ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFF5F5F5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const Icon(Icons.arrow_forward_ios,
                color: Color(0xFF9B1A19),
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
