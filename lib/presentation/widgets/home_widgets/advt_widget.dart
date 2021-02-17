import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class AdvtWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      width: 400,
      height: 220,
      child: Swiper(
        autoplay: true,
        duration: 1000,
        pagination: SwiperPagination(
          margin: EdgeInsets.only(top: 0),
          builder: DotSwiperPaginationBuilder(
            activeColor: Colors.blue[200],
            color: Colors.white60,
          ),
        ),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(15, 25, 15, 25),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(22),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey[900],
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(22),
                ),
                child: Image.asset(
                  'assets/adv_img.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
        scale: 0.7,
        viewportFraction: 0.8,
      ),
    );
  }
}
