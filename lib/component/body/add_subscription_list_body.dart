import 'package:sub_manage/component/dialog/subscription_input_dialog.dart';
import '../importer.dart';


class AddSubscriptionListBody extends StatefulWidget {
  AddSubscriptionListBody({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _AddSubscriptionListBodyState();
}

class _AddSubscriptionListBodyState extends State<AddSubscriptionListBody> {

  SubscriptionInputDialog subscriptionInputDialog = new SubscriptionInputDialog();

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      _menuItem("自分で追加", "0", Icon(Icons.add_box_outlined)),
      _menuItem("Amazon Prime", "500", Icon(Icons.local_shipping)),
      _menuItem("Youtube Premium", "1180", Icon(Icons.movie)),
      _menuItem("Netflix", "1000", Icon(Icons.movie)),
      _menuItem("fulu", "1100", Icon(Icons.movie)),
      _menuItem("niconico Premium", "980", Icon(Icons.movie)),
    ]);
  }

  Widget _menuItem(String title, String price, Icon icon) {
    return GestureDetector(
      child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: new BoxDecoration(
              border: new Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: icon,
                    ),
                    Text(
                      title,
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  "¥" + price + "/month",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          )),
      onTap: () {
        subscriptionInputDialog.displayTextInputDialog(context);
      },
    );
  }
}
