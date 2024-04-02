import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/features/home/data/models/news_model.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as NewsModel;
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Stack(
          children: [
            Image.network(
              model.image ??
                  'https://th.bing.com/th/id/OIP.3dQJdd3puXqdw9pDmNrK4QHaH0?rs=1&pid=ImgDetMain',
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .44,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .28,
              left: 10,
              right: 100,
              child: Text(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                model.title!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,),
              ),
            ),
            Positioned(
              left: 10,
              top: 30,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 10,
              right: 100,
              child: Text(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                model.publishedat!,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 150,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Text(
                            model.author!,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Text('Author'),
                        ],
                      )),
                  Text(model.name!,  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                model.desc!,
                style: const TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('And if you want to read more: '),
              const SizedBox(
                height: 5,
              ),
              Text(
                model.url!,
                style: const TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
