import 'package:flutter/material.dart';
import 'package:supportdesk/admin_ticket.dart';
import 'package:supportdesk/new.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formkey =GlobalKey<FormState>();
  final username =TextEditingController();
  final password =TextEditingController();

  bool isvisible =false;

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.lightBlue[100],
        body: ListView(
        children: [
          Spacer(),
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Form(
                key: formkey,
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child:Image.asset('assets/logo_wobg.png',height: 150,width: 150,)
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:50),
                        child: TextFormField(
                          validator: (email){
                            if (email!.isEmpty)
                              return "please enter Email";
                            else (
                                print(email)
                            );
                              return null;
                          },
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                            prefixIcon: Icon(Icons.email, color:Colors.green),
                            labelText: ("Enter your Email"),
                            labelStyle: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:50.0),
                        child: TextFormField(        validator: (email){
                          if (email!.isEmpty)
                            return "please enter password ";
                          else
                          return null;
                        },
                          obscureText: !isvisible,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide (color: Colors.green)),
                            prefixIcon: Icon(Icons.key,
                                color:Colors.green),
                            labelText: ("Password"),
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  isvisible = !isvisible;
                                });
                              },
                              icon: Icon(isvisible? Icons.visibility : Icons.visibility_off),
                            ),
                            labelStyle: TextStyle(
                                color: Colors.green
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: ElevatedButton(onPressed: () {
                              {
                                print("valid");
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>new_page(),),);
                              }
                            }, child: Text("Forget Password ?"))),

                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:100),
                        child: Align(

                            alignment: Alignment.center,
                            child: ElevatedButton(onPressed: () {
                              if(formkey.currentState!.validate()) {
                                print("valid");
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>adminticket(),),);
                              }

                            },
                              child: Text("Login to account"),
                            ),
                        ),
                      ),
                    ],
                  )
                ),
              ),
            ),
          ],
         ),
       ],
      ),
    );
  }
}
