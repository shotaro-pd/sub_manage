import 'importer.dart';

class Header extends StatelessWidget with PreferredSizeWidget{
  Header({Key key, this.title}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add, color: Colors.white,), onPressed: () {  },
        ),
      ],
    );
  }
}