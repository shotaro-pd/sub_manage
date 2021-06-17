import '../importer.dart';
import '../AddSubscriptionListBody.dart';
import '../Convenient.dart';
import '../Header.dart';
import 'BackIconButton.dart';


//AddIconButtonのパーツ
class AddIconButton extends StatelessWidget{
  AddIconButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
            icon: Icon(Icons.add, color: Colors.white,),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ConvenientPage(
                          appBar: Header(title: 'サブスク登録',leadingButton: BackIconButton()),body: AddSubscriptionListBody()
                      )
                  )
              );
            },
    );
  }
}