import 'package:call_me_maybe/config/styles.dart';
import 'package:call_me_maybe/models/resume_data.dart';
import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  final resumeData = ResumeData();

  Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: _itemList(),
              ),
            ),
          ),
        );
      }
    );
  }

  List<Widget> _itemList() {
    return [
      const SizedBox(height: 15),
      _item(resumeData.name, Styles.textLarge),
      _item(resumeData.email, Styles.textSmall),
      _item(resumeData.website, Styles.textSmall),
      const SizedBox(height: 10),
      ..._positions()
    ];
  }

  List<Widget> _positions() {
    List<Widget> positions = [];

    for (final position in resumeData.positions) {
      positions.add(_item(position.title, Styles.textDefault));
      positions.add(_item(position.company, Styles.textSmall));
      positions.add(_item(position.dates, Styles.textSmall));
      positions.add(_item(position.location, Styles.textSmall));
      positions.add(_item(position.description, Styles.textSmall));
      positions.add(const SizedBox(height: 10));
    }

    return positions;
  }

  Widget _item(String text, TextStyle style) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(text, style: style),
    );
  }
}