import 'package:flutter/material.dart';

class AppBarTop extends StatelessWidget {
  String title;
  bool showLeading;
  AppBarTop(this.title, {this.showLeading = true});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: const Color(0xff8bc6c0),
          fontSize: 26,
          fontWeight: FontWeight.w700,
        ),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: const Color(0xff8bc6c0),
      ),
      automaticallyImplyLeading: showLeading,
    );
  }
}
