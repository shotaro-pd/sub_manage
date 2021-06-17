import '../importer.dart';

//AddIconButtonのパーツ
class BackIconButton extends StatelessWidget{
  BackIconButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
            onPressed: () {
              Navigator.pop(context);
            },
    );
  }
}