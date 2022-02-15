import 'package:check_my_credito/app/ui/my_colors.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {Key? key,
      this.maxLines = 1,
      this.obscure = false,
      this.fontColor,
      this.hintColor,
      this.borderColor,
      this.titleColor,
      this.keyBoardType,
      this.validator,
      this.controller,
      this.hint,
      required this.title})
      : super(key: key);

  final String title;
  final String? hint;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyBoardType;
  final Color? borderColor;
  final Color? titleColor;
  final Color? hintColor;
  final Color? fontColor;
  final bool? obscure;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: titleColor ?? MyColors.secondary, fontSize: 16)),
        const SizedBox(height: 4),
        TextFormField(
          maxLines: maxLines,
          controller: controller,
          validator: validator,
          keyboardType: keyBoardType,
          obscureText: obscure ?? false,
          style: TextStyle(color: fontColor ?? MyColors.secondary),
          decoration: InputDecoration(
            isDense: true,
            hintText: hint,
            hintStyle: TextStyle(color: hintColor ?? MyColors.secondary.withAlpha(102)),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor ?? MyColors.secondary),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor ?? MyColors.secondary),
              borderRadius: BorderRadius.circular(8),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyColors.tertiary),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyColors.tertiary),
              borderRadius: BorderRadius.circular(8),
            ),
            suffixIcon: obscure! ? IconButton(onPressed: () {}, icon: const Icon(Icons.remove_red_eye)) : null,
            errorStyle: TextStyle(color: MyColors.tertiary),
          ),
        ),
      ],
    );
  }
}
