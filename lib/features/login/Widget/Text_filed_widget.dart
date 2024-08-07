import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFiledWidget extends StatefulWidget {
  final String hintext;
  final bool isPassword;

  TextFiledWidget({
    Key? key,
    required this.hintext,
    this.isPassword = false,
  }) : super(key: key);

  @override
  _TextFiledWidgetState createState() => _TextFiledWidgetState();
}

class _TextFiledWidgetState extends State<TextFiledWidget> {
  TextEditingController _controller = TextEditingController();
  bool _isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF7F7F7),
        borderRadius: BorderRadius.circular(70),
        border: Border.all(
          color: Color(0xffEEEEEE),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 4),
        child: TextField(
          controller: _controller,
          obscureText: widget.isPassword ? _isObscure : false,
          decoration: InputDecoration(
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  )
                : null,
            hintStyle: GoogleFonts.cairo(
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
            hintText: widget.hintext,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
