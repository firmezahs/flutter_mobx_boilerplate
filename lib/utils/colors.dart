import 'package:flutter/material.dart';

const primaryColor = Color(0xFF0C0CC0);
const secondaryColor = Color(0xFF01147C);

const backgroundColor = Color(0xFFfaf1f6);
const cardColorLight = Color(0xFFfaf1f6);
const cardColorDark = Color(0xFF2d292c);

const primaryTextColor = Color(0xFFFFFF);
const secondaryTextColor = Color(0xFFFFFF);

const primaryTextColorDark = Color(0xFFFFFF);
const secondaryTextColorDark = Color(0xFFFFFF);

LinearGradient buttonGradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  stops: [0.45, 1.0],
  colors: [
    primaryColor,
    secondaryColor,
  ],
);
