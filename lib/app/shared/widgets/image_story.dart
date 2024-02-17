import 'package:deep_dive_get_cli/app/data/model/story_model.dart';
import 'package:flutter/material.dart';

class ImageStory extends StatelessWidget {
  final StoryModel story;
  final void Function()? onTap;

  const ImageStory({
    Key? key,
    required this.story,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 72,
            height: 72,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 36,
                  backgroundImage:
                      AssetImage('assets/images/${story.image}.png'),
                ),
                if (story.isLoginAccount)
                  Positioned(
                    bottom: 0,
                    right: 0.9,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.blue,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(
            width: 72,
            child: Text(
              story.namaAkun,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
