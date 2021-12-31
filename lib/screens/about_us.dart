import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.1,
        leading:IconButton(onPressed: ()
            {Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_ios ,color: Colors.black,),),
        title: const Text('About Us' ,style: TextStyle(color: Colors.black,),),
      ),
      body: const Center(
        child: Text('WE are a programing team',style: TextStyle(color: Colors.grey,
        fontSize: 20
        ),),
      ),
    );
  }
}
