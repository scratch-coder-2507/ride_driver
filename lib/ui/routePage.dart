// import 'package:driver_app/ui/home.dart';

// import 'dart:js';

// import 'dart:js';

// import 'dart:js';

import 'package:driver_app/ui/settings.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class RoutePage extends StatefulWidget {
  static List<String> options = <String>[
    "Abhinav Nagar - Shantivan",
    "Wework - Bandra Highway",
  ];
   const RoutePage({Key? key,}) : super(key: key);

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  // TextEditingController routeTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TextEditingController routeTextEditingController = TextEditingController();
    // TextEditingController routeTextEditingController = TextEditingController();
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(21.0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Settings()));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.settings,
                size: 35,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'images/RideLogo.jpeg',
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              SearchField(),
              const SizedBox(
                height: 100,
              ),
              Column(
                children: const [
                  // SizedBox(height: 100,),
                  Text(
                    "Driver ID: 8850270536",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "Vehicle No: MHAA024000",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget SearchField() {
    return Container(
      margin: const EdgeInsets.only(left: 11.0),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 11.0),
              child: const Text(
                "Select Route",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
      Autocomplete(
        // controller: routeTextEditingController,
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text == '') {
            return const Iterable<String>.empty();
          }else{
            List<String> matches = <String>[];
            matches.addAll(RoutePage.options);

            matches.retainWhere((s){
              return s.toLowerCase().contains(textEditingValue.text.toLowerCase());
            });
            return matches;
          }
        },
        onSelected: (String selection) {
          // debugPrint('You just selected $selection');
          Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => QrCode(
                                    result: selection,
                                  )));
          // print('You just selected $selection');
        },

      ),
            // TextField(
            //       controller: routeTextEditingController,
            //
            //       // decoration: InputDecoration(
            //       //     prefixIconColor: Colors.black,
            //       //     hintText: "Search",
            //       //     prefixIcon: const Icon(Icons.search),
            //       //     border: OutlineInputBorder(
            //       //       borderSide: const BorderSide(
            //       //           color: Colors.black,
            //       //           width: 5,
            //       //           style: BorderStyle.solid),
            //       //       borderRadius: BorderRadius.circular(40),
            //       //     )),
            //       onSubmitted: (String value) {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => QrCode(
            //                       result: value,
            //                     )));
            //       },
            //       //   return AutoComplete(
            //       //       optionsBuilder: optionsBuilder,
            //       //       displayStringForOption: displayStringForOption,
            //       //       optionsViewBuilder: optionsViewBuilder);
            //       // }
            //       // onTap: (){
            //       //   showSearch(context: context, delegate: CustomSearchDeligate());
            //       // },
            //       ),
          ],
        ),
      ),
    );
  }
}

//
// class ListViewScreen extends StatelessWidget {
//    ListViewScreen({Key? key}) : super(key: key);
//   List<String> searchTerms = [
//     "Abhinav Nagar - Shantivan",
//     "Wework - Bandra Highway",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     var matchQuery;
//     return Scaffold(
//       body: ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//     )
//     );
//   }
// }

class AutoComplete extends StatelessWidget {
  static const List<String> options = <String>[
    "Abhinav Nagar - Shantivan",
    "Wework - Bandra Highway",
  ];
  const AutoComplete(
      {Key? key,
      required Function(TextEditingValue textEditingValue) optionsBuilder,
      required Function(dynamic option) displayStringForOption,
      required Align Function(BuildContext context,
              AutocompleteOnSelected<Object> onSelected, Iterable options)
          optionsViewBuilder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoComplete(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return options.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      displayStringForOption: (option) => option.name,
      optionsViewBuilder: (BuildContext context,
          AutocompleteOnSelected onSelected, Iterable options) {
        return Align(
          alignment: Alignment.topLeft,
          child: Material(
            child: Container(
              width: 300,
              color: Colors.teal,
              child: ListView.builder(
                padding: EdgeInsets.all(10.0),
                itemCount: options.length,
                itemBuilder: (BuildContext context, int index) {
                  final option = options.elementAt(index);

                  return GestureDetector(
                    onTap: () {
                      onSelected(option);
                    },
                    child: ListTile(
                      title: Text(option.name,
                          style: const TextStyle(color: Colors.white)),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
