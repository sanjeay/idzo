import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idzo/Widgets/Bottombar.dart';
void main(){
  runApp(MaterialApp(home: LoginForms(),));
}

class LoginForms extends StatefulWidget {
  const LoginForms({super.key});

  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State {
  var formkeys = GlobalKey<FormState>();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkeys,
        child: ListView(
          children: [
            ListTile(
              leading: TextButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Splash()));
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.brown,
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(top: 75),
              child: ListTile(
                title: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    "Welcome back ! Login with your credentials",style: GoogleFonts.poppins(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: 'Email',
                    labelStyle: GoogleFonts.poppins(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                textInputAction: TextInputAction.next,
                validator: (uname) {
                  if (uname!.isEmpty || !uname.contains('@')) {
                    return 'Enter a valid Email';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    labelText: 'Password',
                    labelStyle: GoogleFonts.poppins(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                textInputAction: TextInputAction.done,
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return 'Enter a valid password , length  should be greater than 6';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = formkeys.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BottomBarScreen()));
                    } else {
                      return;
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(60, 50),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child:  Text('Login',style: GoogleFonts.poppins(),)),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text('Dont have a account?',style: GoogleFonts.poppins(),),
                  TextButton(
                    onPressed: () {

                    },
                    child:  Text("SignUp",style: GoogleFonts.poppins(),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}