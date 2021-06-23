import 'importer.dart';
import 'header.dart';
import 'body/my_subscription_list_body.dart';
import 'convenient.dart';
import 'icon_button/add_icon_button.dart';
import 'icon_button/setting_icon_button.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConvenientPage(
          appBar: Header(
            title: 'サブマネ',
            leadingButton: SettingIconButton(),
            actionButton: AddIconButton(),
          ),
          body: MySubscriptionListBody()),
    );
  }
}
