// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    Key? key,
    this.onPressed,
    required this.icon,
  }) : super(key: key);
  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
          color: Colors.grey[800], borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 28,
          ),
        ),
      ),
    );
  }
}
