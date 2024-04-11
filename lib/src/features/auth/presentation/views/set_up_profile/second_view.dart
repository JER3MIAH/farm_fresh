import 'package:farm_fresh/src/features/auth/presentation/view_models/seller_profile_setup.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum VerifMethod { vote, nin, drive }

class PickVerifView extends HookConsumerWidget {
  const PickVerifView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      children: [
        _buildTile(
          context: context,
          theme: Theme.of(context).colorScheme,
          verifMethod: VerifMethod.vote,
          viewModel: ref.watch(sellerProfileSetUpProvider),
        ),
        YBox(20.dy),
        _buildTile(
          context: context,
          theme: Theme.of(context).colorScheme,
          verifMethod: VerifMethod.nin,
          viewModel: ref.watch(sellerProfileSetUpProvider),
        ),
        YBox(20.dy),
        _buildTile(
          context: context,
          theme: Theme.of(context).colorScheme,
          verifMethod: VerifMethod.drive,
          viewModel: ref.watch(sellerProfileSetUpProvider),
        ),
      ],
    );
  }

  Widget _buildTile({
    required BuildContext context,
    required ColorScheme theme,
    required VerifMethod verifMethod,
    required SellerProfileSetUpViewModel viewModel,
  }) {
    return Container(
      width: double.infinity,
      height: 74,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: theme.secondary.withOpacity(0.06),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Row(
          children: [
            XBox(10.dx),
            Expanded(
              child: Text(
                  verifMethod == VerifMethod.vote
                      ? 'Permanent Voter’s Card'
                      : verifMethod == VerifMethod.nin
                          ? 'National Identity Number'
                          : 'Driver’s License',
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
            Radio<int>(
              value: verifMethod == VerifMethod.vote
                  ? 1
                  : verifMethod == VerifMethod.nin
                      ? 2
                      : 3,
              activeColor: theme.primary,
              groupValue: viewModel.selectedOption,
              onChanged: (int? value) {
                viewModel.updateSelectedOption(value!);
              },
            ),
          ],
        ),
      ),
    );
  }
}
