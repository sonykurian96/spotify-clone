import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:share_plus/share_plus.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:spotifyui/state_management/notify.dart';

class AudioPlayerPro extends StatefulWidget {
  AudioPlayerPro(
      {required this.audioURL, required this.image, required this.name});

  final String audioURL;
  final String image;
  final String name;

  @override
  _AudioPlayerProSetup createState() => _AudioPlayerProSetup();
}

class _AudioPlayerProSetup extends State<AudioPlayerPro> {
  Notify notify = Get.find();

  bool isHeartPressed = false;
  bool isPlayPressed = false;

  // double _value = 0;
  Duration _duration = new Duration();
  Duration _position = new Duration();
  static AudioPlayer advancedPlayer = AudioPlayer();

  String song1Name = 'Daadario classical';

  String altImage =
      "https://www.music-for-music-teachers.com/images/xgirl-with-guitar-black-and-white-502-height.jpg.pagespeed.ic.ok6HIO6Pb2.jpg";

  bool isNext = false;
  bool isIconPressed = false;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    advancedPlayer.onDurationChanged
        .listen((d) => setState(() => _duration = d));

    advancedPlayer.onPositionChanged.listen((p) => setState(() => _position = p));

  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    advancedPlayer.seek(newDuration);
  }

  double setChanged() {
    Duration newDuration = Duration(seconds: 0);
    advancedPlayer.seek(newDuration);
    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 40,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.brown,
              Colors.black87,
            ],
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    LineIcons.angleDown,
                    color: Colors.white,
                    size: 24,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "PLAYING FROM ALBUM",
                        style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        isNext ? song1Name : widget.name,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                          fontFamily: "ProximaNova",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    LineIcons.verticalEllipsis,
                    // LineIcons.ellipsis_v,
                    color: Colors.white,
                    size: 24,
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              isNext
                  ? Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(altImage,
                            height: 325, width: 50, fit: BoxFit.cover),
                      ),
                      width: 325,
                    )
                  : Container(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(widget.image)),
                      width: 325,
                    ),
              SizedBox(
                height: 100,
              ),
              Container(
                padding: EdgeInsets.only(left: 25, right: 25),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          isNext ? song1Name : widget.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "ProximaNova",
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 0.2,
                          ),
                        ),
                        Text(
                          "Classics",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontFamily: "ProximaNovaThin",
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: (isHeartPressed == true)
                          ? Icon(
                              Icons.favorite,
                              color: Colors.green,
                              size: 30,
                            )
                          : Icon(
                              LineIcons.heart,
                              // LineIcons.heart_o,
                              color: Colors.grey.shade400,
                              size: 30,
                            ),
                      onPressed: () {
                        setState(() {
                          isHeartPressed =
                              (isHeartPressed == false) ? true : false;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    width: double.infinity,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey.shade600,
                        activeTickMarkColor: Colors.white,
                        thumbColor: Colors.white,
                        trackHeight: 3,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 4,
                        ),
                      ),
                      child: Slider(
                        value: (_position.inSeconds.toDouble() !=
                                _duration.inSeconds.toDouble())
                            ? _position.inSeconds.toDouble()
                            : setChanged(),
                        min: 0,
                        max: _duration.inSeconds.toDouble(),
                        onChanged: (double value) {
                          setState(() {
                            seekToSecond(value.toInt());
                            value = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "${_position.inMinutes.toInt()}:${(_position.inSeconds % 60).toString().padLeft(2, "0")}",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontFamily: "ProximaNovaThin",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${_duration.inMinutes.toInt()}:${(_duration.inSeconds % 60).toString().padLeft(2, "0")}",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontFamily: "ProximaNovaThin",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 22, right: 22),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      LineIcons.random,
                      color: Colors.grey.shade400,
                    ),
                    InkWell(
                      child: Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                        size: 40,
                      ),
                      onTap: () {
                        setState(() {
                          isNext = false;
                        });
                      },
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      child: Center(
                        child: IconButton(
                          iconSize: 70,
                          alignment: Alignment.center,
                          icon: Obx(
                            () => (notify.isIconPlay.value)
                                ? Icon(
                                    Icons.pause_circle_filled,
                                    color: Colors.white,
                                  )
                                : Icon(
                                    Icons.play_circle_filled,
                                    color: Colors.white,
                                  ),
                          ),
                          onPressed: () {
                            notify.isIconPlay.value = notify.isIconPlay.value ? false : true;
                            setState(() {
                              isPlayPressed =
                                  isPlayPressed == false ? true : false;
                              print(
                                  "state of isPlayPressed is : $isPlayPressed");
                              if (notify.isIconPlay.value) {
                                print("Playing .....");
                                advancedPlayer.play(UrlSource('https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'));
                                // if (!isNext) {
                                //   advancedPlayer.play(
                                //       'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a');
                                // }
                              } else {
                                print("Paused .....");
                                advancedPlayer.pause();
                              }
                                AwesomeNotifications().createNotification(
                                    content: NotificationContent(
                                        //simgple notification
                                        id: 123,
                                        channelKey: 'basic',
                                        //set configuration wuth key "basic"
                                        title: 'Now Playing - ${widget.name}',
                                        // body: 'This simple notification with action buttons in Flutter App',
                                        payload: {"name": "FlutterCampus"},
                                        autoDismissible: false,
                                        displayOnBackground: true),
                                    actionButtons: [
                                      NotificationActionButton(
                                          key: "play",
                                          label: "play",
                                          autoDismissible: false,
                                          showInCompactView: true,
                                          buttonType:
                                              ActionButtonType.KeepOnTop),
                                      NotificationActionButton(
                                          key: "pause",
                                          label: "pause",
                                          autoDismissible: false,
                                          buttonType:
                                              ActionButtonType.KeepOnTop),
                                      NotificationActionButton(
                                          key: "stop",
                                          label: "stop",
                                          autoDismissible: false,
                                          buttonType:
                                              ActionButtonType.KeepOnTop)
                                    ]);
                                final myStream = AwesomeNotifications()
                                    .actionStream
                                    .asBroadcastStream();

                                myStream.listen((action) {
                                  if (action.buttonKeyPressed == "play") {
                                    print("Open button is pressed");
                                    advancedPlayer.play(UrlSource('https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'));
                                    notify.setIconPlay(true);
                                  } else if (action.buttonKeyPressed ==
                                      "pause") {
                                    advancedPlayer.pause();
                                    notify.setIconPlay(false);
                                    print("Delete button is pressed.");
                                  } else if (action.buttonKeyPressed ==
                                      "stop") {
                                    advancedPlayer.stop();
                                    notify.setIconPlay(false);
                                    print(action
                                        .payload); //notification was pressed
                                  }
                                });

                            });
                          },
                        ),
                      ),
                    ),
                    InkWell(
                      child: Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 40,
                      ),
                      onTap: () {
                        setState(() {
                          isNext = true;
                        });
                      },
                    ),
                    Icon(
                      Icons.repeat,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 22, right: 22),
                width: double.infinity,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.speaker_group_outlined,
                      color: Colors.grey.shade400,
                    ),
                    Spacer(
                      flex: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Share.share("spotify_clone/95461");
                      },
                      child: Icon(
                        Icons.share_outlined,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.line_weight_sharp,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


