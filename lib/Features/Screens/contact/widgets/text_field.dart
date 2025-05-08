import 'package:flutter/material.dart';
import 'package:portfolio/Common/colors.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool needExpand;

  // Constructor with required parameters
  const CustomTextFormField({
    Key? key,
    required this.needExpand,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if(value!.isEmpty){
          return "This Field Is Required";
        }
      },
      maxLines: widget.needExpand ? 8:null,
      controller: widget.controller,
      focusNode: _focusNode,
      style: TextStyle(color: whiteColor), // Set the text color to white
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: greenColor, // Using the color defined in your colors file
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: whiteColor, // Using the color defined in your colors file
            width: 2.0,
          ),
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(color: whiteColor), // Set the hint text color to white
        labelText: widget.hintText,
        labelStyle: TextStyle(color: whiteColor), // Set the label text color to white
      ),
    );
  }
}
