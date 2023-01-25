
import 'package:flutter/material.dart';

// import '../ui/NewRoute.dart';
// import '../ui/home.dart';

class CustomSearchDeligate extends SearchDelegate {
  TextEditingController routeTextEditingController = TextEditingController();
  List<String> searchTerms = [
    "Abhinav Nagar - Shantivan",
    "Wework - Bandra Highway",
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }
  //   List<String> matchQuery = [];
  //   for (var i in searchTerms) {
  //     if (i.toLowerCase().contains(query.toLowerCase())) {
  //       matchQuery.add(i);
  //     }
  //   }
  //   return ListView.builder(
  //     itemCount: matchQuery.length,
  //     itemBuilder: (context, index) {
  //       var result = matchQuery[index];
  //       return ListTile(
  //         title: Text(result),
  //       );
  //     },
  //   );
  // }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var i in searchTerms) {
      if (i.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(i);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Column(
            children: [
              Text(result),
            ],
          ),

          // onTap: (){
          //   Navigator.push(context, MaterialPageRoute(builder: (context) => NewRoute(result: result,)));
          // },
          // onTap: (){
          //   close(context, result);
          // },
          // onTap: (){
          //
          //   Navigator.push(context, MaterialPageRoute(builder: (context) => QrCode(result: result)));
          // },
        );
      },
    );
  }

}