import 'package:flutter/cupertino.dart';

String? emailValidateLogin(String? value) {
  if (value!.isEmpty) {
    return 'Email is required';
  }
  return null;
}

String? passwordValidateLogin(String? value) {
  if (value!.isEmpty) {
    return 'Password is required';
  }
  return null;
}

String? passwordValidateAndCheckMatchingSignUp(String? value) {
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();
  if (value!.isEmpty) {
    return 'Confirmation Password is required';
  } else if (value.length < 8) {
    return 'Password should at least have 8 characters';
  } else if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$')
      .hasMatch(value)) {
    return 'Please enter a valid Password';
  } else if (passwordController.text != passwordConfirmController.text) {
    return 'Password is not matched';
  }
  return null;
}

String? passwordValidateSignUp(String? value) {
  if (value!.isEmpty) {
    return 'Password is required';
  } else if (value.length < 8) {
    return 'Password should at least have 8 characters';
  } else if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$')
      .hasMatch(value)) {
    return 'Please enter a valid Password';
  }
  return null;
}

String? emailValidateSignUp(String? value) {
  if (value!.isEmpty) {
    return 'Email is required';
  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+$').hasMatch(value)) {
    return 'Please Enter a valid email';
  }
  return null;
}

String? nameValidateSignUp(String? value) {
  if (value!.isEmpty) {
    return 'Name is required';
  } else if (value.length < 3) {
    return 'Name should contain at least 3 characters';
  } else if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
    return 'Please Enter a valid name';
  }
  return null;
}
