
import 'package:apps/screen/resetpassword.dart';
import 'package:apps/widget/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Pinverification extends StatefulWidget {
  const Pinverification({super.key});

  @override
  State<Pinverification> createState() => _PinverificationState();
}

class _PinverificationState extends State<Pinverification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Backgroundimage(
        child:SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 80,),
            Text("Pin Varification",style: Theme.of(context).textTheme.titleLarge,),
                SizedBox(height: 20,),
                Text("A 6 digit OTP sent your enail"),
                SizedBox(height: 48,),
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    activeColor: Colors.green,
                    selectedFillColor: Colors.white,
                    inactiveFillColor: Colors.white
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  backgroundColor: Colors.blue.shade50,
                  enableActiveFill: true,


                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);

                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    return true;
                  },
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Resetpasswordscreen();
                      }));
                    }, child: Text("Verified"))),
SizedBox(height: 48,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an account",style: TextStyle(fontSize: 16,color: Colors.black54),),
                    TextButton(onPressed: (){}, child:Text("Sign in"))
                  ],
                )
            ],),
          ),
        ),
      ),
    );
  }
}
