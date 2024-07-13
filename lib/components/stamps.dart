import 'package:app/components/street_left.dart';
import 'package:app/components/street_right.dart';
import 'package:app/models/stamp_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class Stamps extends StatefulWidget {
  const Stamps({
    super.key,
  });

  @override
  State<Stamps> createState() => _StampsState();
}

class _StampsState extends State<Stamps> {
  int _index = 0;
  List<StampModel> stampList = [
    StampModel(
        id: "id",
        temple: "temple",
        dateTime: DateTime.now(),
        comment: "comment",
        stamp: "stamp"),
    StampModel(
        id: "id",
        temple: "temple",
        dateTime: DateTime.now(),
        comment: "comment",
        stamp: "stamp")
  ];

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      children: List.generate(
        108 + 108 ~/ 5,
        getContainer,
      ),
    );
  }

  Widget getContainer(int index) {
    if (index % 12 == 5) {
      return const StreetRight();
    } else if (index % 12 == 9) {
      return const StreetLeft();
    } else {
      _index++;
      return Stamp(
        index: _index,
        hasStamp: stampList.length >= _index,
        current: stampList.length + 1 == _index,
      );
    }
  }
}

class Stamp extends StatelessWidget {
  final int index;
  final bool hasStamp;
  final bool current;

  const Stamp({
    super.key,
    required this.index,
    required this.hasStamp,
    required this.current,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (current) {
          showDialog(
            context: context,
            barrierDismissible: true,
            builder: ((context) {
              return AlertDialog(
                content: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2024.06.11",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        Text(
                          index.toString().padLeft(3, "0"),
                          style: Theme.of(context).textTheme.labelMedium,
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                    Text(
                      "화00사지",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const TextField(),
                  ],
                ),
                actions: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(); //창 닫기
                    },
                    child: const Text("건너 뛸래요"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(); //창 닫기
                    },
                    child: const Text("기록하기"),
                  ),
                ],
              );
            }),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: current ? Colors.black12 : Colors.transparent,
          border: Border.all(
            color: Colors.black,
            strokeAlign: BorderSide.strokeAlignCenter,
          ),
        ),
        child: !hasStamp
            ? Text(
                index.toString().padLeft(3, "0"),
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.end,
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(
                        'assets/images/stamp_1.svg',
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "화00사지",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "2024.06.11",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            index.toString().padLeft(3, "0"),
                            style: Theme.of(context).textTheme.labelMedium,
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
      ),
    );
  }
}
