import 'package:facebook_app_ui/facebook_app_ui/model/user_model.dart';
import 'package:flutter/material.dart';

class FacebookHomepage extends StatefulWidget {
  const FacebookHomepage({super.key});

  @override
  State<FacebookHomepage> createState() => _FacebookHomepageState();
}

class _FacebookHomepageState extends State<FacebookHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 100,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/awais.jpeg'),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: BoxBorder.all(),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'whats on your mind',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(Icons.camera_alt, color: Colors.black, size: 30),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Stories',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('See more'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: userInfo.length,
                      itemBuilder: (context, index) {
                        final user = userInfo[index];
                        return AspectRatio(
                          aspectRatio: 1.6 / 2,
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(user.storyImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(user.profileImage),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      user.name,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 40),
                  for (facebookUser user in userInfo) userFeed(user),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget userFeed(facebookUser User) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(User.profileImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        User.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        User.time,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz_outlined),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(
            User.status,
            style: TextStyle(fontSize: 15, color: Colors.black87),
          ),
          SizedBox(height: 20),
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(User.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              //for like and love Icon
              likeAndLove(Colors.blue, Icons.thumb_up),
              Transform.translate(
                offset: Offset(-13, 0),
                child: likeAndLove(Colors.red, Icons.favorite),
              ),

              Text(
                User.like,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              Spacer(),
              Text(
                User.comment,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(width: 5),
              Text(
                'Comments',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(width: 5),
              Text(
                '3 Share',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              likeCommentShare(
                Icons.thumb_up,
                User.isOnline == true ? Colors.blue : Colors.grey,
                "like",
              ),
              likeCommentShare(Icons.comment, Colors.grey, "Comments"),
              likeCommentShare(Icons.chat, Colors.grey, "Chat"),
            ],
          ),
        ],
      ),
    );
  }

  Container likeCommentShare(icon, color, name) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        border: BoxBorder.all(color: Colors.black12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 12, color: color),
          SizedBox(width: 5),
          Text(name, style: TextStyle(color: color)),
        ],
      ),
    );
  }

  Padding likeAndLove(color, icon) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white),
        ),
        child: Center(child: Icon(icon, size: 13, color: Colors.white)),
      ),
    );
  }
}
