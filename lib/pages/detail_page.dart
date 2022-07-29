import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:baca_kuy/theme.dart';
import 'package:baca_kuy/models/book.dart';

class BookDetail extends StatelessWidget {
  final String name;
  final String image;
  final String topic;
  final String author;
  final String synopsis;
  final List<String> keypoints;

  BookDetail(
      {required this.name,
      required this.image,
      required this.topic,
      required this.author,
      required this.synopsis,
      required this.keypoints});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            FavoriteButton(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 0,
                        child: Padding(
                            padding: const EdgeInsets.all(safePadding),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(
                                'images/$image',
                                scale: 1,
                              ),
                            )),
                      ),
                      SizedBox(height: 2 * basePadding),
                      Text(
                        textAlign: TextAlign.center,
                        name,
                        style: boldTextStyle.copyWith(
                            fontSize: 22.0, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 2 * basePadding),
                      Text(
                        textAlign: TextAlign.center,
                        topic,
                        style: regularTextStyle.copyWith(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 0.5 * basePadding),
                      Text(
                        '. . .',
                        style: boldTextStyle.copyWith(
                            fontSize: 30.0, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 2 * basePadding),
                      Text(
                        textAlign: TextAlign.center,
                        'by $author',
                        style: boldTextStyle.copyWith(
                            fontSize: 18.0, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2 * basePadding),
                Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Sinopsis',
                              style: regularTextStyle.copyWith(
                                  fontSize: 16.0, fontWeight: FontWeight.w500)),
                          SizedBox(height: 2 * basePadding),
                          Text(synopsis,
                              style: boldTextStyle.copyWith(
                                  fontSize: 16.0, fontWeight: FontWeight.w400)),
                        ])),
                SizedBox(height: basePadding),
                Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Keypoints',
                              style: regularTextStyle.copyWith(
                                  fontSize: 16.0, fontWeight: FontWeight.w500)),
                          SizedBox(height: 2 * basePadding),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: keypoints.length,
                              itemBuilder: (context, index) {
                                int num = index + 1;
                                return Text(
                                  num.toString() + '. ' + keypoints[index],
                                  style: boldTextStyle.copyWith(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400),
                                );
                              }),
                        ])),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shadowColor: Color.fromARGB(255, 116, 114, 187),
                          primary: Color(0xff57549E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(65),
                          ),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Selamat membaca buku"),
                          ));
                        },
                        child: Text(
                          'Read Now',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    ));
  }
}
