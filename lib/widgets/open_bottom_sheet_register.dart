import 'package:flutter/material.dart';
import '../core/utils/consntants.dart';
import 'custom_elvated_button.dart';
import 'login_bottom_sheet.dart';

class OpenBottomSheetLogin extends StatelessWidget {
  const OpenBottomSheetLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 281,
      height: 60,
      child: CustomElvatedButton(
        borderSide: const Color(0xffFFDE69),
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
              builder: (context) => const LoginBottomSheet());
        },
        backgroundColor: kPrimaryColor,
        color: const Color(0xffFFDE69),
        text: 'Login',
      ),
    );
  }
}
