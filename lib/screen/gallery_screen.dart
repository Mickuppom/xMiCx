import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class GalleryScreen extends StatefulWidget {
  GalleryScreen({Key key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  var gallery = [
    "https://scontent.fbkk2-5.fna.fbcdn.net/v/t1.0-9/121426030_3619250348142001_3075504295401377846_o.jpg?_nc_cat=110&ccb=1-3&_nc_sid=84a396&_nc_eui2=AeESetciM0x4H-TPV2qaN-t1XR6lont46CJdHqWie3joIrQAkUqyZO7E4XxjdE8aa6BViXE2TTqjFsT6i9i2g0C9&_nc_ohc=B6nOyjkukioAX8oXsDB&_nc_ht=scontent.fbkk2-5.fna&oh=c113880c2d0e66b73b6a566a899fa464&oe=6068280F",
    "https://scontent.fbkk2-4.fna.fbcdn.net/v/t1.0-9/109045304_3346971018703270_6843698399665044772_o.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHgoB1Eoo1qwQ7zT2uT6mBC3CPPzsoQnwLcI8_OyhCfAgsfJuNXUBLduzMCYF0c3f5pSddDAisPlxTMSnOOezsu&_nc_ohc=AV7JM_UUgcAAX_dJcg-&_nc_ht=scontent.fbkk2-4.fna&oh=d0fb18e990f55f74bb98a21105d8cfd0&oe=60686386",
    "https://scontent.fbkk2-4.fna.fbcdn.net/v/t1.0-9/62200591_2415794348487613_5208510061084672000_o.jpg?_nc_cat=101&ccb=1-3&_nc_sid=174925&_nc_eui2=AeEbpgJEd4drgcNnnXbyM8PktNlmQnE8UcG02WZCcTxRwYg4iOsK3OypWCKmlq2F7Srqn7HUM0z7aykP0YaOjNUh&_nc_ohc=NlRvhxGE0ZYAX90Zkhm&_nc_ht=scontent.fbkk2-4.fna&oh=64fc24ceaecf0fd51a957311713f7fed&oe=606B68E5",
    "https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.0-9/62239364_2417281371672244_5151782279067992064_o.jpg?_nc_cat=100&ccb=1-3&_nc_sid=84a396&_nc_eui2=AeGRwiGaz2C6JQfd1bTwzJ-oTfnQ-_ziuBBN-dD7_OK4EAnIixpX6G85yAywxoexxSvRY6dstPVeraHBJY-TD3SB&_nc_ohc=5NZqzvFSOn4AX_7UgIE&_nc_ht=scontent.fbkk2-8.fna&oh=bc067bbeb291b4a10d183cbd1720dde4&oe=6068A011",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Swiper(
            autoplay: true,
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                gallery[index],
                fit: BoxFit.contain,
              );
            },
            itemCount: gallery.length,
            pagination: new SwiperPagination(),
            control: new SwiperControl(),
          ),
        ),
      ),
    );
  }
}
