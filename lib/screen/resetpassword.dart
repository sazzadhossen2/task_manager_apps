
import 'package:apps/screen/login_screen.dart';
import 'package:apps/screen/pinverification.dart';
import 'package:apps/widget/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resetpasswordscreen extends StatelessWidget {
  const Resetpasswordscreen({super.key});

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
                Text("Set Password",style: Theme.of(context).textTheme.titleLarge,),
                Text("Minimum Password length should be more the 8 letters"),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password"
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Confirm Password"
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){

                      // Navigator.push(context, MaterialPageRoute(builder: (context){
                      //   return Pinverification();
                      // }));
                    }, child:Text("Confirm"))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have account?",style: TextStyle(fontSize: 16,color: Colors.black54),),
                    TextButton(onPressed: (){
Navigator.push(context,MaterialPageRoute(builder: (context){
  return Loginscreen();
}),);(route)=>false;
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