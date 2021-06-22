import '../importer.dart';

class InputDialog extends StatefulWidget {

  InputDialog({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _InputDialogState();
}

class _InputDialogState extends State<InputDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('確認'),
      content: Text('確認のダイアログです。'),
      actions: <Widget>[
        RaisedButton(
          child: Text('Cancel'),
          onPressed: () => Navigator.of(context).pop(0),
        ),
        RaisedButton(
          child: Text('OK'),
          onPressed: () => Navigator.of(context).pop(1),
        ),
      ],
    );
  }
}
