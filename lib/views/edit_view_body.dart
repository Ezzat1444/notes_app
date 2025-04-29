import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';
import 'package:notes_app/views/widgets/custom_textfield.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Row(
              children: [
                Text(
                  'Edit Note',
                  style: TextStyle(fontSize: 26),
                ),
                Spacer(),
                CustomSearchIcon(
                  icon: Icon(Icons.check),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          CustomTextfield(
            hint: 'Tittle',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextfield(
            hint: 'Content',
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
