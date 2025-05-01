import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/add_note_button_sheet.dart';
import 'package:notes_app/views/widgets/notesview_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          backgroundColor: kPrimaryColor,
          shape: CircleBorder(),
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: const NotesviewBody(),
      ),
    );
  }
}
