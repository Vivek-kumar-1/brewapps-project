import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Scaffold(
        
        appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Stack(
        children : [
          Container(
          width: MediaQuery.of(context).size.width,
          height: double.infinity,
          child: Image.network('', fit:  BoxFit.cover,),

        ),

        Positioned  (
          bottom: 52,
          left: 22,
          child: Container(
            color:  Colors.black.withOpacity(0.4),
              padding: EdgeInsets.all(14),
          width: MediaQuery.of(context).size.width -30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
                Text("Turning Red", style: TextStyle(color: Colors.black, fontSize: 22),),
                Text("17 june 1999", style: TextStyle(color: Colors.black, fontSize: 22),),
                SizedBox(height: 13,),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.rate_review),
                        SizedBox(width: 5,),
                        Text("5.0"),
                      ],
                    ),
                    Icon(Icons.alarm),
                    Text("2hr 30mins"),
                  ],
                ),
                Text("Thirteen year old mae is experiencing the awkarness"),
            ],
          ),
        ))


        ], 
      ),
      ),
      
    );
  }
}