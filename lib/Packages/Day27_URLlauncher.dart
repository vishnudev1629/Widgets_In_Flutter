// //
// // import 'package:flutter/material.dart';
// // import 'package:url_launcher/url_launcher.dart';
// //
// // class UrlLink extends StatefulWidget {
// //   const UrlLink({super.key});
// //
// //   @override
// //   State<UrlLink> createState() => _UrlLinkState();
// // }
// //
// // class _UrlLinkState extends State<UrlLink> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("URL launcher"),
// //       ),
// //       body: Column(
// //         // crossAxisAlignment: CrossAxisAlignment.start,
// //         // ignore: prefer_const_literals_to_create_immutables
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           GestureDetector(
// //             onTap: () async {
// //               const url = 'https://www.google.com/';
// //               if (await canLaunch(url)) {
// //                 await launch(url, forceWebView: true, enableJavaScript: true);
// //               } else {
// //                 throw 'Could not launch $url';
// //               }
// //             },
// //             child: Center(
// //               child: TextButton(
// //                 onPressed: () async {
// //                   const url = 'https://blog.logrocket.com';
// //                   if(await canLaunch(url)){
// //                     await launch(url);
// //                   }else {
// //                     throw 'Could not launch $url';
// //                   }
// //                 },
// //                 child: Text(
// //                   'Open a URL',
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
//
//
// // ignore_for_file: prefer_const_constructors
//
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class UrlLink extends StatefulWidget {
//   const UrlLink({super.key});
//
//   @override
//   State<UrlLink> createState() => _UrlLinkState();
// }
//
// class _UrlLinkState extends State<UrlLink> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Geeks For Geeks"),
//       ),
//       body: Column(
//         // crossAxisAlignment: CrossAxisAlignment.start,
//         // ignore: prefer_const_literals_to_create_immutables
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           GestureDetector(
//             onTap: () async {
//               const url = 'https://www.geeksforgeeks.org/';
//               if (await canLaunch(url)) {
//                 await launch(url, forceWebView: true, enableJavaScript: true);
//               } else {
//                 throw 'Could not launch $url';
//               }
//             },
//             child: Center(
//               child: Text(
//                 "Want Read Article Tap Here",
//                 style: TextStyle(
//                     color: Colors.green,
//                     fontSize: 25,
//                     fontWeight: FontWeight.w400),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class URLLaunchSample extends StatefulWidget {
  const URLLaunchSample({Key? key}) : super(key: key);

  @override
  State<URLLaunchSample> createState() => _URLLaunchSampleState();
}

void launchURL(String url) async {
  if (await canLaunchUrl(url as Uri)) {
    await launchUrl(url as Uri);
  } else {
    throw 'Could not launch $url';
  }
}

class _URLLaunchSampleState extends State<URLLaunchSample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("URL Sample",style: TextStyle(color: Colors.white,fontSize: 20),),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: (){
              launchURL('https://www.google.com');
            },
            child: Center(
              child: Text(
                "Click to Browse",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
