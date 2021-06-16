import 'importer.dart';
import 'Header.dart';

class Material extends StatelessWidget with PreferredSizeWidget{
  Material({Key key, this.title,this.appBar,this.body}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  final Header appBar;
  final Widget body;
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: this.appBar, // ヘッダー
        body: this.body,
      ),
    );
  }
}