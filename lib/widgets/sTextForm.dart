import 'package:flutter/material.dart';

class sTextFormField extends StatelessWidget {
  sTextFormField({
    this.obscureText = false,
    @required this.keyboardType,
    @required this.letterSpacing,
    @required this.color,
    @required this.fontSize,
    @required this.fontWeight,
    this.helperText,
    @required this.labelText,
    this.validator,
    this.onSaved,
  });

  final bool obscureText;
  final TextInputType keyboardType;
  final double letterSpacing;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String helperText;
  final String labelText;
  final Function validator;
  final Function onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: TextStyle(
        letterSpacing: letterSpacing,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      decoration: InputDecoration(
        helperText: helperText,
        helperStyle: TextStyle(
          fontSize: 17.0,
          color: Colors.black,
        ),
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
      validator: validator,
      onSaved: onSaved,
    );
  }
}
