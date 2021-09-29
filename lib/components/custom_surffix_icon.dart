import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSurffix extends StatelessWidget {
  const CustomSurffix({
    Key key,
    @required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;
  //'assets/icons/Mail.svg',

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        20,
        20,
        20,
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: 18,
      ),
    );
  }
}
