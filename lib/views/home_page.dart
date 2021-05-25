import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviemax_flutter/logic/app_logic.dart';
import 'package:moviemax_flutter/model/detail.dart';
import 'package:moviemax_flutter/model/utils/dummy_data.dart';
import 'package:moviemax_flutter/views/detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Max'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 250,
                        child: Column (
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Text(
                                "Trending",
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  final currentData = DummyData().getCombinedList()[index];
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return DetailPage(currentData);
                                      }));
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.zero,
                                      child: Card(
                                        elevation: 3,
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        child: SizedBox(
                                          child: Image.network(
                                            currentData.posterPath,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                itemCount: DummyData().getAllMovies().length,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 24),
                        height: 250,
                        child: Column (
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Text(
                                "Movies",
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  final currentData = DummyData().getAllMovies()[index];
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        Detail detail = AppLogic().entityToDetailModel(currentData, null);
                                        return DetailPage(detail);
                                      }));
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.zero,
                                      child: Card(
                                        elevation: 3,
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        child: SizedBox(
                                          child: Image.network(
                                            currentData.posterPath,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                itemCount: DummyData().getAllMovies().length,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 24),
                        height: 250,
                        child: Column (
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Text(
                                "TV Shows",
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  final currentData = DummyData().getAllTvShows()[index];
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        Detail detail = AppLogic().entityToDetailModel(null, currentData);
                                        return DetailPage(detail);
                                      }));
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.zero,
                                      child: Card(
                                        elevation: 3,
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        child: SizedBox(
                                          child: Image.network(
                                            currentData.posterPath,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                itemCount: DummyData().getAllMovies().length,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}