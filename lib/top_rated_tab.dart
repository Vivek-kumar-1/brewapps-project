import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'search_box.dart';
import 'two_tab.dart';

class TopRatedTab extends StatelessWidget {
  fetchMovies() async {
    var url;
    url = await http.get(
        Uri.parse("https://api.themoviedb.org/3/movie/top_rated?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed"));
    return json.decode(url.body)['results'];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: SearchBox(),
            actions: [
              //cancel button
            ],
          ),
      body: FutureBuilder(
          future: fetchMovies(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
            if (snapshot.hasData) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                padding: EdgeInsets.all(8),
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Container(
                        height: 250,
                        alignment: Alignment.centerLeft,
                        child: Card(
                          child: Image.network(
                              "https://image.tmdb.org/t/p/w500" +
                                  snapshot.data[index]['poster_path']),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                snapshot.data[index]["original_title"],
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // Text(
                              //   snapshot.data[index]["release_date"],
                              //   style: TextStyle(color: Colors.black87),
                              // ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 100,
                                child: Text(
                                  snapshot.data[index]["overview"],
                                  style: TextStyle(color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
          ),
          bottomNavigationBar: TwoTab(),
          ),
          ),
          );
      
  }
}
