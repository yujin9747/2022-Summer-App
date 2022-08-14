// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(const Yangseo());

class Yangseo extends StatelessWidget {
  const Yangseo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yangseo',
      theme: ThemeData(
        primaryColor: Colors.grey,
        fontFamily: 'Mabinogi',
        backgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}

final List<String> imgList = [
  "assets/images/sample1.jpg",
  "assets/images/sample2.jpg",
  "assets/images/sample3.jpg",
  "assets/images/sample4.jpg",
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('양서지역 아동센터'),
      ),
      body: SizedBox(
          height: 250,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Swiper(
                control: const SwiperControl(),
                pagination: const SwiperPagination(),
                itemCount: imgList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(imgList[index]);
                }),
          )),
    );
  }
}


// CustomScrollView(
//       slivers: <Widget>[
//         SliverAppBar(
//           backgroundColor: Colors.grey,
//           elevation: 0,
//           pinned: true, // 축소시 상단에 appbar를 고정할것인가
//           expandedHeight: 70, // 확대시 최대 높이
//           flexibleSpace: FlexibleSpaceBar(
//             title: Text(
//               "양서지역 아동센터",
//               style: TextStyle(
//                 fontSize: 15,
//               ),
//             ),
//             centerTitle: true,
//           ),
//         ),
//       ],
//     );