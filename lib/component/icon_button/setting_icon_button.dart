import '../importer.dart';

//SettingIconButtonのパーツ
class SettingIconButton extends StatelessWidget{
  SettingIconButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.settings, color: Colors.white,),
      onPressed: () {

      },
    );
  }
}