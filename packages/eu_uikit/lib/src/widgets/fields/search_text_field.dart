import 'package:eu_uikit/eu_uikit.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    this.hint = "search",
    this.controller,
    this.onChanged,
    this.onEditingComplete,
    super.key,
  });

  final String? hint;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged ?? (String? v) {},
      onEditingComplete: onEditingComplete ?? () {},
      style: bodyRegular15TextStyle,
      decoration: InputDecoration(
        hintStyle:
            bodyRegular15TextStyle.copyWith(color: EUColors.textFieldHintColor),
        hintText: hint,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 8.w,
        ),
      ),
    );
  }
}
