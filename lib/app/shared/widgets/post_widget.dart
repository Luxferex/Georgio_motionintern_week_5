import 'package:deep_dive_get_cli/app/data/model/post_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Post extends StatelessWidget {
  final PostModel postModel;
  final void Function()? onPressed;
  const Post({
    super.key,
    required this.postModel,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  36,
                ),
                child: SizedBox(
                  width: 36,
                  height: 36,
                  child: Image.asset(
                    postModel.fotoProfile.isEmpty
                        ? ""
                        : 'assets/images/${postModel.postingGambar}.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    postModel.namaAkun.isEmpty ? "" : postModel.namaAkun,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  postModel.isSponsor
                      ? Text(
                          "Sponsored",
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Image.asset(
          'assets/images/${postModel.postingGambar}.png',
          width: double.infinity,
          height: 390,
        ),
        const SizedBox(
          height: 9.25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                postModel.isLike
                    ? Icons.favorite
                    : Icons.favorite_border_outlined,
                color: Colors.red,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.comment,
            ),
            SizedBox(
              width: 12,
            ),
            Icon(
              Icons.share,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(Icons.bookmark_border_outlined),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            '${postModel.jumlahLike} Likes',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            ' ${postModel.namaAkun} ${postModel.description}',
          ),
        ),
      ],
    );
  }
}
