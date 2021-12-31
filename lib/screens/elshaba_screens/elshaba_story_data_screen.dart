import 'package:flutter/material.dart';
class ELShabaStoriesDataScreen extends StatelessWidget {
  final  Storyid ;
  final Storytext ;
  final Storytitle ;
  const ELShabaStoriesDataScreen({Key? key, required this.Storyid , required this.Storytext ,required this.Storytitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Icon(Icons.arrow_back_ios ,color: Colors.black,),
        )),
        elevation: 1.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(Storytitle ,
              textDirection: TextDirection.rtl,
              style: const TextStyle(fontWeight: FontWeight.w700 ,color: Colors.black ,fontSize: 20),),
          ),
        ],
      ),
      body:
      SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(Storytext ,
          textDirection: TextDirection.rtl,
          style: const TextStyle(fontSize: 16),),
        ),
      ),
    );
  }
}
