import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/controllers/CounterController.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Click counter: ${_counterController.counter.value}"),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: () {
            Get.back();
          }, child: Text("Open"))
        ],
      ),
    );
  }
}
