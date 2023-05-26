import 'package:flutter/material.dart';
class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 375,
      decoration: BoxDecoration(
        color:Color(0xFF1663be),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            SizedBox(width: 6,),
            IconButton(
              icon: Icon(Icons.home_filled,size: 25,),
              color: Colors.white,

              onPressed: () {
              },
            ),
            SizedBox(width: 85,),
            Text("Donations",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18,fontFamily: "Inter"),),
            SizedBox(width: 85,),
            IconButton(
              icon: Icon(Icons.add_shopping_cart_rounded,size: 25,),
              color: Colors.white,
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}
