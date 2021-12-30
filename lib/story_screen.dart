import 'package:flutter/material.dart';
import 'package:my_broject/product_model.dart';
import 'package:my_broject/story_data_screen.dart';



class StoryScreen extends StatelessWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Icon(Icons.arrow_back_ios),
        )),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(150),
            )),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
            Padding(
              padding: EdgeInsets.only(right: 20, bottom: 20),
              child: Text(
                'قصص الانبياء',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 27,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Listscreev(story:stories[index]) ,
        itemCount: stories.length,
        shrinkWrap: true,
      ),
    );
  }
}



class Listscreev extends StatelessWidget {
  final StoryData story;
  Listscreev({required this.story});
  @override
  Widget build(BuildContext context) {

    return Column(
      children:
      [
        const SizedBox(height: 10,) ,
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black),

            ),
            child:  ListTile(
              onTap: ()
              {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  Test2Screen(Storyid: story.id, Storytext: story.text,Storytitle: story.title, ),));
              },
              title:  Padding(
                padding: const EdgeInsetsDirectional.only(start: 60),
                child: Text(story.title , maxLines: 1,),
              ),
              trailing: const Icon(Icons.menu_book_outlined , color: Colors.black,),
              leading: const Icon(Icons.arrow_back_ios , color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
