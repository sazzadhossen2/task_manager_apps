
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/profile_summary.dart';

class Editprofilescreen extends StatefulWidget {
  const Editprofilescreen({super.key});

  @override
  State<Editprofilescreen> createState() => _EditprofilescreenState();
}

class _EditprofilescreenState extends State<Editprofilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Profilesummary(enabletap: false,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 80,),

                    Text("Update profile",style: Theme.of(context).textTheme.titleLarge,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.only(topLeft:Radius.circular(8),bottomLeft: Radius.circular(8))
                                ),
                                alignment: Alignment.center,
                                child: Text("Photo"),
                              )),
                          Expanded(
                              flex: 3,
                              child: Container()),
                        ],
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Emai"
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "First name",
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Last name",
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Mobile",
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_circle_right_rounded)))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
