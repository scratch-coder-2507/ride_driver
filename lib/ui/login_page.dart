import 'package:driver_app/ui/register_page.dart';
import 'package:driver_app/ui/routePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text("Login Page"),
      //   centerTitle: true,
      // ),
      body: LoginBody(),
    );
  }
}

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.deepPurple.shade100,
        body: SingleChildScrollView(
            child: Center(
          child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.width/3),
                  child: Text("Welcome to", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue[900]
                  ),),
                ),
                const SizedBox(height: 5,),
                Image.asset(
                  'images/RideLogo.jpeg',
                  width: MediaQuery.of(context).size.width * 0.4,
                  // height: MediaQuery.of(context).size.height * 0.4,
                ),
                const SizedBox(height: 40,),
                Container(
                  margin: const EdgeInsets.only(left: 11.0, right: 11.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25, color: Colors.blue[900]
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email, size: 25,color: Colors.black87,),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              labelText: "User Id",labelStyle: const TextStyle(
                              fontSize: 20
                          )),
                        ),
                      ),
                      // SizedBox(height: 10,),
                      Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                            Padding(
                             padding: const EdgeInsets.all(11.0),
                             child: Text(
                               "Password",
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 25,color: Colors.blue[900]
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: TextField(
                               controller: passwordController,
                               obscureText: true,
                               decoration: InputDecoration(
                                 prefixIcon: const Icon(Icons.password, size: 25,color: Colors.black87,),
                                   border: OutlineInputBorder(
                                       borderRadius:
                                           BorderRadius.circular(30.0)),
                                   labelText: "Password",labelStyle: const TextStyle(
                                 fontSize: 20
                               )),
                             ),
                           ),
                         ],
                       ),
                      const SizedBox(height: 25,),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(right: 5.0),
                          height: MediaQuery.of(context).size.height*0.07,
                          width: MediaQuery.of(context).size.width*0.5,
                          child: ElevatedButton(
                            onPressed: () {
                              print(nameController.text);
                              print(passwordController.text);
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const RoutePage()));
                            },
                            child: const Text("Login",style: TextStyle(
                              fontSize: 20
                            ),),
                          ),
                        ),
                      ),
                      const SizedBox(height: 18,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?",style: TextStyle(
                              fontSize: 18
                          ),
                          ),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
                          },
                              child: const Text("Sign up",style: TextStyle(
                                  fontSize: 18
                              ),
                              )
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ]),
        )));
  }
}
