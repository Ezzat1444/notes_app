import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notesview_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: const Color.fromARGB(255, 35, 209, 232),
        shape: CircleBorder(),
        child: const Icon(Icons.add,color: Colors.black,),),
      body: const NotesviewBody(),
    );
  }
}