import 'package:flutter/material.dart';

class FilmContainer extends StatelessWidget {
  final String title;
  final String picture;

  const FilmContainer({
    required this.title,
    required this.picture,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              picture,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                padding:
                    EdgeInsets.only(top: 7, bottom: 7, left: 70, right: 70),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 3, 74, 132),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Text(
                  "Buy Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
