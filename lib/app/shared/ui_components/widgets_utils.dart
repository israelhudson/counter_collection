import 'package:flutter/material.dart';
import 'package:platform_alert_dialog/platform_alert_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

alert(String text){
  return Fluttertoast.showToast(
      msg: "$text",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );
}

alerDialog({String msg,BuildContext context, Function action}){
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return PlatformAlertDialog(
        title: Text('Atenção'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('$msg'),
            ],
          ),
        ),
        actions: <Widget>[
          PlatformDialogAction(
            child: Text('NÃO'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          PlatformDialogAction(
            child: Text('SIM'),
            actionType: ActionType.Default,
            onPressed: () {
              Navigator.of(context).pop();
              action();

            },
          ),
        ],
      );
    },
  );
}