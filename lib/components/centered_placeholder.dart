import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class CenteredPlaceholder extends StatelessWidget {
  final double padding;

  const CenteredPlaceholder({super.key, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: const Placeholder(),
        )
      );
  }
}