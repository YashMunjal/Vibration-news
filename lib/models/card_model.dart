import 'package:flutter/material.dart';
import 'package:vibrateNewsUi/colors.dart';


class CardModel {
  String name;
  String balance;
  String valid;
  Color bgColor;
  Color fColor;
  Color sColor;

  CardModel(this.name, this.balance, this.valid,this.bgColor,this.fColor,this.sColor);
}

List<CardModel> cards = cardData
    .map((item) => CardModel(
          item['name'],
          item['balance'],
          item['valid'],
          item['bgColor'],
          item['fColor'],
          item['sColor'],
        ))
    .toList();

var cardData = [
  {"name": "Yash", "balance": "20,000", "valid": "06/25","bgColor":yCardOneColor,"fColor":yWhiteColor,"sColor":yWGreyColor},
  {"name": "Himanshu", "balance": "20,000", "valid": "06/25","bgColor":yCardTwoColor,"fColor":yWhiteColor,"sColor":yWhiteColor}
];
