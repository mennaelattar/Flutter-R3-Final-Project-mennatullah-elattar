import 'package:flutter/material.dart';

class MainBootomSheet{
  mainBottomSheetFun(BuildContext context,Widget bottomSheetWidget)
  {
    return showModalBottomSheet(
      isScrollControlled: true,
        context: context,
        builder: (context) => Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: bottomSheetWidget
        ));
  }
}