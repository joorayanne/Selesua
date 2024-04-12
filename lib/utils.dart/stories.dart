import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:selesua/utils.dart/biographies.dart';

class Stories extends StatelessWidget {
  late String imgpath;
  late String name;
  late String sneekpeak;
  late String profilepic;
  Stories({
    super.key,
  });

  final List<Biomodel> biographies = [
    Biomodel(
        imgpath:
            'https://www.itu.int/en/ITU-D/Conferences/WTDC/WTDC21/R2A/PublishingImages/partner2connect/Sahle-Work-Zewde.png',
        name: 'President SahleWork Zewdie'),
    Biomodel(
        imgpath:
            'https://www.fanabc.com/english/wp-content/uploads/2023/09/Abeba-Berhane-450x300.png',
        name: 'Scientist Abeba irhane'),
    Biomodel(
        imgpath:
            'https://images.csmonitor.com/csm/2019/05/0520%20DDP%20ETHLADIES.jpg?alias=standard_900x600',
        name: 'Meaza Ashenafi'),
    Biomodel(
        imgpath:
            'https://www.fanabc.com/english/wp-content/uploads/2023/04/photo_2023-04-27_16-48-37.jpg',
        name: 'Derartu Tulu'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            width: 400,
            height: 200,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red.shade100,
                  ),
                  width: 380,
                  height: 130,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //image container
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 140,
                          width: 190,
                          decoration: const BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Image.network(
                            biographies[index].imgpath,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(12),
                          width: 190,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
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
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 380,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink.shade50,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Image.network(
                                biographies[index].imgpath,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            biographies[index].name,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.offline_share,
                            color: Color.fromARGB(255, 238, 53, 115),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('233'),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.comment,
                            color: Color.fromARGB(255, 238, 53, 115),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('233'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Storymodel {
  final String imgpath;
  final String name;
  final String sneekpeak;
  final String profilepic;

  Storymodel({
    required this.imgpath,
    required this.name,
    required this.sneekpeak,
    required this.profilepic,
  });
}
