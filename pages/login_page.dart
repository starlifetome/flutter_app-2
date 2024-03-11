import 'package:blogapp/extension/contextEx.dart';
import 'package:blogapp/pages/register_page.dart';
import 'package:flutter/material.dart';
class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  var _fromKey = GlobalKey<FormState>();
  var emailTeac = TextEditingController();
  var passwordTeac = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _fromKey,
          child: Column(
            children: [
              SizedBox(height: 150,),
              FlutterLogo(size: 150,),
              SizedBox(height: 20,),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return 'required';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                  label: Text('Enter  Email'),
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return 'required';
                  }
                  if(value.length < 7){
                    return 'at least 7 digits password';
                  }
                  return null;
                },

                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  label: Text('Enter  Password'),
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
                 Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Expanded(
               child: TextButton(
                 onPressed: (){
                   bool isValite = _fromKey.currentState!.validate();
                   if(isValite){
                     return;
                   }
                 },
                 child: Text('Login',style: TextStyle(color: Colors.white),),
                 style: TextButton.styleFrom(
                   shape: StadiumBorder(
                   ),
                 ),
               ),
             ),
             SizedBox(width: 20,),
             Expanded(
               child: TextButton(
                 onPressed: (){
                   context.go(register_page());
                 },
                 child: Text('Register ',style: TextStyle(color: Colors.white),),
                 style: TextButton.styleFrom(
                   backgroundColor: Theme.of(context).primaryColor,
                   shape: StadiumBorder(
                   ),
                 ),
               ),
             ),
           ],
                 )
            ],
          ),
        ),
      ),
    );
  }
}
