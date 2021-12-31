import 'package:my_broject/storyies_data/elshaba_stories_data.dart';
// قصص الصحابه
class ElShabaStoryData {
  final String title;
  final String text;
  final int id;

  ElShabaStoryData({
    required this.id,
    required this.title,
    required this.text,
  });
}

List<ElShabaStoryData> elshabaStories = [
  ElShabaStoryData(id: 1, title: "خديجة بنت خويلد", text: khadigaStory ) ,
  ElShabaStoryData(id: 2, title: "علي بن أبي طالب", text: aliStory ),
  ElShabaStoryData(id: 3, title: "أبو بكر الصديق", text: aboBakrStory ),
  ElShabaStoryData(id: 4, title: "زيد بن حارثة", text: zaidStory),
  ElShabaStoryData(id: 5, title: "عثمان بن عفان", text: osmanStory),
  ElShabaStoryData(id: 6, title: "الزبير بن العوام", text: elZobirStory),
  ElShabaStoryData(id: 7, title: "سعد بن أبي وقاص", text: saadStory),
  ElShabaStoryData(id: 8, title: "طلحة بن عبيد الله", text: talhaStory),

];