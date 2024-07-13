import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StreetRight extends StatelessWidget {
  const StreetRight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: SvgPicture.asset(
        'assets/images/street_right.svg',
      ),
    );
  }
}
