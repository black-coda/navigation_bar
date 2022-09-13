import 'package:flutter/material.dart';

class Defaults {
  static const Color buttomNavColor = Color.fromARGB(255, 38, 40, 41);
  static const Color buttomNavSelectedColor = Color(0xffB98F00);
  static const Color activeNavSelectedColor = Color.fromARGB(84, 175, 156, 93);

  static final buttomNavItemText = [
    'Inbox',
    'Starred',
    'Sent',
    'Drafts',
    'Trash',
    'Spam',
  ];

  static final buttomNavItemIcon = [
    Icons.inbox,
    Icons.star,
    Icons.send,
    Icons.mail,
    Icons.delete,
    Icons.warning_rounded,
  ];
}
