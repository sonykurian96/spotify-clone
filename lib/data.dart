import 'package:getwidget/getwidget.dart';
import 'package:flutter/material.dart';

class Data {
  var playlist = [
    {
      'name': 'Alicia Keys',
      'image': 'assets/images/aliciakeys.png',
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
    {
      'name': 'Where the Light',
      'image': 'assets/images/johnmayer.png',
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
    {
      'name': 'Pesa Nasha Pyar',
      'image': 'assets/images/bohemia.png',
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
    {
      'name': 'This is Eric',
      'image': 'assets/images/ericclapton.png',
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
    {
      'name': 'Bealtes',
      'image': 'assets/images/beatles.png',
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
    {
      'name': 'Gentle Guitar',
      'image': 'assets/images/gentleguitar.png',
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
  ];

  var recentlyPlayed = [
    {
      'name': 'Gentle Guitar',
      'image': 'assets/images/gentleguitar.png',
      'shape': GFAvatarShape.square,
      'alignment': CrossAxisAlignment.start,
      'audio': 'https://www.computerhope.com/jargon/m/example.mp3'
    },
    {
      'name': 'Alicia Keys',
      'image': 'assets/images/aliciakeys.png',
      'shape': GFAvatarShape.circle,
      'alignment': CrossAxisAlignment.center,
      'audio': 'https://www.computerhope.com/jargon/m/example.mp3'
    },
    {
      'name': 'Fallin\'',
      'image': 'assets/images/fallin.png',
      'shape': GFAvatarShape.square,
      'alignment': CrossAxisAlignment.start,
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
    {
      'name': 'Pesa Nasha Pyar',
      'image': 'assets/images/bohemia.png',
      'shape': GFAvatarShape.square,
      'alignment': CrossAxisAlignment.start,
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
    {
      'name': 'Where the Light',
      'image': 'assets/images/johnmayer.png',
      'shape': GFAvatarShape.square,
      'alignment': CrossAxisAlignment.start,
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
    {
      'name': 'Girlfriend',
      'image': 'assets/images/girlfriend.png',
      'shape': GFAvatarShape.square,
      'alignment': CrossAxisAlignment.start,
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
    {
      'name': 'Thunderstruck',
      'image': 'assets/images/thunderstruck.png',
      'shape': GFAvatarShape.square,
      'alignment': CrossAxisAlignment.start,
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
    {
      'name': 'Hummingbird',
      'image': 'assets/images/hummingbird.png',
      'shape': GFAvatarShape.square,
      'alignment': CrossAxisAlignment.start,
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
    {
      'name': 'Continuum',
      'image': 'assets/images/continuum.png',
      'shape': GFAvatarShape.square,
      'alignment': CrossAxisAlignment.start,
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
  ];

  var anotherRandomList = [
    {
      'name': 'The Beatles',
      'image': 'assets/images/beatles.png',
      'shape': GFAvatarShape.square,
      'alignment': CrossAxisAlignment.start,
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
    {
      'name': 'Harry James',
      'image': 'assets/images/franksinatra.png',
      'shape': GFAvatarShape.square,
      'alignment': CrossAxisAlignment.start,
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
    {
      'name': 'This is Eric',
      'image': 'assets/images/ericclapton.png',
      'shape': GFAvatarShape.square,
      'alignment': CrossAxisAlignment.start,
      'audio': 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'
    },
  ];

  var genres = [
    'assets/images/pop.jpg',
    'assets/images/hiphop.jpg',
    'assets/images/rnb.jpg',
    'assets/images/rock.jpg',
  ];

  var browseall = [
    'assets/images/podcasts.jpg',
    'assets/images/newrelease.jpg',
    'assets/images/charts.jpg',
    'assets/images/concerts.jpg',
    'assets/images/madeforyou.jpg',
    'assets/images/athome.jpg',
    'assets/images/onlyyou.jpg',
    'assets/images/covid19guide.jpg',
    'assets/images/bollywood.jpg',
    'assets/images/equal.jpg',
  ];

  var library = [
    {
      'name': 'Liked Songs',
      'subtitle': 'Playlist • 34 songs',
      'image': 'assets/images/likedsongs.png',
      'shape': GFAvatarShape.square,
    },
    {
      'name': 'Gentle Guitar',
      'subtitle': 'Playlist • Epidemic Sound',
      'image': 'assets/images/gentleguitar.png',
      'shape': GFAvatarShape.square,
    },
    {
      'name': 'John Mayer',
      'subtitle': 'Artist',
      'image': 'assets/images/johnmayerr.png',
      'shape': GFAvatarShape.circle,
    },
    {
      'name': 'Coldplay',
      'subtitle': 'Artist',
      'image': 'assets/images/coldplay.png',
      'shape': GFAvatarShape.circle,
    },
  ];

  var carousel = [
    {
      'free': 'Ad breaks',
      'premium': 'Ad-free music',
    },
    {
      'free': 'Streaming only',
      'premium': 'Download songs',
    },
    {
      'free': 'Listen alone',
      'premium': 'Group session',
    },
  ];
}
