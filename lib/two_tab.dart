// import 'package:brewappsfinal/top_rated.dart';
import 'package:fetchtmdb/brew.dart';
import 'package:fetchtmdb/top_rated_tab.dart';
import 'package:flutter/material.dart';

import 'detail.screen.dart';
// import 'detail_screen.dart';
// import 'now_playing.dart';

class TwoTab extends StatefulWidget {
  const TwoTab({ Key? key }) : super(key: key);

  @override
  State<TwoTab> createState() => _TwoTabState();
}

class _TwoTabState extends State<TwoTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child:  Center(
                  child: Column(
                    children: [
                      IconButton(onPressed: (){
                      Navigator.push(
                                 context,
                                  MaterialPageRoute(builder: (context) =>  HomePage()),
                                    );
                       }, icon: Icon(Icons.movie, size: 30,)),
                       
                      Text(
                        "Now Playing", 
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                      ),

                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width /2,
                child: Center(
                  child: Column(
                    children: [
                       IconButton(onPressed: (){
                      Navigator.push(
                                 context,
                                  MaterialPageRoute(builder: (context) =>  TopRatedTab()),
                                    );
                       }, icon: Icon(Icons.star, size: 30,)),
                      // icon: Icon(Icons.star, size: 30,)),
                      Text('Top Rated', style: TextStyle(fontSize: 16),),

                    ],
                  ),
                ),
              )
            ],
          ),
    );
      
  
  }
}