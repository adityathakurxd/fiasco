import 'package:flutter/material.dart';

import '../../constants.dart';

class FamilyWidget extends StatelessWidget {
  Widget child;
  String name;
  FamilyWidget({Key? key, required this.child, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:  10.0, top: 10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: [BoxShadow(
              color: Colors.grey,
              blurRadius: 4.0,
            ),]
        ),
        width: MediaQuery.of(context).size.width/3.5,
        height: MediaQuery.of(context).size.height * 0.14,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            child,
            Text(
              name,
              style: kSubTitleText.copyWith(fontSize: 12, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
