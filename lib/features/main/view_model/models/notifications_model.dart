import 'package:flutter/material.dart';

class NotificationModel {
  int id;
  String title;
  String body;
  IconData image;

  DateTime date;
  NotificationModel({
    required this.id,
    required this.title,
    required this.body,
    required this.image,
    required this.date,
  });
}
