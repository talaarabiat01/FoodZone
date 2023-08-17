import 'package:flutter/material.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('My Location') ,
       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
       ],
     ),

      body: Stack(
       children:[ Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset("assets/images/img.png"),

        ),
         AlertDialog(
           title: Text("Your Location",style: TextStyle(color: Colors.grey),),
           content: Row(
             children: [
               Icon(Icons.location_on),
               SizedBox(width: 10,),
               Text("Amman , jordan")
             ],
           ),
           actions: [ElevatedButton(
             onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffB31312),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)),
          minimumSize: const Size(243, 43),
          // side: BorderSide(color: Colors.black,width: 2)
        ),
        child: Text(
          "Set Location" ,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        )
    )

    ],
         )
      ]
      ),

    );
  }
}