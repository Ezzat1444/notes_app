
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, left: 16, bottom: 24),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                'Build yur career with tewfffjfn nvnf',
                style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.5), fontSize: 18),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.trash),
                  iconSize: 22,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24, bottom: 5),
            child: Text(
              'May21 ,2022',
              style: TextStyle(color: Colors.black.withValues(alpha: 0.6)),
            ),
          )
        ],
      ),
    );
  }
}
