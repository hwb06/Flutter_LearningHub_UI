import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:education_app_ui/main.dart';

class AssignmentDetailRow extends StatelessWidget {
  final String title;
  final String statusValue;

  const AssignmentDetailRow(
      {super.key, required this.title, required this.statusValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
        Text(
          statusValue,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class AssignmentButton extends StatelessWidget {
  final String title;
  final void Function() onPress;

  const AssignmentButton({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: Color(0xFF674AEF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme
                .of(context)
                .textTheme
                .titleSmall!
                .copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}