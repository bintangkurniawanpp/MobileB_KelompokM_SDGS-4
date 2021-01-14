// part of 'pages.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
// class _HomePageState extends State<HomePage> {
//   final List history = [
//     "UTS Bahasa Indonesia",
//     "UTS Matematika",
//     "Latihan Soal Matematika 2",
//     "UTS Bahasa Inggris",
//     "UTS Bahasa Jawa",
//     "Quis 2 Biologi",
//     "UTS Sejarah",
//     "Quis 1 Bahasa Inggris",
//     "Latihan Soal Fisika",
//     "Latihan Soal Matematika 1",
//     "Quis 2 Matematika",
//     "Quis 1 Biologi"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar : new AppBar(
//         backgroundColor: mainColor,
//         title: Text('Beranda'),
//         ),

//         body: ListView.builder(
//           itemBuilder: (context, index) {
//             return Card(
//               child: ListTile(
//                   title: Text(
//                       history[index],
//                       style: TextStyle(fontSize: 17)
//                   ),
//                   leading: CircleAvatar(
//                     child: Text(
//                         history[index][0],
//                         style: TextStyle(fontSize: 20)
//                     ),
//                   )
//               ),
//             );
//           },
//           itemCount: history.length,
//         ),
//     );
//   }
// }
