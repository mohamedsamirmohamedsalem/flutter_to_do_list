import 'package:flutter/material.dart';

class CheckBoxState extends StatelessWidget {
  bool isChecked = false;
  Function checkBoxCallBack;
  CheckBoxState(this.isChecked, this.checkBoxCallBack);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: checkBoxCallBack,
    );
  }
}
