// import 'importer.dart';
// enum Answers{
//   YES,
//   NO
// }
// class InputDialog{
//
//   String _value = '';
//
//   void _setValue(String value) => setState(() => _value = value);
//
//   void openDialog(BuildContext context) {
//     showDialog<Answers>(
//       context: context,
//       builder: (BuildContext context) => new SimpleDialog(
//         title: new Text('SimpleDialog'),
//         children: <Widget>[
//           createDialogOption(context, Answers.YES, 'Yes'),
//           createDialogOption(context, Answers.NO, 'No')
//         ],
//       ),
//     ).then((value) {
//       switch(value) {
//         case Answers.YES:
//           _setValue('Yes');
//           break;
//         case Answers.NO:
//           _setValue('No');
//           break;
//       }
//     });
//   }
//
//
//   createDialogOption(BuildContext context, Answers answer, String str) {
//     return new SimpleDialogOption(child: new Text(str),onPressed: (){Navigator.pop(context, answer);},);
//   }
// }