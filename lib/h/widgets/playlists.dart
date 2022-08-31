import 'package:flutter/material.dart';
import 'package:spotifyui/utils/audio.dart';

import '../../data.dart';

class Playlists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 16/5.5,
      ),
      children: Data().playlist.map((val) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AudioPlayerPro(
                  audioURL: val['audio'].toString(),
                  name: val['name'].toString(),
                  image: val['image'].toString(),
                ),
              ),
            );
          },
          child: Card(
            color: Color.fromRGBO(49, 58, 55, 1),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          val['image'].toString(),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      val['name'].toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
