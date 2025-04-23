import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hint, this.maxlines = 1});

  final String hint;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 16),
      child: TextField(
        maxLines: maxlines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(18),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(kPrimaryColor),
            hintText: hint,
            hintStyle: TextStyle(
              color: kPrimaryColor,
            )),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
