
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_colers.dart';

class tachDivider extends StatelessWidget {
  const tachDivider({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      color: solidColors.dividerColer,
      indent: size.width/6,
      endIndent: size.width/6,

    );
  }
}
