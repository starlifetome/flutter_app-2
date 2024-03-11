import 'package:flutter/material.dart';
class noFound_pageEx extends StatelessWidget {
        Function? tryAgain;

        noFound_pageEx(this.tryAgain);
        @override
        Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset('assets/image/2n.png')),
              SizedBox(height: 10,),
            Center(child: Text('Your requested page is no found!',style: Theme.of(context).textTheme.headline6,)),
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
