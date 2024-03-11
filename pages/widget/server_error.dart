import 'package:flutter/material.dart';
class server_error extends StatelessWidget {

  Function? tryAgain;
  server_error({this.tryAgain});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/image/3e.png')),
            SizedBox(height: 10,),
            Center(child: Text('internal server error',style: Theme.of(context).textTheme.headline6,)),
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
