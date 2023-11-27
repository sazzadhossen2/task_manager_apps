
import 'package:apps/screen/pinverification.dart';
import 'package:apps/widget/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forgotpasswordscreen extends StatefulWidget {
  const Forgotpasswordscreen({super.key});

  @override
  State<Forgotpasswordscreen> createState() => _ForgotpasswordscreenState();
}

class _ForgotpasswordscreenState extends State<Forgotpasswordscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Backgroundimage(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 80,),
                Text("Your Email adress",style: Theme.of(context).textTheme.titleLarge,),
                Text("A 6 digit OTP will be sent your email"),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email"
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Pinverification();
                      }));
                    }, child: Icon(Icons.arrow_circle_right))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have account?",style: TextStyle(fontSize: 16,color: Colors.black54),),
                    TextButton(onPressed: (){

                    }, child: Text("Sign in"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
