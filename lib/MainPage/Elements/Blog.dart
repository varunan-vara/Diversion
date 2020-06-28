import 'package:flutter/material.dart';
//import 'package:html2md/html2md.dart' as html2md;
//import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:newapp/MainPage/mainpage.dart';
import 'MainShapeElements.dart';


class Blog extends StatelessWidget{

  static String html = """
  <!DOCTYPE html>
  <html>
    <head>
      <title>Twitter Feed </title>
    </head>
    <body>
      <a class="twitter-timeline" href="https://twitter.com/MDhack2020?ref_src=twsrc%5Etfw">Tweets by MDhack2020</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
    </body>
  </html>
  """;


  Widget placeholder = Column(
    children: <Widget>[
      Text("."),
      Text("."),
      Text("."),
      Text("."),
      Text("."),
      Text("."),
      Text("."),
    ],
  );

  //String h2m = html2md.convert(html);

  @override
  Widget build(BuildContext context) {
    return greyRectangle("Blog",placeholder);
  }
}

