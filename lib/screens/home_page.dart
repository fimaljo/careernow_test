import 'package:careernow/helper/devconstants.dart';
import 'package:careernow/widgets/common_input_field.dart';
import 'package:careernow/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

import '../helper/fire_store_service.dart';
import '../helper/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  _addNote() async {
    String res = await FirestoreService().addNote(_controller.text);
    if (res == "success") {
      Utils.showSnackBar("created successfully");
    }
  }

  void _post() {
    DevConstants.insert(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonInputField(
            hintText: "Enter Your Note",
            width: 200,
            nameController: _controller,
          ),
          RoundedButton(
              text: "Submit",
              onPressed: () {
                _addNote();
                _post();
              },
              width: 100)
        ],
      ),
    ));
  }
}
