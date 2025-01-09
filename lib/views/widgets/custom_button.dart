import 'package:flutter/material.dart';
import 'package:notely/constants.dart';

class CustomButtton extends StatelessWidget {
  const CustomButtton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kprimaryClor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            "Add",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
