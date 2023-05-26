import 'package:flutter/material.dart';
import 'package:fypproject/Screen/ComanContainer.dart';

class Genralissue extends StatefulWidget {
  const Genralissue({Key? key}) : super(key: key);

  @override
  State<Genralissue> createState() => _GenralissueState();
}

class _GenralissueState extends State<Genralissue> {
  @override
  List<bool> _selections = List.generate(2, (_) => false);
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.green,width: 0.5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 95.0,right:60,top: 15),
                child: Container(
                    child: Text("Genral Donation",style:
                    TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: "Inter",color: Colors.blue),)),
              ),
    SizedBox(height: 15,),
     Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20),
      child: SizedBox(
        height: 50,
        width: 250,
        child: TextFormField(
        decoration: InputDecoration(
        labelText: 'Enter Amount*',
        border: OutlineInputBorder(
        borderSide: BorderSide(
        color: Colors.blue,
        width: 2.0,
        ),
        ),
        ),
        ),
      ),
    ),
    SizedBox(height: 10,),
    Padding(
      padding: const EdgeInsets.only(left: 98,right: 48),
      child: SizedBox(
        height: 30,
        width: 300,
        child: ToggleButtons(
        children: <Widget>[
        Text('Sadqa'),
        Text('Zokat'),
        ],
        isSelected: _selections,
          fillColor: Color(0xFF1663be),
          selectedColor:Colors.white,
          selectedBorderColor:Color(0xFF1663be),
            onPressed: (int index) {
        setState(() {
        _selections[index] = !_selections[index];
        });
        },
        ),
      ),

    ),
    Padding(
      padding: const EdgeInsets.only(left: 78.0),
      child: SizedBox(

        width: 150,
        child: ElevatedButton(
        onPressed: () {
        // Do something when the button is pressed
        },
        style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF1663be)),
        ),
        child: Text('Button'),
        ),
      ),
    ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40,right: 20),
          child: Row(
            children: [
              Comancontainer(assetPath: ' assets/animal.jpg', title: 'Quarbani 2023',),
              SizedBox(width: 10,),
              Comancontainer(assetPath: ' assets/dwonload.jpg', title: 'Electricity bill',),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40,right: 20),
          child: Row(
            children: [
              Comancontainer(assetPath: ' assets/animal.jpg', title: 'Zokat',),
              SizedBox(width: 10,),
              Comancontainer(assetPath: ' assets/dwonload.jpg', title: 'welfare',),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 40,right: 20),
          child: Row(
            children: [
              Comancontainer(assetPath: ' assets/animal.jpg', title: 'Quarbani 2023',),
              SizedBox(width: 10,),
              Comancontainer(assetPath: ' assets/dwonload.jpg', title: 'Electricity bill',),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 40,right: 20),
          child: Row(
            children: [
              Comancontainer(assetPath: ' assets/animal.jpg', title: 'Quarbani 2023',),
              SizedBox(width: 10,),
              Comancontainer(assetPath: ' assets/dwonload.jpg', title: 'welfare',),
            ],
          ),
        ),
   ]
    );
  }
}
