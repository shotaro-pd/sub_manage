import 'importer.dart';
import 'Header.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: Header(title: 'サブマネ'), // ヘッダー
          body: Center(child: Text('おらおらおら')),
      ),
    );
  }
}