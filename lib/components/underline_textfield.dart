import 'package:flutter/material.dart';

class UnderLineTextField extends StatefulWidget {
  final Widget? suffixIcon;
  final bool obsecureText;

  const UnderLineTextField(
      {Key? key, this.suffixIcon, this.obsecureText = false})
      : super(key: key);

  @override
  _UnderLineTextFieldState createState() => _UnderLineTextFieldState();
}

class _UnderLineTextFieldState extends State<UnderLineTextField> {
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obsecureText;
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      obscureText: _obscureText,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.3),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        suffixIcon: GestureDetector(
          onTap: _toggleObscureText,
          child: Transform.scale(
            scale: 0.4,
            alignment: Alignment.centerRight,
            child: widget.suffixIcon,
          ),
        ),
      ),
    );
  }
}
