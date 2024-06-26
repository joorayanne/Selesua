import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Blogs extends StatelessWidget {
  late String imgpath;
  late String blogsneakpeek;

  Blogs({super.key});
  final List<Blogmodel> blogs = [
    Blogmodel(
        imgpath:
            'https://www.itu.int/en/ITU-D/Conferences/WTDC/WTDC21/R2A/PublishingImages/partner2connect/Sahle-Work-Zewde.png'),
    Blogmodel(
        imgpath:
            'https://www.fanabc.com/english/wp-content/uploads/2023/09/Abeba-Berhane-450x300.png'),
    Blogmodel(
        imgpath:
            'https://images.csmonitor.com/csm/2019/05/0520%20DDP%20ETHLADIES.jpg?alias=standard_900x600'),
    Blogmodel(
        imgpath:
            'https://www.fanabc.com/english/wp-content/uploads/2023/04/photo_2023-04-27_16-48-37.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400,
        height: 500,
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              height: 155,
              width: 380,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink.shade50,
                    ),
                    height: 130,
                    width: 380,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //image container
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: 130,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                color: Colors.pink.shade50),
                            child: Image.network(
                              blogs[index].imgpath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //text container
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(12),
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12)),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                              softWrap: true,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}

class Blogmodel {
  final String imgpath;
  late String blogsneakpeek;

  Blogmodel({
    required this.imgpath,
  });
}
