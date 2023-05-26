
import 'package:flutter/material.dart';

class CommonInputField extends StatelessWidget {
  const CommonInputField({
    Key? key,
     required this.nameController,
    required this.hintText,
    required this.width,
   
  }) : super(key: key);
  final String hintText;
  final TextEditingController nameController;
 
  final double width;
  @override
  Widget build(BuildContext context) {
   
    return Container(
    
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.grey, width: 0.5)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: nameController,
          decoration: InputDecoration(
          
            hintText: hintText,
            border: InputBorder.none,
          ),
        
        ),
      ),
    );
  }
}
