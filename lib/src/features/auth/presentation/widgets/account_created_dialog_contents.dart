// import 'package:farm_fresh/src/features/navigation/app_navigator.dart';
// import 'package:farm_fresh/src/shared/shared.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:lottie/lottie.dart';

// class AccountCreatedDialogContent extends StatelessWidget {
//   final VoidCallback onProceedToLogin;
//   const AccountCreatedDialogContent(
//       {super.key, required this.onProceedToLogin});

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     return AppColumn(
//       padding: EdgeInsets.all(15.dx).copyWith(top: 20.dy, bottom: 20.dy),
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 AppNavigator.popDialog();
//               },
//               child: SvgPicture.asset(closeCircle),
//             ),
//           ],
//         ),
//         Lottie.asset(celebration, height: 120.dy),
//         Text(
//           'Account created successfully',
//           style: textTheme.displayLarge!.copyWith(height: 2),
//         ),
//         Text(
//           'Your account has been created. You can\nnow book a service appointment',
//           style: textTheme.displayMedium!.copyWith(height: 1.6),
//           textAlign: TextAlign.center,
//         ),
//         YBox(30.dy),
//         AppButton(
//           title: 'Proceed to dashboard',
//           onTap: onProceedToLogin,
//         )
//       ],
//     );
//   }
// }
