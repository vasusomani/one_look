import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';

OutlineInputBorder EnabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(14),
    borderSide: BorderSide(color: Color(0xFFE5E6EE)));

OutlineInputBorder ErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(14),
    borderSide: const BorderSide(color: Colors.red));

OutlineInputBorder FocusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(14),
    borderSide: const BorderSide(color: Color(0xFFFAFAFF), width: 1));

class TextFieldEmail extends StatelessWidget {
  TextFieldEmail(this.controller, {this.validationOn = false});
  bool validationOn;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            "E-mail",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        TextFormField(
          controller: controller,
          autovalidateMode: (validationOn)
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            hintText: "Enter your e-mail here",
            hintStyle: Theme.of(context).textTheme.bodyMedium,
            prefixIcon: Image.asset('assets/icons/email.png', scale: 1.5),
            filled: true,
            fillColor: textFieldBg,
            focusedErrorBorder: ErrorBorder,
            errorBorder: ErrorBorder,
            enabledBorder: EnabledBorder,
            focusedBorder: FocusedBorder,
          ),
          validator: (value) {
            if (value == null ||
                value.trim() == "" ||
                value.trim().length < 3 ||
                !value.contains("@")) {
              return "Enter a valid email address";
            }
            return null;
          },
        ),
      ],
    );
  }
}

class TextFieldPass extends StatefulWidget {
  TextFieldPass(this.controller, {this.validationOn = false});
  bool validationOn;
  final TextEditingController controller;

  @override
  State<TextFieldPass> createState() => _TextFieldPassState();
}

class _TextFieldPassState extends State<TextFieldPass> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            "Password",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        TextFormField(
          controller: widget.controller,
          textInputAction: TextInputAction.next,
          autovalidateMode: (widget.validationOn)
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          decoration: InputDecoration(
            hintText: "Enter your password here",
            hintStyle: Theme.of(context).textTheme.bodyMedium,
            prefixIcon: Image.asset(
              'assets/icons/lock.png',
              scale: 1.5,
            ),
            suffixIconColor: Colors.grey,
            suffixIcon: IconButton(
              icon: (isObscure)
                  ? const Icon(
                      CupertinoIcons.eye_slash,
                    )
                  : const Icon(CupertinoIcons.eye),
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
            ),
            filled: true,
            fillColor: textFieldBg,
            focusedErrorBorder: ErrorBorder,
            errorBorder: ErrorBorder,
            enabledBorder: EnabledBorder,
            focusedBorder: FocusedBorder,
            errorMaxLines: 2,
          ),
          obscureText: isObscure,
          validator: (value) {
            if (value == null || value.contains(" ")) {
              return "Password can't be empty";
            } else if (value.trim().length < 6) {
              return "Password should be atleast 6 characters long";
            } else if (!RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*?[^\w\s]).*$')
                .hasMatch(value)) {
              return "Password should be a combination of capital, small, integer, and special characters";
            }

            return null;
          },
        ),
      ],
    );
  }
}

class TextFieldConfirmPass extends StatelessWidget {
  TextFieldConfirmPass(this.controller, this.password);
  final TextEditingController controller;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            "Confirm Password",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        TextFormField(
          controller: controller,
          textInputAction: TextInputAction.next,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            hintText: "Enter your password again",
            hintStyle: Theme.of(context).textTheme.bodyMedium,
            prefixIcon: Image.asset(
              'assets/icons/lock.png',
              scale: 1.5,
            ),
            filled: true,
            fillColor: textFieldBg,
            focusedErrorBorder: ErrorBorder,
            errorBorder: ErrorBorder,
            enabledBorder: EnabledBorder,
            focusedBorder: FocusedBorder,
          ),
          obscureText: true,
          validator: (value) {
            if (value == null || value.trim() == '') {
              return "Confirm Password can't be empty";
            } else if (value != password.text) {
              return "Confirm Password must be same as Password";
            }
            return null;
          },
        ),
      ],
    );
  }
}

class TextFieldName extends StatelessWidget {
  TextFieldName(this.controller, {this.validationOn = false});
  bool validationOn;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            "Full Name",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        TextFormField(
          controller: controller,
          textInputAction: TextInputAction.next,
          autovalidateMode: (validationOn)
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          decoration: InputDecoration(
            hintText: "Enter your name",
            hintStyle: Theme.of(context).textTheme.bodyMedium,
            prefixIcon: Image.asset(
              'assets/icons/user.png',
              scale: 1.5,
            ),
            filled: true,
            fillColor: textFieldBg,
            focusedErrorBorder: ErrorBorder,
            errorBorder: ErrorBorder,
            enabledBorder: EnabledBorder,
            focusedBorder: FocusedBorder,
          ),
          validator: (value) {
            if (value == null ||
                value.trim() == "" ||
                value.trim().length < 2) {
              return "Enter a valid name";
            }
            return null;
          },
        ),
      ],
    );
  }
}
