import 'package:flutter/material.dart';

class Defaults {
  static const Color bottomNavColor = Color.fromARGB(255, 38, 40, 41);
  static const Color activeNavSelectedColor =
      Color.fromARGB(255, 255, 255, 255);
  static const Color bottomNavSelectedColor = Color.fromARGB(228, 85, 103, 172);

  static final bottomNavItemText = [
    'Inbox',
    'Starred',
    'Sent',
    'Drafts',
    'Trash',
    'Spam',
  ];

  static final bottomNavItemIcon = [
    Icons.inbox,
    Icons.star,
    Icons.send,
    Icons.mail,
    Icons.delete,
    Icons.warning_rounded,
  ];
}
