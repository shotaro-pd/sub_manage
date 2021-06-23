import '../importer.dart';
import '../body/add_subscription_list_body.dart';
import '../convenient.dart';
import '../header.dart';
import 'back_icon_button.dart';

//AddIconButtonのパーツ
class AddIconButton extends StatelessWidget {
  AddIconButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.add,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ConvenientPage(
                    appBar: Header(
                        title: 'サブスク登録', leadingButton: BackIconButton()),
                    body: AddSubscriptionListBody())));
      },
    );
  }
}
