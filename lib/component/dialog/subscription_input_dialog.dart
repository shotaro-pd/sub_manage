import '../importer.dart';

class SubscriptionInputDialog {
  TextEditingController _textFieldController = TextEditingController();

  Future<void> displayTextInputDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('確認'),
            content: Column(
              children: [
                Text('確認のダイアログです。'),
                TextField(
                  decoration: InputDecoration(hintText: "ここに入力"),
                  controller: _textFieldController,
                ),
              ],
            ),
            actions: <Widget>[
              ElevatedButton(
                child: Text('Cancel'),
                onPressed: () => Navigator.of(context).pop(0),
              ),
              ElevatedButton(
                child: Text('OK'),
                onPressed: () => Navigator.of(context).pop(1),
              ),
            ],
          );
        });
  }
}
