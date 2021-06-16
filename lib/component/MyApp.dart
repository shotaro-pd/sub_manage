import 'importer.dart';
import 'Header.dart';
import 'HomePage.dart';
import 'Material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(Header(title: 'サブマネ'), HomePage());
  }
}