
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/profile_summary.dart';
import '../widget/summary_card.dart';
import '../widget/task_card.dart';

class Progressscreen extends StatefulWidget {
  const Progressscreen({super.key});

  @override
  State<Progressscreen> createState() => _ProgressscreenState();
}

class _ProgressscreenState extends State<Progressscreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Profilesummary(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Summarycard(count: "9", summary: "New"),
                  Summarycard(count: "9", summary: "in progress"),
                  Summarycard(count: "9", summary: "Completed"),
                  Summarycard(count: "9", summary: "Cancelled")
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context,index){
                //    return Taskcard();
                  }),
            )
          ],
        ),
      ),
    );
  }


}
