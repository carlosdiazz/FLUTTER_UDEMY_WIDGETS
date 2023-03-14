import 'package:flutter/material.dart';

class CustomInpuutField extends StatelessWidget {
  const CustomInpuutField(
      {super.key,
      this.helperText,
      this.hintText,
      this.labelText,
      this.icon,
      this.suffixIcon,
      this.keyBoardType,
      this.oscuredText = false});

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyBoardType;
  final bool oscuredText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //autofocus: true,
      obscureText: oscuredText,
      keyboardType: keyBoardType,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {},
      validator: (value) {
        if (value == null) return 'Requerido';
        return value.length < 3 ? 'Minimo 3' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        //focusedBorder: OutlineInputBorder(
        //    borderSide: BorderSide(color: Colors.green)),
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: '3 caracteres',
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        //border: OutlineInputBorder(
        //    borderRadius: BorderRadius.only(
        //        bottomLeft: Radius.circular(10),
        //        topRight: Radius.circular(20)))
        //prefixIcon: Icon(Icons.verified_user_outlined)
      ),
    );
  }
}
