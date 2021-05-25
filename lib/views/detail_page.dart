import 'package:flutter/material.dart';
import 'package:moviemax_flutter/model/detail.dart';

class DetailPage extends StatelessWidget {
  final Detail detail;
  final radius = Radius.circular(16.0);

  DetailPage(this.detail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 180.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(detail.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image.network(
                    detail.posterPath,
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(radius),
                        child: Image.network(
                          detail.posterPath,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 16, bottom: 8, left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "RELEASE DATE",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w200
                              ),
                            ),
                            Text(
                              detail.releaseDate,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            Divider(
                              color: Colors.black54,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "GENRE",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w200
                                ),
                              ),
                            ),
                            Text(
                              detail.genre,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Divider(
                              color: Colors.black54,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text((() {
                                  if (detail.seasons != null) {
                                    return "SEASONS";
                                  } else {
                                    return "PLAYTIME";
                                  }
                                }()),
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w200
                                ),
                              ),
                            ),
                            Text((() {
                                if (detail.seasons != null) {
                                  return detail.seasons.toString();
                                } else {
                                  return detail.runtime.toString();
                                }
                              }()),
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Divider(
                              color: Colors.black54,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "OVERVIEW",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            detail.overview,
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Poppins"
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]
          ),
        ),
      ),
      floatingActionButton: FavoriteButton(),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  late SnackBar snackBar;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;

            if (isFavorite) {
              snackBar = SnackBar(content: Text("Added to Favorites."));
            } else {
              snackBar = SnackBar(content: Text("Removed from Favorites."));
            }

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          });
        },
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.white,
        )
    );
  }
}