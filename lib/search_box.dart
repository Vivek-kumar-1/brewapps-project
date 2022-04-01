import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({ Key? key }) : super(key: key);

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39,
      margin: EdgeInsets.only(left: 22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) => {},
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, size: 22, color: Colors.black38,),
          suffixIcon: GestureDetector(
            onTap: (){},
            child: Icon(
              Icons.close,
              size: 20,
              color: Colors.black38,
            ),
          ),
          hintText: "Search"
        ),
      ),
    );
  }
}