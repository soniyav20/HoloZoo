import 'dart:ui';
import 'package:flutter/material.dart';
import '3d.dart';

class ModelsPage extends StatelessWidget {
  final List<Map<String, String>> htmlModels = [
    {
      'name': 'Chair',
      'htmlContent': '<html><body style="background-color: black;"><iframe id="view360Iframe" width="100%" height="100%" scrolling="0" src="https://sketchfab.com/models/8d913bda48f84217902e6829982c494f/embed?ui_infos=0&amp;ui_watermark=0&amp;ui_help=0&amp;ui_settings=0&amp;ui_inspector=0&amp;ui_annotations=0&amp;ui_stop=0&amp;ui_vr=0&amp;preload=1&amp;autostart=1&amp;ui_hint=2&amp;autospin=0.2"></iframe></body></html>',

    },
    {
      'name': 'Lion',
      'htmlContent': '<html><body style="background-color: black;"><iframe id="view360Iframe" width="100%" height="100%" scrolling="0"src="https://sketchfab.com/models/6c47a31a7ad74b19981f27917fbd8a53/embed?ui_infos=0&amp;ui_watermark=0&amp;ui_help=0&amp;ui_settings=0&amp;ui_inspector=0&amp;ui_annotations=0&amp;ui_stop=0&amp;ui_vr=0&amp;preload=1&amp;autostart=1&amp;ui_hint=2&amp;autospin=0.2"></iframe></body></html>',
    },{
      'name': 'Elephant',
      'htmlContent': '<html><body style="background-color: black;"><iframe id="view360Iframe" width="100%" height="100%" scrolling="0" src="https://sketchfab.com/models/2494fd2a58f449539954aaeb589e55bd/embed?ui_infos=0&amp;ui_watermark=0&amp;ui_help=0&amp;ui_settings=0&amp;ui_inspector=0&amp;ui_annotations=0&amp;ui_stop=0&amp;ui_vr=0&amp;preload=1&amp;autostart=1&amp;ui_hint=2&amp;autospin=0.2"></iframe></body></html>',

    },{
      'name': 'Camel',
      'htmlContent': '<html><body style="background-color: black;"><iframe id="view360Iframe" width="100%" height="100%" scrolling="0" src="https://sketchfab.com/models/e67f80b77c0c41a8b87b5e032491f16c/embed?ui_infos=0&amp;ui_watermark=0&amp;ui_help=0&amp;ui_settings=0&amp;ui_inspector=0&amp;ui_annotations=0&amp;ui_stop=0&amp;ui_vr=0&amp;preload=1&amp;autostart=1&amp;ui_hint=2&amp;autospin=0.2"></iframe></body></html>',
    },{
      'name': 'Kronosaurus',
      'htmlContent': '<html><body style="background-color: black;"><iframe id="view360Iframe" width="100%" height="100%" scrolling="0" src="https://sketchfab.com/models/0673b07dc5d9494f99581e94e503bda5/embed?ui_theme=dark&amp;ui_infos=0&amp;ui_watermark=0&amp;ui_help=0&amp;ui_settings=0&amp;ui_inspector=0&amp;ui_annotations=0&amp;ui_stop=0&amp;ui_vr=0&amp;preload=1&amp;autostart=1&amp;ui_hint=2&amp;autospin=0.2"></iframe></body></html>',
    },
    {
      'name': 'Dog',
      'htmlContent': '<html><body style="background-color: black;"><iframe id="view360Iframe" width="100%" height="100%" scrolling="0" src="https://sketchfab.com/models/35a179865ae740dcb854f73476c15c8e/embed?ui_infos=0&amp;ui_watermark=0&amp;ui_help=0&amp;ui_settings=0&amp;ui_inspector=0&amp;ui_annotations=0&amp;ui_stop=0&amp;ui_vr=0&amp;preload=1&amp;autostart=1&amp;ui_hint=2&amp;autospin=0.2"></iframe></body></html>',
    },
    {
      'name': 'Eagle',
      'htmlContent': '<html><body style="background-color: black;"><iframe id="view360Iframe" width="100%" height="100%" scrolling="0" src="https://sketchfab.com/models/ada0ccb34acb4787997915799f203fbb/embed?ui_infos=0&amp;ui_watermark=0&amp;ui_help=0&amp;ui_settings=0&amp;ui_inspector=0&amp;ui_annotations=0&amp;ui_stop=0&amp;ui_vr=0&amp;preload=1&amp;autostart=1&amp;ui_hint=2&amp;autospin=0.2"></iframe></body></html>',
    },
    {
      'name': 'Horse',
      'htmlContent': '<html><body style="background-color: black;"><iframe id="view360Iframe" width="100%" height="100%" scrolling="0" src="https://sketchfab.com/models/926709e42082483fb2374784e46238a3/embed?ui_infos=0&amp;ui_watermark=0&amp;ui_help=0&amp;ui_settings=0&amp;ui_inspector=0&amp;ui_annotations=0&amp;ui_stop=0&amp;ui_vr=0&amp;preload=1&amp;autostart=1&amp;ui_hint=2&amp;autospin=0.2"></iframe></body></html>',
    },
    {
      'name': 'Dunkleosteus',
      'htmlContent': '<html><body style="background-color: black;"><iframe id="view360Iframe" width="100%" height="100%" scrolling="0" src="https://sketchfab.com/models/1a354f3803fe4ed6b45f12a98a813c9c/embed?ui_infos=0&amp;ui_watermark=0&amp;ui_help=0&amp;ui_settings=0&amp;ui_inspector=0&amp;ui_annotations=0&amp;ui_stop=0&amp;ui_vr=0&amp;preload=1&amp;autostart=1&amp;ui_hint=2&amp;autospin=0.2"></iframe></body></html>',
    },
    {
      'name': 'Deinonychus Antirrhopus',
      'htmlContent': '<html><body style="background-color: black;"><iframe id="view360Iframe" width="100%" height="100%" scrolling="0" src="https://sketchfab.com/models/6df80db275654d4ba44429885e652be1/embed?ui_infos=0&amp;ui_watermark=0&amp;ui_help=0&amp;ui_settings=0&amp;ui_inspector=0&amp;ui_annotations=0&amp;ui_stop=0&amp;ui_vr=0&amp;preload=1&amp;autostart=1&amp;ui_hint=2&amp;autospin=0.2"></iframe></body></html>',
    },
    {
      'name': 'Styracosaurus Albertensis',
      'htmlContent': '<html><body style="background-color: black;"><iframe id="view360Iframe" width="100%" height="100%" scrolling="0" src="https://sketchfab.com/models/955017e2b4784c5381fb0927e663298a/embed?ui_infos=0&amp;ui_watermark=0&amp;ui_help=0&amp;ui_settings=0&amp;ui_inspector=0&amp;ui_annotations=0&amp;ui_stop=0&amp;ui_vr=0&amp;preload=1&amp;autostart=1&amp;ui_hint=2&amp;autospin=0.2"></iframe></body></html>',
    },
    {
      'name': 'Mosasaurus Hoffmannii',
      'htmlContent': '<html><body style="background-color: black;"><iframe id="view360Iframe" width="100%" height="100%" scrolling="0" src="https://sketchfab.com/models/641feb1a485b492c8de31e84ff89ad64/embed?ui_infos=0&amp;ui_watermark=0&amp;ui_help=0&amp;ui_settings=0&amp;ui_inspector=0&amp;ui_annotations=0&amp;ui_stop=0&amp;ui_vr=0&amp;preload=1&amp;autostart=1&amp;ui_hint=2&amp;autospin=0.2"></iframe></body></html>',
    },
    {
      'name': 'Brachiosaurus',
      'htmlContent': '<html><body style="background-color: black;"><iframe id="view360Iframe" width="100%" height="100%" scrolling="0" src="https://sketchfab.com/models/641feb1a485b492c8de31e84ff89ad64/embed?ui_infos=0&amp;ui_watermark=0&amp;ui_help=0&amp;ui_settings=0&amp;ui_inspector=0&amp;ui_annotations=0&amp;ui_stop=0&amp;ui_vr=0&amp;preload=1&amp;autostart=1&amp;ui_hint=2&amp;autospin=0.2"></iframe></body></html>',
    },
    // Add more HTML models as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Models Page'),
        title: Center(
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [Color(0xff438875), Color(0xff99F2C8)],
            ).createShader(bounds),
            child: Text(
              'ModelsPage',
              style: TextStyle(
                fontSize: 30.0,
                letterSpacing: 1,
                // fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.network(
            'https://th.bing.com/th/id/OIG.qFvcQYV5XnCqKpfsCZuS?pid=ImgGn',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            // width: MediaQuery.of(context).size.width,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          ListView.builder(
            itemCount: htmlModels.length,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      htmlModels[index]['name'] ?? '',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => WebViewPage(
                            htmlContent: htmlModels[index]['htmlContent'] ?? '',
                          ),
                        ),
                      );
                    },
                  ),
                  Divider(
                    color: Colors.white30,
                    thickness: 0.5,
                    indent: 1.0,
                    endIndent: 1.0,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}