import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  late String imgpath;
  Events({
    super.key,
  });
  final List<Eventmodel> events = [
    Eventmodel(
      imgpath:
          'https://media.istockphoto.com/id/1386479313/photo/happy-millennial-afro-american-business-woman-posing-isolated-on-white.jpg?s=612x612&w=0&k=20&c=8ssXDNTp1XAPan8Bg6mJRwG7EXHshFO5o0v9SIj96nY=',
    ),
    Eventmodel(
      imgpath:
          'https://media.istockphoto.com/id/1386479313/photo/happy-millennial-afro-american-business-woman-posing-isolated-on-white.jpg?s=612x612&w=0&k=20&c=8ssXDNTp1XAPan8Bg6mJRwG7EXHshFO5o0v9SIj96nY=',
    ),
    Eventmodel(
      imgpath:
          'https://media.istockphoto.com/id/1386479313/photo/happy-millennial-afro-american-business-woman-posing-isolated-on-white.jpg?s=612x612&w=0&k=20&c=8ssXDNTp1XAPan8Bg6mJRwG7EXHshFO5o0v9SIj96nY=',
    ),
    Eventmodel(
      imgpath:
          'https://media.istockphoto.com/id/1386479313/photo/happy-millennial-afro-american-business-woman-posing-isolated-on-white.jpg?s=612x612&w=0&k=20&c=8ssXDNTp1XAPan8Bg6mJRwG7EXHshFO5o0v9SIj96nY=',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 500,
        width: 400,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: ((context, index) {
            return SizedBox(
              height: 160,
              width: 380,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 140,
                      width: 380,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink.shade50),
                      child: Image.network(
                        events[index].imgpath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // )
                ],
              ),
            );
          }),
        ));
  }
}

class Eventmodel {
  late String imgpath;
  Eventmodel({required this.imgpath});
}
