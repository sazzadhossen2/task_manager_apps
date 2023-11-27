
import 'package:apps/data_network_coller/model_api/newtask.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Taskcard extends StatelessWidget {
   Taskcard({
    super.key, required this.task,
  });
final  Task task;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(task.title??"",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
          Text(task.description??""),
          Text("Date: ${task.createdDate}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Chip(label: Text(task.status??"new",style: TextStyle(fontWeight: FontWeight.bold,),),backgroundColor: Colors.green,),
              Wrap(
                children: [
                  Icon(Icons.delete_forever),
                  Icon(Icons.edit)
                ],
              )

            ],
          ),

        ],
      ),
    );
  }
}
