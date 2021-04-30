import 'package:flutter/material.dart';
import 'package:garbage_classification/pages/category/res/form1.dart';
import 'package:garbage_classification/pages/category/res/form2.dart';
import 'package:garbage_classification/pages/category/res/form3.dart';
import 'package:garbage_classification/pages/category/res/form4.dart';

import 'kind.dart';

const recentSuggest = [

];

class SearchBarDelegate extends SearchDelegate<String> {

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = "",
      )
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    var result;
    for(int i = 0; i<form1.length;i++){
      if(query == form1[i]['title']){
        result = "Residual waste";
      }
    }
    for(int i = 0; i<form2.length;i++){
      if(query == form2[i]['title']){
        result = "Wet waste";
      }
    }
    for(int i = 0; i<form3.length;i++){
      if(query == form3[i]['title']){
        result = "Recyclable waste";
      }
    }
    for(int i = 0; i<form4.length;i++){
      if(query == form4[i]['title']){
        result = "other waste";
      }
    }
    if(result==null){
      result = "Not found";
    }
    print(result);
    return Center(
      child: Text(result,style:TextStyle(fontSize: 24)),
    );
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () => close(context, null)
        );
  }


  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionsList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();

    return ListView.builder(
        itemCount: suggestionsList.length,
        itemBuilder: (context, index) => ListTile(
              title: RichText(
                //富文本
                text: TextSpan(
                    text: suggestionsList[index].substring(0, query.length),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: suggestionsList[index].substring(query.length),
                          style: TextStyle(color: Colors.grey))
                    ]),
              ),
              onTap: () {
                query = suggestionsList[index];
                buildResults(context);
              },
            ));
  }

}
