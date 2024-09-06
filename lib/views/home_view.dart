import 'package:flutter/material.dart';
import 'package:login_register/core/utils/consntants.dart';
import 'package:login_register/core/utils/styles.dart';
import '../widgets/open_bottom_sheet_login.dart';
import '../widgets/open_bottom_sheet_register.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 28,
              ),
              Image.asset(
                'assets/images/p1.png',
                width: 500,
                fit: BoxFit.fitWidth,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 47),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Welcome',
                      style: Styles.textStyle36.copyWith(
                        color: const Color(0xffEF5858),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      ' Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed \n                 do eiusmod',
                      style: Styles.textStyle20.copyWith(
                        color: Colors.white.withOpacity(.5),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const OpenBottomSheetRegister(),
                    const SizedBox(
                      height: 15,
                    ),
                    const OpenBottomSheetLogin(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
