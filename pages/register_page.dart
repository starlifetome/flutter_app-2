

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class register_page extends StatefulWidget {
  const register_page({super.key});

  @override
  State<register_page> createState() => _register_pageState();
}

class _register_pageState extends State<register_page> {
   File? profileImage;
  final picaker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 100,),
          InkWell(
            onTap: seleteImage,
            child: Container(
              clipBehavior: Clip.antiAlias,
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey)
              ),
              child: profileImage!= null ? Image.file(profileImage!,fit: BoxFit.cover,) : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  Text('Upload Profile',textAlign: TextAlign.center ,)
                ],
              ),
            ),
          ),
            SizedBox(height: 50,),
            TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  label: Text('Enter  Name'),
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  label: Text('Enter  Email'),
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  label: Text('Enter  Password'),
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: (){
              },
              child: Text('Register ',style: TextStyle(color: Colors.white),),
              style: TextButton.styleFrom(
                shape: StadiumBorder(
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

extension registerExtension on _register_pageState{
  seleteImage() async{
    var picakfile = await picaker.pickImage(source: ImageSource.gallery,imageQuality: 80);
    if(picakfile != null){
      setState(() {
        profileImage = File(picakfile!.path);
      });
    }
  }
}
