import 'package:flutter/material.dart';
import 'package:my_broject/models/anbiaa_stories_model.dart';
import 'package:my_broject/screens/anbiaa_screens/anbiaa_story_data_screen.dart';



class AnbiaaStoriesScreen extends StatelessWidget {
  const AnbiaaStoriesScreen({Key? key}) : super(key: key);

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
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => ListOfStories(anbiaastory:anbiaastories[index]) ,
        itemCount: anbiaastories.length,
        shrinkWrap: true,
      ),
    );
  }
}

class ListOfStories extends StatelessWidget {
  final AnbiaaStoryData anbiaastory;
  ListOfStories({required this.anbiaastory});
  @override
  Widget build(BuildContext context) {

    return Column(
      children:
      [
        const SizedBox(height: 10,) ,
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: ()
            {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  AnbiaaStoriesDataScreen(Storyid: anbiaastory.id, Storytext: anbiaastory.text,Storytitle: anbiaastory.title, ),));

            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),

              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    const Icon(Icons.arrow_back_ios , color: Colors.black),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: 20),
                      child: Text(anbiaastory.title , maxLines: 1, style: const TextStyle(fontSize: 16),),
                    ),
                    const Icon(Icons.menu_book_outlined , color: Colors.black,),




                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
