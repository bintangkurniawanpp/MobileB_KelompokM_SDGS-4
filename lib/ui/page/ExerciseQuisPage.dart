// // part of 'pages.dart';

// class ExerciseQuis extends StatefulWidget {
//   @override
//   _ExerciseQuisState createState() => _ExerciseQuisState();
// }

// class _ExerciseQuisState extends State<ExerciseQuis> {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar : AppBar(
//         backgroundColor: mainColor,
//         title: Text('Gabung Quis'),
//       ),

//       body: Form(
//         key: _formKey,
//         child: SingleChildScrollView(
//           child: Container(
//             padding: EdgeInsets.all(20.0),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(
//                     decoration: new InputDecoration(
//                       hintText: "contoh: 123qwe",
//                       labelText: "Kode Quis",
//                       icon: Icon(Icons.security),
//                       border: OutlineInputBorder(
//                           borderRadius: new BorderRadius.circular(5.0)),
//                     ),
//                     validator: (value) {
//                       if (value.isEmpty) {
//                         return 'Kode tidak boleh kosong';
//                       }
//                       return null;
//                     },
//                   ),
//                 ),
//                 RaisedButton(
//                   child: Text(
//                     "Submit",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   color: Colors.blue,
//                   onPressed: () {
//                     if (_formKey.currentState.validate()) {}
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }