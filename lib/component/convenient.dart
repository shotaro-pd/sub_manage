import 'importer.dart';

class ConvenientPage extends StatelessWidget {
  ConvenientPage({Key key, this.appBar, this.body}) : super(key: key);

  final Widget appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: this.appBar,
      body: this.body,
    );
  }
}
