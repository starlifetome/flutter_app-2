import 'package:flutter/material.dart';
class internet_error extends StatelessWidget {
  Function? tryAgain;
  internet_error({this.tryAgain});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/image/1c.png')),
            SizedBox(height: 10,),
            Center(child: Text('checked your internet connection and try againg',style: Theme.of(context).textTheme.headline6,)),
            SizedBox(height: 10,),
            Center(
              child: TextButton(
                  onPressed: () {
                    tryAgain!();
                  },
                  child: Text('Try Again',style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}
