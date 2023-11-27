
import 'package:apps/controller/auth_controller.dart';
import 'package:apps/screen/login_screen.dart';
import 'package:apps/screen2/edit_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profilesummary extends StatelessWidget {
  Profilesummary({super.key,  this.enabletap=true});
  final bool enabletap;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: (){
        if(enabletap) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Editprofilescreen();
          }));
        }},
      leading: CircleAvatar(
        backgroundImage: AssetImage(""),
      ),
      title: Text(fullname),
      subtitle: Text("sazzadhossen5213@gmail.com"),
      trailing: IconButton(
        onPressed: ()async{
          await Authcontroller.clearAuth();
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Loginscreen()), (route) => false);

        }, icon:Icon( Icons.logout),
      ),
      tileColor: Colors.green,
    );
  }
  String get fullname{
return ("${Authcontroller.user?.firstName??""} ${Authcontroller.user?.lastName??""}");
  }
}
