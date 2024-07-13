import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  const Count({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "3",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Text(
            " / 108개",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        )
      ],
    );
  }
}
