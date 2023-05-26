import 'package:flutter/material.dart';
class Comancontainer extends StatelessWidget {
  const Comancontainer({Key? key, required this.assetPath, required this.title}) : super(key: key);
  final String assetPath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Row(
           children: [
             Container(
               height: 70,
               width: 100,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image.asset(
                     assetPath,

                   ),
              SizedBox(width: 10,),
                   Text(
                     title,
                     textAlign: TextAlign.center,
                     style: TextStyle(
                         fontFamily: "Inter",
                         fontSize: 12,
                         fontWeight: FontWeight.w600,
                         color: Colors.blue),
                   ),
                 ],
               ),
             ),

           ],
         ),
       ],
     ),
    );
  }
}
