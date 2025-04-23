import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 32,),
          CustomTextfield(
            hint: 'Tittle',
          ),
            SizedBox(height: 16,),
            CustomTextfield(
            hint: 'Content',
            maxlines: 5,
          ),
            SizedBox(height: 60,),
            CustomButton(),
            SizedBox(height: 16,),
        ],
      ),
    );
  }
}
