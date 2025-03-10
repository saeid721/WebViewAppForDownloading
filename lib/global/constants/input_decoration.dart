import 'package:flutter/material.dart';

import 'colors_resources.dart';

InputDecoration inputDecoration = InputDecoration(
  filled: true,
  fillColor: ColorRes.grey.withOpacity(0.2),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide.none
  ),
  errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide.none
  ),
  focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide.none
  ),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide.none
  ),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide.none
  ),
  disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide.none
  ),

);

InputDecoration nonInputField = const InputDecoration(

  border: InputBorder.none,
  errorBorder: InputBorder.none,
  focusedErrorBorder: InputBorder.none,
  focusedBorder: InputBorder.none,
  enabledBorder: InputBorder.none,
  disabledBorder: InputBorder.none,

);

InputDecoration searchDecoration = InputDecoration(

  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none
  ),
  errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none
  ),
  focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none
  ),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none
  ),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none
  ),
  disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none
  ),

);

InputDecoration borderDecoration = InputDecoration(
  isDense: true,
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: ColorRes.grey, width: 1)
  ),
  errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: ColorRes.grey, width: 1)
  ),
  focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: ColorRes.grey, width: 1)
  ),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: ColorRes.grey, width: 1)
  ),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: ColorRes.grey, width: 1)
  ),
  disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: ColorRes.grey, width: 1)
  ),

);

InputDecoration dateInputDecoration = InputDecoration(
  fillColor: ColorRes.white,
  filled: true,
  isDense: true,
  iconColor: ColorRes.grey,
  floatingLabelBehavior: FloatingLabelBehavior.always,
  // labelStyle: const TextStyle(
  //   color: ColorRes.black,
  // ),
  // floatingLabelStyle: const TextStyle(color: ColorRes.blue),
  border: OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: ColorRes.grey,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: ColorRes.red,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: ColorRes.red,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: ColorRes.grey,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: ColorRes.grey,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: ColorRes.grey,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  suffixIconColor: ColorRes.grey,
);
