import 'package:flutter/material.dart';
import 'package:insta/widgets/buttons.dart';
import 'package:insta/widgets/followers_image.dart';
import 'package:insta/widgets/highlight_icons.dart';
import 'package:insta/widgets/post.dart';
import 'package:insta/constants.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const Icon(
          Icons.arrow_back_outlined,
          color: Colors.black,
        ),
        title: const Row(
          children: [
            Text(
              'zhrwmmdi',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.verified_sharp,
              color: Colors.blue,
              size: 18,
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.add_alert_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.more_vert_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //PROFILE PHOTO
                          Expanded(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                              Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xff8A3BEE),
                                    Color(0xffF200B7),
                                    Color(0xffFE9402)
                                  ],
                                ),
                              ),
                              ),
                                Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white
                                  ),
                                ),
                                const CircleAvatar(
                                  radius: 35,
                                  backgroundImage: AssetImage('images/33.png'),
                                )
                              ],
                            )
                          ),
                          const SizedBox(
                            width: 45,
                          ),
                          //FOLLOWERS, FOLLOWINGS AND POSTS
                          const Expanded(
                            child: Column(
                              children: [
                                Text(
                                  '25',
                                  style: kNumberTitleStyle,
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Posts',
                                  style: kTextTitleStyle)
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Column(
                              children: [
                                Text(
                                  '183',
                                  style: kNumberTitleStyle
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Followers',
                                  style: kTextTitleStyle
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Column(
                              children: [
                                Text(
                                  '180',
                                  style: kNumberTitleStyle,
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Followings',
                                  style: kTextTitleStyle,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      //BIOGRAPHY
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Zahra Mohammadi',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'cursive',
                                fontSize: 17),
                          ),
                          SizedBox(height: 7),
                          Text('Go BEYOND your predestination'),
                          SizedBox(height: 3),
                          Text('Artist'),
                          SizedBox(height: 3),
                          Text('Software Engineering'),
                          SizedBox(height: 3),
                          Text('Java Developer'),
                          SizedBox(height: 3),
                          Text('Flutter Developer'),
                          SizedBox(height: 3),
                          Text('به حکمتش دل بسپار'),
                          Text('-------------------------------')
                        ],
                      ),
                      const SizedBox(height: 8),
                      //FAMILIAR FOLLOWERS IMAGE
                      Row(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 28),
                                  child: FollowersAvatar(imageSource: 'images/face.jpg'),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 14),
                                  child: FollowersAvatar(imageSource: 'images/face1.jpg'),
                              ),
                              FollowersAvatar(imageSource: 'images/face2.jpg'),
                            ],
                          ),
                          const SizedBox(width: 10),
                                //FAMILIAR FOLLOWERS NAMES
                                Text('Followed by ',
                                    style: TextStyle(
                                        color: Colors.grey[700], fontSize: 12)),
                                const Text(
                                  'largeximpv, yasharzavari, parniankarimian ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 12),
                                ),
                                Text(
                                  '+8 more',
                                  style: TextStyle(
                                      color: Colors.grey[700], fontSize: 12),
                                )
                        ],
                      ),
                      const SizedBox(height: 10),
                      //BUTTONS
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Button(
                              child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Following'),
                                Icon(Icons.arrow_drop_down)
                              ],
                            ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            flex: 4,
                            child: Button(
                              child: const Text('Message'),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Button(
                                child: const Icon(Icons.person_add, size: 17)
                            )
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      //SCROLLABLE HIGHLIGHT STORIES
                      SizedBox(
                        height: 75,
                        width: double.infinity,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                                children: [
                                  Highlight(
                                    text: 'Book',
                                    imageSource: 'images/book.jpg',
                                  ),
                                  const SizedBox(width: 15),
                                  Highlight(
                                    text: 'Food',
                                    imageSource: 'images/food.jpg',
                                  ),
                                  const SizedBox(width: 15),
                                  Highlight(
                                    text: 'Flower',
                                    imageSource: 'images/flower.jpg',
                                  ),
                                  const SizedBox(width: 15),
                                  Highlight(
                                    text: 'Hiii',
                                    imageSource: 'images/stand1.jpg',
                                  ),
                                  const SizedBox(width: 15),
                                  Highlight(
                                    text: 'programming',
                                    imageSource: 'images/programming1.png',
                                  ),
                                  const SizedBox(width: 15),
                                  Highlight(
                                    text: 'Photography',
                                    imageSource: 'images/photography.jpg',
                                  ),
                                  const SizedBox(width: 15),
                                  Highlight(
                                    text: 'Car',
                                    imageSource: 'images/car.jpg',
                                  ),
                                  const SizedBox(width: 15),
                                  Highlight(
                                    text: 'Hiii',
                                    imageSource: 'images/stand1.jpg',
                                  ),
                                  const SizedBox(width: 15),
                                  Highlight(
                                    text: 'Read',
                                    imageSource: 'images/book.jpg',
                                  ),
                                  const SizedBox(width: 15),
                                  Highlight(
                                    text: 'MY LOve',
                                    imageSource: 'images/love.jpg',
                                  ),
                                  const SizedBox(width: 15),
                                  Highlight(
                                    text: 'coffee',
                                    imageSource: 'images/coffe.png',
                                  )
                                ],
                            ),
                      ),
                      const SizedBox(height: 20),
                      //TABS
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.grid_on, size: 27),
                          Icon(
                            Icons.video_library_outlined,
                            size: 27,
                            color: Colors.grey[400],
                          ),
                          Icon(
                            Icons.person_pin_outlined,
                            size: 27,
                            color: Colors.grey[400],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                    ],
                  ),
                ),
                //POSTS
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 1,
                      width: 164,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 3),
                    Wrap(
                      spacing: 3,
                      runSpacing: 3,
                      children: [
                        Post(imageSource: 'images/face1.jpg'),

                        Post(imageSource: 'images/face.jpg'),
                        Post(imageSource: 'images/scene.jpg'),
                        Post(imageSource: 'images/stand1.jpg'),
                        Post(imageSource: 'images/face2.jpg'),
                        Post(imageSource: 'images/flower.jpg'),
                        Post(imageSource: 'images/car.jpg'),
                        Post(imageSource: 'images/programming1.png'),
                        Post(imageSource: 'images/photography.jpg'),
                        Post(imageSource: 'images/coffe.png'),
                        Post(imageSource: 'images/book.jpg'),
                      ],
                    ),
                  ],
                ),
              ],
        ),
      ),
      //BOTTOM TABS
      bottomNavigationBar: BottomAppBar(
        height: 50,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(Icons.home_outlined, size: 27),
            const Icon(Icons.search_outlined, size: 27),
            const Icon(Icons.add_box_outlined, size: 27),
            const Icon(Icons.video_library_outlined, size: 27),
            Container(
                decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle
                ),
                child: const Padding(
                  padding: EdgeInsets.all(2),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/33.png'),
                    radius: 12,
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}