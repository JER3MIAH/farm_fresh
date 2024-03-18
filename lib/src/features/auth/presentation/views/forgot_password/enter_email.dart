import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';

class EnterEmail extends StatelessWidget {
  const EnterEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      children: [
        AppTextField(
          labelText: 'Email address',
          hintText: 'Enter email address',
          keyBoardType: TextInputType.emailAddress,
          validator: (value) {
            return Validator.emailValidator(value);
          },
        ),
      ],
    );
  }
}
