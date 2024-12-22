import 'package:flutter/material.dart';

class CustomTextFields extends StatelessWidget {
  const CustomTextFields({
    super.key,
     this.controller,
    required this.text,
    this.onChanged,
    this.inputType,
 
  });

  final TextEditingController? controller;
  final String text;
  final ValueChanged<String>? onChanged; 
  final TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
              onChanged: onChanged,
              controller:controller,
              keyboardType: inputType,
              decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromARGB(255, 237, 236, 236),
              enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.transparent)
              ),
              focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              
                            ),
              hintText: text,
              hintStyle: const TextStyle(color: Colors.grey,fontSize: 15,),
          
       ),
      ),
    );
  }
}
