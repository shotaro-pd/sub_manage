import '../importer.dart';

enum Answers{
  YES,
  NO
}

class AddSubscriptionListBody extends StatefulWidget {

  AddSubscriptionListBody({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _AddSubscriptionListBodyState();
}

class _AddSubscriptionListBodyState extends State<AddSubscriptionListBody> {

  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          _menuItem("自分で追加","0", Icon(Icons.add_box_outlined)),
          _menuItem("Amazon Prime","500", Icon(Icons.local_shipping)),
          _menuItem("Youtube Premium","1180", Icon(Icons.movie)),
          _menuItem("Netflix","1000", Icon(Icons.movie)),
          _menuItem("fulu","1100", Icon(Icons.movie)),
          _menuItem("niconico Premium","980", Icon(Icons.movie)),
        ]
    );
  }

  Widget _menuItem(String title,String price, Icon icon) {
    return GestureDetector(
      child:Container(
          padding: EdgeInsets.all(8.0),
          decoration: new BoxDecoration(
              border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
          ),
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
                      style: TextStyle(
                          color:Colors.black,
                          fontSize: 18.0
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                child: Text(
                  "¥"+price+"/month",
                  style: TextStyle(
                      color:Colors.black,
                      fontSize: 18.0
                  ),
                  textAlign: TextAlign.left,
                ),

              ),

            ],
          )
      ),
      onTap: () {
        openDialog(context);
      },
    );
  }

  void openDialog(BuildContext context) {
    showDialog<Answers>(
      context: context,
      builder: (BuildContext context) => new SimpleDialog(
        title: new Text('SimpleDialog'),
        children: <Widget>[
          createDialogOption(context, Answers.YES, 'Yes'),
          createDialogOption(context, Answers.NO, 'No')
        ],
      ),
    ).then((value) {
      switch(value) {
        case Answers.YES:
          _setValue('Yes');
          break;
        case Answers.NO:
          _setValue('No');
          break;
      }
    });
  }

  createDialogOption(BuildContext context, Answers answer, String str) {
    return new SimpleDialogOption(
      child: new Text(str),
      onPressed: (){
        Navigator.pop(context, answer);
      },
    );
  }

}

