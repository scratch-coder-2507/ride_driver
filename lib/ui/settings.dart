import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Image.asset('images/RideLogo.jpeg',
              width: MediaQuery.of(context).size.width*0.4,
              height: MediaQuery.of(context).size.height*0.4,
            ),
            Card(
                // borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Column(
                children: const [
                  ListTile(
                    shape: Border(
                      bottom: BorderSide(
                        color: Colors.black54,
                      ),
                      top: BorderSide(
                        color: Colors.black54,
                      ),
                    ),
                    title: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Edit Account",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                      ),),
                    ),
                  ),
                  SizedBox(height: 0.4,),
                  ListTile(
                    shape: Border(
                        bottom: BorderSide(
                          color: Colors.black54,
                        ),
                        top: BorderSide(
                          color: Colors.black54,
                        )
                    ),
                    title: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("HelpLine Number",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100,),
            Column(
              children: const [
                SizedBox(height: 100,),
                Text("Driver ID: 8850270536", style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                    fontWeight: FontWeight.w800
                ),
                ),
                Text("Vehicle No: MHAA024000", style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                    fontWeight: FontWeight.w800
                ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
