import 'package:driver_app/ui/login_page.dart';
import 'package:driver_app/ui/routePage.dart';
import 'package:flutter/material.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController vehicleController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.width/4),
          child: Column(
            children: [
              const SizedBox(height: 15,),
              Image.asset(
                'images/RideLogo.jpeg',
                width: MediaQuery.of(context).size.width * 0.7,
                // height: MediaQuery.of(context).size.height * 0.4,
              ),
              const SizedBox(height: 50,),
          Container(
          margin: const EdgeInsets.only(left: 11.0, right: 11.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      "Register as a Driver",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28, color: Colors.blue[900]
                      ),
                    ),
                  ],
                ),
              ),
              //Name Field
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: nameController,
                    decoration: const InputDecoration(
                      labelText: "Name",labelStyle: TextStyle(
                              fontSize: 18
                          )
                    ),
                ),
              ),
              //Email Field
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      labelText: "Email Id",labelStyle: TextStyle(
                      fontSize: 18
                  )
                  ),
                ),
              ),
              //Phone no Field
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                      labelText: "Phone No",labelStyle: TextStyle(
                      fontSize: 18
                  )
                  ),
                ),
              ),
              //Vehicle Field
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: vehicleController,
                  decoration: const InputDecoration(
                      labelText: "Vehicle No",labelStyle: TextStyle(
                      fontSize: 18
                  )
                  ),
                ),
              ),
              //Password Field
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                      labelText: "Password",labelStyle: TextStyle(
                      fontSize: 18
                  )
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(11.0),
              //   child: Text(
              //     "Enter your name",
              //     style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //         fontSize: 25, color: Colors.blue[900]
              //     ),
              //   ),
              // // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: TextField(
              //     controller: nameController,
              //     decoration: InputDecoration(
              //         // prefixIcon: const Icon(Icons.perm_contact_calendar_rounded, size: 25,color: Colors.black87,),
              //         border: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(30.0)),
              //         labelText: "Name",labelStyle: const TextStyle(
              //         fontSize: 20
              //     )),
              //   ),
              // ),
              // SizedBox(height: 10,),
                                                   //Email Id Field
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(11.0),
              //       child: Text(
              //         "Email Id",
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold,
              //             fontSize: 25,color: Colors.blue[900]
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: TextField(
              //         controller: emailController,
              //         decoration: InputDecoration(
              //             prefixIcon: const Icon(Icons.email, size: 25,color: Colors.black87,),
              //             border: OutlineInputBorder(
              //                 borderRadius:
              //                 BorderRadius.circular(30.0)),
              //             labelText: "Email Id",labelStyle: const TextStyle(
              //             fontSize: 20
              //         )),
              //       ),
              //     ),
              //                               //Phone No Field
              //     Padding(
              //       padding: const EdgeInsets.all(11.0),
              //       child: Text(
              //         "Phone No",
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold,
              //             fontSize: 25, color: Colors.blue[900]
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: TextField(
              //         controller: phoneController,
              //         decoration: InputDecoration(
              //             prefixIcon: const Icon(Icons.mobile_friendly, size: 25,color: Colors.black87,),
              //             border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(30.0)),
              //             labelText: "Mobile No",labelStyle: const TextStyle(
              //             fontSize: 20
              //         )),
              //       ),
              //     ),
              //                        //Vehicle No Field
              //     Padding(
              //       padding: const EdgeInsets.all(11.0),
              //       child: Text(
              //         "Vehicle No",
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold,
              //             fontSize: 15, color: Colors.blue[900]
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: TextField(
              //         controller: vehicleController,
              //         decoration: InputDecoration(
              //             prefixIcon: const Icon(Icons.electric_bike, size: 25,color: Colors.black87,),
              //             border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(30.0)),
              //             labelText: "Vehicle No",labelStyle: const TextStyle(
              //             fontSize: 20
              //         )),
              //       ),
              //     ),
              //                          //Password Field
              //     Padding(
              //       padding: const EdgeInsets.all(11.0),
              //       child: Text(
              //         "Password",
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold,
              //             fontSize: 25, color: Colors.blue[900]
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: TextField(
              //         controller: passwordController,
              //         obscureText: true,
              //         decoration: InputDecoration(
              //             prefixIcon: const Icon(Icons.password, size: 25,color: Colors.black87,),
              //             border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(30.0)),
              //             labelText: "Password",labelStyle: const TextStyle(
              //             fontSize: 20
              //         )),
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(height: 25,),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(right: 5.0),
                  height: MediaQuery.of(context).size.height*0.08,
                  width: MediaQuery.of(context).size.width*0.8,
                  child: SizedBox(
                    // width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        print(nameController.text);
                        print(emailController.text);
                        print(phoneController.text);
                        print(vehicleController.text);
                        print(passwordController.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const RoutePage()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: const BorderSide(color: Colors.blue),
                        ),
                        // minimumSize: Size(100, 90),
                      ),
                      child: const Text("Create Account",style: TextStyle(
                          fontSize: 20
                      ),),
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 18,),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Already have an account?",style: TextStyle(
                        fontSize: 18,
                      color: Colors.blue
                    ),
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
                    },
                        child: const Text("Login Here",style: TextStyle(
                            fontSize: 18
                        ),
                        )
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40,),
            ],
          ),
        ),
    ]),
    ),
      )
    );
  }
}

