import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kowi/video.dart';
import 'package:video_player/video_player.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final followers = 155;
  final videosNo = 10;
  final following = 122;
  final List<String> videos = [
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
  ];

  double height = 0.0;

  double width = 0.0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(width * 0.14),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.065),
              child: ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.red,
                        ),
                        label: Text(
                          'Back',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.dashboard,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                          0,
                          width * 0.020,
                          width * 0.020,
                          width * 0.010,
                        ),
                        child: CircleAvatar(
                          radius: width * 0.14,
                          backgroundImage: NetworkImage(
                            'https://res.cloudinary.com/vidita/image/upload/v1625389956/home_lnsyxx.png',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              children: [
                                Text(
                                  videosNo.toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: width * 0.040,
                                  ),
                                ),
                                Text(
                                  'videos',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: width * 0.03,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  followers.toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: width * 0.040,
                                  ),
                                ),
                                Text(
                                  'followers',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: width * 0.03,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  following.toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: width * 0.040,
                                  ),
                                ),
                                Text(
                                  'following',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: width * 0.030,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      width * 0.020,
                      width * 0.020,
                      width * 0.010,
                    ),
                    child: Text(
                      'Shantanu',
                      style: TextStyle(
                        fontSize: width * 0.050,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    'Be Yourself, Everyone Else is Already Token',
                    style: TextStyle(
                      fontSize: width * 0.035,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'shantanu@gmail.com',
                    style: TextStyle(
                      fontSize: width * 0.027,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: width * 0.4,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.055,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: width * 0.4,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(width * 0.025),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Message',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.055,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new StaggeredGridView.countBuilder(
                    crossAxisCount: 4,
                    itemCount: 7,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) =>
                        GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => VideoApp(videos[index]),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(width * 0.045),
                            child: VideoWidget(
                              url: videos[index],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.white,
                                size: width * 0.035,
                              ),
                              label: Text(
                                '128',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.025,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    staggeredTileBuilder: (int index) =>
                        new StaggeredTile.count(2, index.isEven ? 2 : 1),
                    mainAxisSpacing: width * 0.025,
                    crossAxisSpacing: width * 0.025,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class VideoWidget extends StatefulWidget {
  final String url;

  const VideoWidget({required this.url});

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = new VideoPlayerController.network(widget.url)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    videoPlayerController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(
      videoPlayerController,
    );
  }
}
