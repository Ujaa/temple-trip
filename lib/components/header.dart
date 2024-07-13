import 'package:app/components/count.dart';
import 'package:app/components/progress_bar.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Count(),
        Text(
          "보리심의 여정",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 20,
        ),
        const ProgressBar(.4),
        const SizedBox(
          height: 40,
        )
      ],
    );
  }
}
