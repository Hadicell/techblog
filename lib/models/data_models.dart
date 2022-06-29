class HashTagModel {
  String title;
  HashTagModel({required this.title});
}

class BlogModel {
  int id;
  String imageUrl;
  String title;
  String writer;
  String writerImageUrl;
  String date;
  String content;
  String views;

  BlogModel({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.writer,
    required this.writerImageUrl,
    required this.date,
    required this.content,
    required this.views,
  });
}




// پادکست
class PodcastModel {
  int id;
  String imageUrl;
  String title;
  String writer;

  PodcastModel({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.writer,
  });
}





// کلاس برای تلویزیون
class Channel {
  String? icon;
  String? link;
  Channel({this.icon, this.link});
}

  List<Channel> listchannels = [
    Channel(
      icon: "assets/images/tv1.png",
      link: "https://cdn.telewebion.com/tv1/live/720p/index.m3u8",
    ),
    Channel(
      icon: "assets/images/tv2.png",
      link: "https://cdn.telewebion.com/tv2/live/480p/index.m3u8?x_live_session=ff0d9edb-bf8f-44f7-8af3-a8ce566530de",
    ),
    Channel(
      icon: "assets/images/tv3.png",
      link: "https://cdn.telewebion.com/tv3/live/720p/index.m3u8",
    ),
    Channel(
      icon: "assets/images/tv4.png",
      link: "https://cdn.telewebion.com/tv4/live/576p/index.m3u8",
    ),
    Channel(
      icon: "assets/images/tv5.png",
      link: "https://cdn.telewebion.com/tehran/live/576p/index.m3u8",
    ),
    Channel(
      icon: "assets/images/varzesh.png",
      link: "https://cdn.telewebion.com/varzesh/live/720p/index.m3u8",
    ),
    Channel(
      icon: "assets/images/nasim.png",
      link: "https://cdn.telewebion.com/nasim/live/720p/index.m3u8",
    ),
    Channel(
      icon: "assets/images/tamasha.png",
      link: "https://cdn.telewebion.com/hdtest/live/720p/index.m3u8",
    ),
    Channel(
      icon: "assets/images/ifilm.png",
      link: "https://cdn.telewebion.com/ifilm/live/720p/index.m3u8",
    ),
    Channel(
      icon: "assets/images/namayesh.png",
      link: "https://cdn.telewebion.com/namayesh/live/720p/index.m3u8",
    ),
    Channel(
      icon: "assets/images/mostanad.png",
      link: "https://cdn.telewebion.com/mostanad/live/480p/index.m3u8",
    ),
    Channel(
      icon: "assets/images/pooya.png",
      link: "https://cdn.telewebion.com/pooya/live/720p/index.m3u8",

    ),
  ];





// کلاس برای my_media
class MyMedia {
  String ? title;
  String ? image;
  String ? name;
  MyMedia({ this.title , this.image , this.name});
}

List<MyMedia> listMedia = [
MyMedia(
  name:"Tv_online",
  title: "تلویزیون آنلاین",
  image:"assets/images/tv_online.jpg"
),
MyMedia(
  name: "Radio_online",
  title: "رادیو آنلاین",
  image:"assets/images/radio_online.jpg"
),
MyMedia(
  name: "Concert",
  title: "خرید بلیط کنسرت",
  image:"assets/images/concert-Top.jpg"
),
];


class MyRadio{
  String ? name;
  String ? icon;
  String ? image;
  String ? url;
  bool isPlay = false;
  MyRadio({this.name, this.icon, this.url, this.image});

}

List<MyRadio> listradio = [


MyRadio(
  name: "ava",
  icon: "assets/images/radio-avaa.png",
  image: "assets/images/r_ava.png",
  url: "http://altcdn.iranseda.ir:1935/channel-live/smil:r-ava/chunklist_b307200_slFa.m3u8",
),
MyRadio(
  name: "payam",
  icon: "assets/images/radio-payam.png",
  image: "assets/images/r_payam.jpg",
  url: "http://altcdn.iranseda.ir:1935/channel-live/smil:r-payam/chunklist_b307200_slFa.m3u8",
),
MyRadio(
  name: "tehran",
  icon: "assets/images/radio-tehran.png",
  image: "assets/images/r_tehran.png",
  url: "http://altcdn.iranseda.ir:1935/channel-live/smil:r-tehran/chunklist_b307200_slFa.m3u8",
),
MyRadio(
  name: "saba",
  icon: "assets/images/radio-saba.png",
  image: "assets/images/r_saba.png",
  url: "http://altcdn.iranseda.ir:1935/channel-live/smil:r-fasli/chunklist_b307200_slFa.m3u8",
),
MyRadio(
  name: "goftego",
  icon: "assets/images/radio-goftego.png",
  image: "assets/images/r_goftego.png",
  url: "http://altcdn.iranseda.ir:1935/channel-live/smil:r-goftegoo/chunklist_b307200_slFa.m3u8",
),
MyRadio(
  name: "varzesh",
  icon: "assets/images/radio-varzesh.png",
  image: "assets/images/r-varzesh.png",
  url: "http://altcdn.iranseda.ir:1935/channel-live/smil:r-varzesh/chunklist_b307200_slFa.m3u8",
),
MyRadio(
  name: "eghtesad",
  icon: "assets/images/radio-eghtesad.png",
  image: "assets/images/r_eghtesad.png",
  url: "http://altcdn.iranseda.ir:1935/channel-live/smil:r-eghtesad/chunklist_b307200_slFa.m3u8",
),
MyRadio(
  name: "javan",
  icon: "assets/images/radio-javan.png",
  image: "assets/images/r_javan.png",
  url: "http://altcdn.iranseda.ir:1935/channel-live/smil:r-javan/chunklist_b307200_slFa.m3u8",
),
MyRadio(
  name: "farhang",
  icon: "assets/images/radio-farhang.png",
  image: "assets/images/r_farhang.png",
  url: "http://altcdn.iranseda.ir:1935/channel-live/smil:r-farhang/chunklist_b307200_slFa.m3u8",
),
MyRadio(
  name: "iran",
  icon: "assets/images/radio-iran.png",
  image: "assets/images/r_iran.png",
  url: "http://altcdn.iranseda.ir:1935/channel-live/smil:r-iran/chunklist_b307200_slFa.m3u8",
),
MyRadio(
  name: "talavat",
  icon: "assets/images/radio-talavat.png",
  image: "assets/images/r_talavat.png",
  url: "http://altcdn.iranseda.ir:1935/channel-live/smil:r-talavat/chunklist_b307200_slFa.m3u8",
),
MyRadio(
  name: "salamat",
  icon: "assets/images/radio-salamat.png",
  image: "assets/images/r_salamat.png",
  url: "http://altcdn.iranseda.ir:1935/channel-live/smil:r-salamat/chunklist_b307200_slFa.m3u8",
),
MyRadio(
  name: "namayesh",
  icon: "assets/images/radio-namayesh.png",
  image: "assets/images/r_namayesh.png",
  url: "http://altcdn.iranseda.ir:1935/channel-live/smil:r-namayesh/chunklist_b307200_slFa.m3u8",
),

];


class MymusicConcert{
  String ? url;
  bool isPlay = true;
  MymusicConcert({this.url});
}

List<MymusicConcert> listconcert =[

MymusicConcert(
  url: "https://irsv.upmusics.com/Downloads/Musics/Mohsen%20Yeganeh%7C%20Havai%20Shodi%20(128).mp3"
)

];