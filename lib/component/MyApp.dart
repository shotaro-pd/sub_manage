import 'importer.dart';
import 'Header.dart';
import 'MySubscriptionListBody.dart';
import 'Convenient.dart';
import 'iconButton/AddIconButton.dart';
import 'iconButton/SettingIconButton.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ConvenientPage(
            appBar: Header(title: 'サブマネ',
              leadingButton: SettingIconButton(),
              actionButton: AddIconButton(),
            ),
            body: MySubscriptionListBody()
        ),
    );
  }
}