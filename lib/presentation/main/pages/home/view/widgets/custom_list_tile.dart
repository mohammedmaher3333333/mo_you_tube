import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.onTap});

  final String title;
  final String imagePath;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imagePath,),
      title: Text(title),
      onTap: onTap(),
    );
  }
}
