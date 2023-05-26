import 'package:flutter/material.dart';
import 'package:fypproject/Screen/Appbar.dart';
import 'package:fypproject/Screen/genralDonation.dart';
class WelfairScreen extends StatefulWidget {
  const WelfairScreen({Key? key}) : super(key: key);

  @override
  State<WelfairScreen> createState() => _WelfairScreenState();
}

class _WelfairScreenState extends State<WelfairScreen> {
  @override
  int currentStep=0;
  continueStep(){
    if (currentStep<4)
      setState(() {
        currentStep=currentStep+1;
      });

  }
  cancelStep(){
    if(currentStep>0)
      setState(() {
        currentStep=currentStep-1;
      });
  }
  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }
  Widget controlBuilders(context, details) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Genralissue(),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Appbar(),
            SizedBox(height: 15,),
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: Color(0xFFADD8E6),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(

                children: [
                  SizedBox(height: 17,width: 7,),
                  Text("Select",style: TextStyle(color: Colors.blue,fontSize:15 ),),
                  IconButton(
                    icon: Icon(Icons.arrow_drop_down,),
                    color: Colors.blue,
                    onPressed: () {
                      },
                  ),
                ],
              ),
            ),

            Container(
              height: 700,
              width: 375,
              child: Stepper(
                //Horizontal Impact
                // margin: const EdgeInsets.all(20), //vertical impact
                controlsBuilder: controlBuilders,
                type: StepperType.horizontal,
                onStepTapped: onStepTapped,
                onStepContinue: continueStep,
                onStepCancel: cancelStep,
                currentStep: currentStep, //0, 1, 2
                steps: [
                  Step(
                    title: const SizedBox(),
                    content: SizedBox(),
                  ),
                  Step(
                    title: const SizedBox(),
                    content: const SizedBox(),
                  ),
                  Step(
                    title: const SizedBox(),
                    content: const SizedBox(),

                  ),
                  Step(
                    title: const SizedBox(),
                    content: const SizedBox(),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
