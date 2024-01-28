import 'package:flutter/material.dart';

Widget customNavigatorButton(BuildContext context) {
  return Align(
    alignment: Alignment.topLeft,
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.all(.5),
        decoration: const BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
        ),
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
    ),
  );
}
