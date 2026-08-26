class facebookUser {
  String name;
  String image;
  String status;
  String profileImage;
  bool isOnline;
  String like;
  String comment;
  String storyImage;
  String time;

  facebookUser({
    required this.name,
    required this.image,
    required this.status,
    required this.profileImage,
    required this.isOnline,
    required this.like,
    required this.comment,
    required this.storyImage,
    required this.time,
  });
}

List<facebookUser> userInfo = [
  facebookUser(
    name: 'Imran khan',
    image: "assets/images/imran1.png",
    status: "Real leaders don’t follow the crowd..\n"
        "they create the path",
    isOnline: true,
    like: '2.7M',
    comment: "345",
    storyImage: "assets/images/imran2.png",
    profileImage: "assets/images/imran3.png",
    time: "12 min ago",
  ),
  facebookUser(
    name: 'Salman khan',
    image: "assets/images/salman1.png",
    status: "Swag unka style nahi, identity hai 😎\n"
    "Bhai naam hi kaafi hai 🔥",
    isOnline: false,
    like: '2.1M',
    comment: "145",
    storyImage: "assets/images/salman2.png",
    profileImage: "assets/images/salman3.png",
    time: "52 min ago",
  ),facebookUser(
    name: 'Hania amir',
    image: "assets/images/hania1.png",
    status: "Smile itni pyari, dil khud haar jaye ❤️\n"
    "Natural beauty with pure vibes ✨",
    isOnline: false,
    like: '1.7M',
    comment: "45",
    storyImage: "assets/images/hania2.png",
    profileImage: "assets/images/hania3.png",
    time: "1 h ago",
  ),facebookUser(
    name: 'Feroz khan',
    image: "assets/images/feroz1.png",
    status: "Attitude mein bhi class hai 💯\n"
    "Har role mein ek alag hi fire 🔥",
    isOnline: false,
    like: '1.3M',
    comment: "105",
    storyImage: "assets/images/feroz2.png",
    profileImage: "assets/images/feroz3.png",
    time: "1 h ago",
  ),facebookUser(
    name: 'Dur e fishan',
    image: "assets/images/dure1.png",
    status: "Grace aur elegance ka perfect combo ✨\n"
    "Har look mein royal feel 👑",
    isOnline: true,
    like: '65.87k',
    comment: "185",
    storyImage: "assets/images/dure2.png",
    profileImage: "assets/images/dure3.png",
    time: "2 h ago",
  ),facebookUser(
    name: 'Naseem shah',
    image: "assets/images/naseem1.png",
    status: "Young blood, deadly pace ⚡\n"
    "Ground pe aaye toh game change 🔥",
    isOnline: true,
    like: '1.9M',
    comment: "169",
    storyImage: "assets/images/naseem2.png",
    profileImage: "assets/images/naseem3R.png",
    time: "4 h  ago",
  ),
];
