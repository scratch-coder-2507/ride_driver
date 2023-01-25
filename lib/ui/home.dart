import 'package:flutter/material.dart';

import 'package:qr_flutter/qr_flutter.dart';

class QrCode extends StatelessWidget {
  // class Result {
  // final String result;
  // const Result(this.result);
  // }

  final String result;
  QrCode({
    Key? key,
    required this.result,
  }) : super(key: key);
  // late String result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.03),
            // alignment: Alignment.bottomLeft,

            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Column(
                children: [
                  // const SizedBox(height: 25,),
                  //    Container(
                  //     alignment: Alignment.topLeft,
                  //     child: const Icon(Icons.arrow_back_ios,
                  //     size: 51,
                  //
                  //     ),
                  // ),

                  // padding: const EdgeInsets.all(11.0),
                  //  headView(),
                  const Divider(
                    height: 80,
                    color: Colors.transparent,
                  ),
                  // const SizedBox(height: 45,),
                  midView(),
                  const Divider(
                    height: 51,
                    color: Colors.transparent,
                  ),
                  // const SizedBox(height: 40,),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20,),
                        const Divider(height: 20,color: Colors.transparent,),
                        Row(
                          children: [
                            const SizedBox(
                              width: 11,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Trip Cost",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    result,
                                    style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  const SizedBox(
                                    width: 11,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.indigo,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "10",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

//
  Widget midView() {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          QrImage(
            gapless: true,
            size: 300,
            data: '',
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(height: 20,
          color: Colors.transparent,),
          const Text(
            "Driver ID: 8850270536",
            style: TextStyle(
                color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w800),
          ),
          const Text(
            "Vehicle No: MHAA024000",
            style: TextStyle(
                color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }
}
