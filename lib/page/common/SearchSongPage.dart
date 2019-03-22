import 'package:flutter/material.dart';
import 'package:cloud_music_mobile/widget/PlayBar.dart';

class SearchSongPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SearchInput()),
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Expanded(
              child: ListView(
            children: <Widget>[HotSearch(), History()],
          )),
          PlayBar()
        ],
      ),
    );
  }
}

/// 搜索框
class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      autofocus: true,
      decoration: InputDecoration(
        hintText: "出山 最近很火哦",
        hintStyle:
            TextStyle(color: Colors.white.withOpacity(0.3), fontSize: 16),
        contentPadding: EdgeInsets.only(bottom: 8),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        border:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white.withOpacity(0.2))),
      ),
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white, fontSize: 16),
    );
  }
}

/// 热门搜索
class HotSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Wrap(
        spacing: 8.0,
        children: <Widget>[
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 6),
              child: Text(
              '热门搜索',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black87),
            ),)
          ]),
          SongChip(text: '都是月亮惹的祸抖音', onPressed: () {}),
          SongChip(text: '都是月亮惹的祸', onPressed: () {}),
          SongChip(text: '求求你给我个机会', onPressed: () {}),
          SongChip(text: '魔鬼中的天使', onPressed: () {}),
          SongChip(text: '小新星', onPressed: () {}),
          SongChip(
            text: '因为傻逼',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

/// 历史记录
class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Wrap(
        spacing: 8.0,
        children: <Widget>[
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 6),
              child: Text(
              '历史记录',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black87),
            ),)
          ]),
          SongChip(text: '都是月亮惹的祸抖音', onPressed: () {}),
          SongChip(text: '都是月亮惹的祸', onPressed: () {}),
          SongChip(text: '求求你给我个机会', onPressed: () {}),
          SongChip(text: '魔鬼中的天使', onPressed: () {}),
          SongChip(text: '小新星', onPressed: () {}),
          SongChip(
            text: '因为傻逼',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class SongChip extends StatelessWidget {
  final String text;
  final Function onPressed;
  SongChip({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        text,
        style: TextStyle(color: Colors.black87),
      ),
      shape: StadiumBorder(),
      color: Color(0xffefefef),
      onPressed: onPressed,
    );
  }
}
