import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FourthView extends HookWidget {
  const FourthView({super.key});

  @override
  Widget build(BuildContext context) {
    final acctNumberController = useTextEditingController();
    final acctNameController = useTextEditingController();
    return Column(
      children: [
        AppTextField(
          controller: acctNumberController,
          labelText: 'Bank',
        ),
        YBox(20.dy),
        AppTextField(
          controller: acctNumberController,
          labelText: 'Account number',
        ),
        YBox(20.dy),
        AppTextField(
          controller: acctNameController,
          labelText: 'Account name',
        ),
      ],
    );
  }
}
