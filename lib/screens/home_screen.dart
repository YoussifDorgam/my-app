import 'package:flutter/material.dart';
import 'package:my_broject/models/product_model.dart';
import 'package:my_broject/screens/anbiaa_screens/anbiaa_story_screen.dart';
import 'package:my_broject/screens/cartoon_screens/cartoon_story_screen.dart';

import 'about_us.dart';
import 'elshaba_screens/elshaba_story_screen.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(2500),
        )),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 2, 70),
              child: Row(children: const [
                Text(
                  'Welcome back',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 27,
                    color: Colors.white,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 0, 5),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    )),
              ])),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.80),
                itemBuilder: (context, index) => CategoryCard(
                      product: products[index],
                    )),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          if (product.id == 1) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const AnbiaaStoriesScreen(),
            ));
          } else if (product.id == 2) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ElShabaStoriesScreen(),
            ));
          } else if (product.id == 3) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const CartoonStoriesScreen(),
            ));
          } else {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const AboutUs(),
            ));
          }
        },
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: product.color, borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 100,
                child: Image.asset(
                  product.image,
                  height: 100,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                product.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${product.courses} Story",
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
