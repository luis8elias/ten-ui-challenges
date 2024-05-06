import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IgPost extends StatelessWidget {
  const IgPost({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    margin: const EdgeInsets.only(
                      left: 5.0,
                      top: 5.0
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: theme.scaffoldBackgroundColor
                      ),
                      image: const DecorationImage(
                        image: AssetImage('assets/03/story.jpeg'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'luis8elias',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      minimumSize: const Size(15, 15),
                    ),
                    onPressed: (){}, 
                    child: const Text(
                      'Seguir',
                      style: TextStyle(
                         color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  IconButton(
                    splashRadius: 20,
                    onPressed: (){}, 
                    icon: const Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2023/03/29/19/32/man-7886201_1280.jpg',
                ),
                fit: BoxFit.cover
              )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: IconButton(
                      constraints: const BoxConstraints(),
                      splashRadius: 10,
                      style: IconButton.styleFrom(
                        padding: EdgeInsets.zero
                      ),
                      onPressed: (){}, 
                      icon: SvgPicture.asset(
                        'assets/03/heart.svg',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: IconButton(
                      constraints: const BoxConstraints(),
                      splashRadius: 10,
                      style: IconButton.styleFrom(
                        padding: EdgeInsets.zero
                      ),
                      onPressed: (){}, 
                      icon: SvgPicture.asset(
                        'assets/03/comment.svg',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: IconButton(
                      splashRadius: 10,
                      onPressed: (){}, 
                      icon: SvgPicture.asset(
                        'assets/03/message.svg',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                splashRadius: 10,
                onPressed: (){}, 
                icon: const Icon(
                  Icons.bookmark_outline
                )
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 15
            ),
            child: Text(
              '13 Me gusta',
              style: TextStyle(
                 color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 15
            ),
            child: Text(
              'luis8elias',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const  Padding(
            padding: EdgeInsets.only(
              left: 15
            ),
            child: Text(
              'Ver 1 comentario',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const  Padding(
            padding: EdgeInsets.only(
              left: 15
            ),
            child: Text(
              'Hace 9 horas',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 8,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}