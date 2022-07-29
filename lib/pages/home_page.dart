import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:baca_kuy/theme.dart';
import 'package:baca_kuy/models/book.dart';
import 'package:baca_kuy/models/topic.dart';
import 'package:baca_kuy/pages/detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: RichText(
            text: TextSpan(
                text: 'Baca',
                style: GoogleFonts.acme(
                    color: Color(0xff61C0C7),
                    fontSize: 23.0,
                    fontWeight: FontWeight.w800),
                children: <TextSpan>[
              TextSpan(
                  text: 'Kuy',
                  style: GoogleFonts.roboto(
                      color: Color(0xff61C0C7), fontWeight: FontWeight.w800))
            ])),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(
                  safePadding, 2 * safePadding, safePadding, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 2.0),
                  Text('Topics',
                      style: boldTextStyle.copyWith(
                          fontSize: 20.0, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            SizedBox(height: 0.5 * safePadding),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 2 * basePadding),
                  Container(
                    height: 12 * safePadding,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: topicList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Container(
                            width: 140,
                            height: 180,
                            margin: index != topicList.length - 1
                                ? EdgeInsets.only(left: safePadding)
                                : EdgeInsets.symmetric(horizontal: safePadding),
                            padding: EdgeInsets.symmetric(
                                vertical: safePadding,
                                horizontal: 2 * basePadding),
                            decoration: BoxDecoration(
                                color: index % 2 == 0
                                    ? Color(0xff8EC9F5)
                                    : Color(0xffADAEFF),
                                borderRadius: BorderRadius.circular(25)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 0,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              5, 5, 10, 15),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              index % 2 == 0
                                                  ? Icons.trending_up_rounded
                                                  : Icons.star_border_rounded,
                                              color: Color(0xff35325E),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(topicList[index].name,
                                          style: boldTextStyle.copyWith(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w700)),
                                      SizedBox(height: 2.0),
                                      Text(topicList[index].jumlah,
                                          style: secondaryTextStyle.copyWith(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500)),
                                    ])
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.5 * safePadding),
            Container(
              padding: EdgeInsets.symmetric(horizontal: safePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Most Popular',
                    style: GoogleFonts.poppins(
                        color: primaryColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 2 * basePadding),
                  // create ListView with image and flexible text
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: bookList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BookDetail(
                              name: bookList[index].name,
                              image: bookList[index].image,
                              topic: bookList[index].topic,
                              synopsis: bookList[index].synopsis,
                              author: bookList[index].author,
                              keypoints: bookList[index].keypoints,
                            );
                          }));
                        },
                        child: Card(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
                          color: cardColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 0,
                                child: Padding(
                                    padding: const EdgeInsets.all(safePadding),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Image.asset(
                                        'images/${bookList[index].image}',
                                        scale: 1.2,
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 30, 0, 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(bookList[index].name,
                                          style: boldTextStyle.copyWith(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w700)),
                                      SizedBox(height: 2.0),
                                      Text(bookList[index].topic,
                                          style: secondaryTextStyle.copyWith(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(height: 2.0),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 0,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 110, 10, 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      FavoriteButton(),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
