import 'package:moviemax_flutter/model/movie.dart';
import 'package:moviemax_flutter/model/tv_show.dart';
import 'package:moviemax_flutter/model/detail.dart';

class DummyData {
  List<Movie> getAllMovies() {
    List<Movie> listMovie = [
      Movie(
          title: "Godzilla vs. Kong",
          overview:
              "In a time when monsters walk the Earth, humanity’s fight for its future sets Godzilla and Kong on a collision course that will see the two most powerful forces of nature on the planet collide in a spectacular battle for the ages.",
          releaseDate: "24/03/2021",
          genre: "Sci-Fi",
          runtime: "1h 53m",
          posterPath:
              "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg"),
      Movie(
          title: "Avengers: Endgame",
          overview:
              "After the devastating events of Avengers: Infinity War, the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos' actions and restore order to the universe once and for all, no matter what consequences may be in store.",
          releaseDate: "24/04/2019",
          genre: "Adventure",
          runtime: "3h 1m",
          posterPath:
              "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/or06FN3Dka5tukK1e9sl16pB3iy.jpg"),
      Movie(
          title: "Avengers: Infinity War",
          overview:
              "As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain.",
          releaseDate: "27/04/2018",
          genre: "Adventure",
          runtime: "2h 29m",
          posterPath:
              "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg"),
      Movie(
          title: "The Avengers",
          overview:
              "When an unexpected enemy emerges and threatens global safety and security, Nick Fury, director of the international peacekeeping agency known as S.H.I.E.L.D., finds himself in need of a team to pull the world back from the brink of disaster. Spanning the globe, a daring recruitment effort begins!",
          releaseDate: "04/05/2012",
          genre: "Sci-Fi",
          runtime: "2h 23m",
          posterPath:
              "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/RYMX2wcKCBAr24UyPD7xwmjaTn.jpg"),
      Movie(
          title: "Avengers: Age of Ultron",
          overview:
              "When Tony Stark tries to jumpstart a dormant peacekeeping program, things go awry and Earth’s Mightiest Heroes are put to the ultimate test as the fate of the planet hangs in the balance. As the villainous Ultron emerges, it is up to The Avengers to stop him from enacting his terrible plans, and soon uneasy alliances and unexpected action pave the way for an epic and unique global adventure.",
          releaseDate: "01/05/2015",
          genre: "Action",
          runtime: "2h 21m",
          posterPath:
              "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4ssDuvEDkSArWEdyBl2X5EHvYKU.jpg"),
    ];

    return listMovie;
  }

  List<TvShow> getAllTvShows() {
    List<TvShow> listTv = [
      TvShow(
          title: "The Falcon and The Winter Soldier",
          overview: "Following the events of “Avengers: Endgame”, the Falcon, Sam Wilson and the Winter Soldier, Bucky Barnes team up in a global adventure that tests their abilities, and their patience.",
          releaseDate: "19/03/2021",
          genre: "Sci-Fi",
          seasons: 1,
          posterPath: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/6kbAMLteGO8yyewYau6bJ683sw7.jpg"),
      TvShow(
          title: "The Flash",
          overview: "After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only \"meta-human\" who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won't be long before the world learns what Barry Allen has become...The Flash.",
          releaseDate: "07/10/2014",
          genre: "Drama",
          seasons: 7,
          posterPath: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg"),
      TvShow(
          title: "Superman & Lois",
          overview: "After years of facing megalomaniacal supervillains, monsters wreaking havoc on Metropolis, and alien invaders intent on wiping out the human race, The Man of Steel aka Clark Kent and Lois Lane come face to face with one of their greatest challenges ever: dealing with all the stress, pressures and complexities that come with being working parents in today's society.",
          releaseDate: "23/02/2021",
          genre: "Action",
          seasons: 1,
          posterPath: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vlv1gn98GqMnKHLSh0dNciqGfBl.jpg"),
      TvShow(
          title: "The Bad Batch",
          overview: "Follow the elite and experimental Clones of the Bad Batch as they find their way in a rapidly changing galaxy in the aftermath of the Clone Wars.",
          releaseDate: "04/05/2021",
          genre: "Sci-Fi",
          seasons: 1,
          posterPath: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uggL9jiDi0CCfoPIfU2X6BnMaFy.jpg"),
      TvShow(
          title: "Jupiter's Legacy",
          overview: "As the world's first generation of superheroes (who received their powers in the 1930s) become the revered elder guard in the present, their superpowered children struggle to live up to the legendary feats of their parents.",
          releaseDate: "07/05/2021",
          genre: "Sci-Fi",
          seasons: 1,
          posterPath: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/9yxep7oJdkj3Pla9TD9gKflRApY.jpg"),
    ];

    return listTv;
  }

  Detail getDetail() {
    return Detail(
        title: "Avengers: Endgame",
        overview:
        "After the devastating events of Avengers: Infinity War, the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos' actions and restore order to the universe once and for all, no matter what consequences may be in store.",
        releaseDate: "24/04/2019",
        genre: "Adventure",
        runtime: "3h 1m",
        seasons: null,
        posterPath:
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/or06FN3Dka5tukK1e9sl16pB3iy.jpg");
  }

  List<Detail> getCombinedList() {
    List<Detail> listCombined = [
      Detail(
          title: "Avengers: Endgame",
          overview:
          "After the devastating events of Avengers: Infinity War, the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos' actions and restore order to the universe once and for all, no matter what consequences may be in store.",
          releaseDate: "24/04/2019",
          genre: "Adventure",
          runtime: "3h 1m",
          seasons: null,
          posterPath:
          "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/or06FN3Dka5tukK1e9sl16pB3iy.jpg"),
      Detail(
          title: "The Falcon and The Winter Soldier",
          overview: "Following the events of “Avengers: Endgame”, the Falcon, Sam Wilson and the Winter Soldier, Bucky Barnes team up in a global adventure that tests their abilities, and their patience.",
          releaseDate: "19/03/2021",
          genre: "Sci-Fi",
          seasons: 1,
          runtime: null,
          posterPath: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/6kbAMLteGO8yyewYau6bJ683sw7.jpg"),
      Detail(
          title: "Superman & Lois",
          overview: "After years of facing megalomaniacal supervillains, monsters wreaking havoc on Metropolis, and alien invaders intent on wiping out the human race, The Man of Steel aka Clark Kent and Lois Lane come face to face with one of their greatest challenges ever: dealing with all the stress, pressures and complexities that come with being working parents in today's society.",
          releaseDate: "23/02/2021",
          genre: "Action",
          seasons: 1,
          runtime: null,
          posterPath: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vlv1gn98GqMnKHLSh0dNciqGfBl.jpg"),
      Detail(
          title: "Avengers: Infinity War",
          overview:
          "As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain.",
          releaseDate: "27/04/2018",
          genre: "Adventure",
          runtime: "2h 29m",
          seasons: null,
          posterPath:
          "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg"),
      Detail(
          title: "Jupiter's Legacy",
          overview: "As the world's first generation of superheroes (who received their powers in the 1930s) become the revered elder guard in the present, their superpowered children struggle to live up to the legendary feats of their parents.",
          releaseDate: "07/05/2021",
          genre: "Sci-Fi",
          seasons: 1,
          runtime: null,
          posterPath: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/9yxep7oJdkj3Pla9TD9gKflRApY.jpg"),
    ];

    return listCombined;
  }
}
