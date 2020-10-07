import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:voltaire/constants/constants.dart';
import 'package:voltaire/pages/specific.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: Container(
            color: kBackgroundColor,
          ),
        ),
        Image.asset(
          'assets/images/audiobook.jpg',
          height: size.height * 0.3,
          width: size.width,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * 0.8,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: const [
                    Colors.white,
                    kBackgroundColor,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(62),
                  topRight: Radius.circular(62),
                )),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "My Library",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22),
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_right,
                                  size: 35, color: kPrimaryColor)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: LinearPercentIndicator(
                              width: size.width * 0.3,
                              lineHeight: 5.0,
                              percent: 0.6,
                              progressColor: kBackgroundColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: size.width * 0.65,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            RecomendBookCard(
                              author: "Bruce Pascoe",
                              title: "Salt",
                              image: "assets/images/1.jpg",
                              price: 40,
                              description:
                                  "A collection of stories and essays by the award-winning author of Dark Emu, Salt traverses Bruce Pascoe’s long career and explores his enduring fascination with Australia’s landscape, culture and history. Narrated by the author.",
                            ),
                            RecomendBookCard(
                              author: "Jess Hill",
                              title: "See What You Made Me Do",
                              image: "assets/images/2.jpg",
                              price: 50,
                              description:
                                  "A collection of stories and essays by the award-winning author of Dark Emu, Salt traverses Bruce Pascoe’s long career and explores his enduring fascination with Australia’s landscape, culture and history. Narrated by the author.",
                            ),
                            RecomendBookCard(
                              author: "Anna Krien",
                              title: "Act of Grace",
                              image: "assets/images/3.jpg",
                              price: 35,
                              description:
                                  "Crossing the frontiers of war, protest and reconciliation, Act of Grace intertwines characters in a brilliant narrative of guilt and reckoning, trauma and survival. Enter the world of this Miles Franklin–longlisted novel.",
                            ),
                            RecomendBookCard(
                              author: "Anita Heiss",
                              title: "Growing Up Aboriginal In Australia",
                              image: "assets/images/4.jpg",
                              price: 45,
                              description:
                                  "What is it like to grow up Aboriginal in Australia? This anthology, compiled by award-winning author Anita Heiss, showcases many diverse voices and experiences in order to answer that question. Listen to these stories of family, country and belonging.",
                            ),
                            RecomendBookCard(
                              author: "Hannelore Cayre",
                              title: "The GodMother",
                              image: "assets/images/5.jpg",
                              price: 64,
                              description:
                                  "With a gallery of traffickers, dealers, police officers and politicians, and an unforgettable woman at its centre, Hannelore Cayre’s bestselling noir novel casts a piercing and darkly humorous gaze on the criminal underworld of con­temporary France.",
                            ),
                            RecomendBookCard(
                              author: "Zora Neale Hurston",
                              title: "The Eyes Were Watching God",
                              image: "assets/images/6.jpg",
                              price: 47,
                              description:
                                  "Janie Crawford, an African-American woman in her forties, recounts her life starting with her sexual awakening, which she compares to a blossoming pear tree kissed by bees in spring.",
                            ),
                            RecomendBookCard(
                              author: "Don Bently",
                              title: "Without Sanction",
                              image: "assets/images/7.jpg",
                              price: 47,
                              description:
                                  "After surviving a clandestine operation that went tragically wrong, Matt Drake escaped Syria with his life, but little else. Now, to save the life of another, he must return to Syria and confront his biggest failure.",
                            ),
                          ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Recommended for You",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 22),
                          ),
                        ),
                      ],
                    ),
                    
                    Container(
                      height: size.width * 0.35,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            FeatureCard(
                              author: "Hannelore Cayre",
                              title: "The GodMother",
                              image: "assets/images/5.jpg",
                              price: 64,
                              description:
                                  "With a gallery of traffickers, dealers, police officers and politicians, and an unforgettable woman at its centre, Hannelore Cayre’s bestselling noir novel casts a piercing and darkly humorous gaze on the criminal underworld of con­temporary France.",
                            ),
                            FeatureCard(
                              author: "Zora Neale Hurston",
                              title: "The Eyes Were Watching God",
                              image: "assets/images/6.jpg",
                              price: 47,
                              description:
                                  "Janie Crawford, an African-American woman in her forties, recounts her life starting with her sexual awakening, which she compares to a blossoming pear tree kissed by bees in spring.",
                            ),
                            FeatureCard(
                              author: "Don Bently",
                              title: "Without Sanction",
                              image: "assets/images/7.jpg",
                              price: 47,
                              description:
                                  "After surviving a clandestine operation that went tragically wrong, Matt Drake escaped Syria with his life, but little else. Now, to save the life of another, he must return to Syria and confront his biggest failure.",
                            ),
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * 0.15,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.grey[700],
                    Colors.grey[800],
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                )),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/1.jpg"),
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text(
                        "Salt",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: kBackgroundColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                      Icon(Icons.replay, color: kBackgroundColor, size: 35,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LinearPercentIndicator(
                    width: size.width * 0.95,
                    lineHeight: 5.0,
                    percent: 0.6,
                    progressColor: kBackgroundColor,
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.skip_previous,
                          size: 35,
                        ),
                        color: kBackgroundColor,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.fast_rewind,
                          size: 35,
                        ),
                        color: kBackgroundColor,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.pause,
                          size: 35,
                        ),
                        color: kBackgroundColor,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.fast_forward,
                          size: 35,
                        ),
                        color: kBackgroundColor,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.skip_next,
                          size: 35,
                        ),
                        color: kBackgroundColor,
                        onPressed: () {},
                      ),
                    ])
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class RecomendBookCard extends StatelessWidget {
  const RecomendBookCard({
    Key key,
    this.image,
    this.title,
    this.author,
    this.price,
    this.description,
  }) : super(key: key);

  final String image, title, author, description;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SpecificPage(
                      image: image,
                      title: title,
                      author: author,
                      price: price,
                      description: description,
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding / 2,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5,
            right: kDefaultPadding / 2),
        width: size.width * 0.4,
        child: Stack(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  image,
                  width: size.width * 0.4,
                  height: size.width * 0.6,
                  fit: BoxFit.cover,
                )),
            Container(
              padding: EdgeInsets.only(bottom: 38),
              width: size.width * 0.4,
              height: size.width * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                    Colors.black
                  ],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "$title\n".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kBackgroundColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  ),
                  Text(
                    "$author",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kTextColor, fontSize: 18),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment(1.1, -1.1),
              child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '\$$price',
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.w700),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    Key key,
    this.image,
    this.title,
    this.author,
    this.description,
    this.price,
  }) : super(key: key);
  final String image, title, author, description;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding / 2,
            ),
            width: size.width * 0.55,
            height: 185,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding / 2,
            ),
            width: size.width * 0.55,
            height: 185,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.7),
                      Colors.black
                    ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kBackgroundColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
