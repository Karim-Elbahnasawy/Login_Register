import 'package:flutter/material.dart';
import 'package:login_register/widgets/register_bottom_sheet.dart';

import '../core/utils/consntants.dart';
import 'custom_elvated_button.dart';

class OpenBottomSheetRegister extends StatelessWidget {
  const OpenBottomSheetRegister({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 281,
      height: 60,
      child: CustomElvatedButton(
        borderSide: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  100,
                ),
                topRight: Radius.circular(
                  100,
                ),
              ),
            ),
            builder: (context) => const RegisterBottomSheet(),
          );
        },
        backgroundColor: const Color(0xffFFDE69),
        color: const Color(0xff1B1A40),
        text: 'Create Account',
      ),
    );
  }
}
