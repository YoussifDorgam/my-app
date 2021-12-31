import 'package:my_broject/storyies_data/cartoon_stories_data.dart';
// قصص كرتون
class CartoonStoryData {
  final String title;
  final String text;
  final int id;

  CartoonStoryData({
    required this.id,
    required this.title,
    required this.text,
  });
}

List<CartoonStoryData> cartoonStories = [
  CartoonStoryData(id: 1, title: "قصة حرية الذئب", text: foxStory ) ,
  CartoonStoryData(id: 2, title: "قصة القرد والسلحفاة", text: monkeyAndTurtleStory ),
  CartoonStoryData(id: 3, title: "حدوتة الارنب", text: rabbiteStory ),
  CartoonStoryData(id: 4, title: "الكتكوت المغرور", text: katkotStory),
  CartoonStoryData(id: 5, title: "حارس المرمى", text: goalKeeperStory),
  CartoonStoryData(id: 6, title: "قصة سعاد والتلفاز", text: kidsStory),
  CartoonStoryData(id: 7, title: "قصة السلحفاة", text: turtleStory),

];