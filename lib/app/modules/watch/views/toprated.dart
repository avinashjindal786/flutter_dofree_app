import 'package:flutter/material.dart';
import 'package:freedo/app/modules/watch/views/text.dart';
//import 'E:\/freedo/lib/app/modules/watch/views/text.dart';

class TopRatedMovies extends StatelessWidget {
  final List toprated;

  const TopRatedMovies({required this.toprated});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          modified_text(
            text: 'Top Rated Movies',
            size: 26,
              color: Colors.white
          ),
          SizedBox(height: 10),
          Container(
              height: 270,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: toprated.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 140,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w500' +
                                        toprated[index]['poster_path']),
                              ),
                            ),
                            height: 200,
                          ),
                          SizedBox(height: 5),
                          Container(
                            child: modified_text(
                                color: Colors.white,
                                size: 15,
                                text: toprated[index]['title'] != null
                                    ? toprated[index]['title']
                                    : 'Loading'),
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
