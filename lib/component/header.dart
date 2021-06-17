import 'importer.dart';

class Header extends StatelessWidget with PreferredSizeWidget{
  Header({Key key, this.title, this.leadingButton,this.actionButton}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  final String title;
  final Widget leadingButton;
  final Widget actionButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: (this.leadingButton == null) ? Text('') : this.leadingButton,
      title: Text(this.title),
      actions: <Widget>[
        (this.actionButton == null) ? Text('') : this.actionButton
      ],
      centerTitle: true,
    );
  }
}