import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Awesome Dialog Example"),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 1st awesome Dialog Box
            AnimatedButton(
              height: 30,
               width: 200,
               text: "Warning Dialog",
                color: Colors.deepOrangeAccent,
                pressEvent: (){
                 AwesomeDialog(
                   width: 300,
                   context: context,
                   dialogType: DialogType.warning,// set icon
                   showCloseIcon: true,
                   animType: AnimType.topSlide,// when i press ok or cancle button ,it finished on top position
                   title: "Warning",
                   desc: "This is an warning description of the contesxt!",
                   btnOkOnPress: (){},
                   btnCancelOnPress: (){},
                 ).show();
                }
            ),

            SizedBox(height: 50,),
            // 2nd awesome Dialog Box
            AnimatedButton(
                height: 30,
                width: 200,
                text: "Success Dialog",
                color: Colors.cyan,
                pressEvent: (){
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.success,// set icon
                    showCloseIcon: true, //set the top-right side cross icon
                    animType: AnimType.bottomSlide,// when i press ok or cancle button ,it finished on bottom position
                    title: "Success",
                    desc: "This is the success journey of our new life!",
                    btnOkOnPress: (){},
                    btnCancelOnPress: (){},
                  ).show();
                }
            ),
            
          ],
        )
          
        
      ),
    );
  }
}
