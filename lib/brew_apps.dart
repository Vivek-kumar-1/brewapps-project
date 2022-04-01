// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// class BrewApps extends StatefulWidget {
//   const BrewApps({ Key? key }) : super(key: key);

//   @override
//   State<BrewApps> createState() => _BrewAppsState();
// }

// class _BrewAppsState extends State<BrewApps> {


//   fetchMovie() async {
//     var url;
//   url = await http.get(Uri.parse("https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed"));

//     return json.decode(url.body)["results"];
//     // var datareceived = jsonDecode(nowplaying.body);
//     // //print(datareceived);
//     // return datareceived;
//   }

//   // @override
//   // void initState() {
//   //   fetchMovie();
//   //   super.initState();
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber,
//       appBar: AppBar(
//         title: Text("BrewApps",
//         style: TextStyle(fontSize: 16),),
//         backgroundColor: Colors.amber,
//         centerTitle: true,
//         elevation: 0.0,

//       ),

//       body:  FutureBuilder(
//         future: fetchMovie(),
//         builder: (BuildContext context, AsyncSnapshot snapshot){
//           if (snapshot.hasError){
//             return Center(
//               child: Text(snapshot.error.toString()),
//             );
//             //print(snapshot.hasError.toString());
//           }
//           if(snapshot.hasData){
//             return ListView.builder(
//               shrinkWrap: true,
//               itemCount: snapshot.data.length,
//               padding: EdgeInsets.all(8),
//               itemBuilder: (BuildContext context, int index){
//                   return Row(
//                     children: [
//                         Container(
//                           height: 250,
//                           alignment: Alignment.centerLeft,
//                           child: Card(
//                             child: Image.network("/qsdjk9oAKSQMWs0Vt5Pyfh6O4GZ.jpg" + snapshot.data[index]["poster_path"],),),
//                           ),
//                         SizedBox(width: 20,),
//                         Expanded(
//                           child: Container(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(snapshot.data[index]['original_title'], style: TextStyle(color: Colors.white),),
//                                 SizedBox(height: 20,),
//                                 Text(snapshot.data[index]['release_data'], style: TextStyle(color: Colors.white),),
//                                 SizedBox(height: 20,),
//                                 Text(snapshot.data[index]['overview'], style: TextStyle(color: Colors.white),),
//                               ],
//                             ),
//                           ),
//                         ),
//                   ],);
//             }, );
//           }
//           return Center(child: CircularProgressIndicator(),);
//         },
//       ),
//     );
//   }
// }