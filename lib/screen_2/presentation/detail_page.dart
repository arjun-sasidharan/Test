import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_project/common/asset_file.dart';
import 'package:test_project/common/constants.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         backgroundColor: lightVioletColor,
        body: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    margin: const EdgeInsets.only(left: 16),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: violetColor,
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                        child: const Icon(
                          Icons.arrow_back_ios_rounded, color: Colors.white, size: 15,)),
                  ),
                  const Text(
                    'スタンプカード詳細',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconButton(onPressed: (){},
                      splashRadius: 20,
                      constraints: const BoxConstraints(),
                      padding: const EdgeInsets.only(right: 19),
                      icon: SvgPicture.asset(iconMinusCircle))
                ],
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Mer キッチン',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          '現在の獲得数',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '30 ',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '個',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Card(
                elevation: 5,
                margin: EdgeInsets.zero,
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 33,),
                    ConstrainedBox(
                      constraints: BoxConstraints.loose(
                        const Size.fromHeight(200),
                      ),
                      child: const HorizontalCardList(),
                    ),
                    const SizedBox(height: 24,),
                    Container(
                      height: 500,
                    color: Colors.red,),
                    Container(
                      height: 500,
                      color: Colors.green,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HorizontalCardList extends StatelessWidget {
  const HorizontalCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: const EdgeInsets.only(left: 30),
        itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              // color: Colors.orange,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
              child: Container(
                // width: Get.width * 0.8,
                width: 317,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                ),
                child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 5,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 16.0,
                    shrinkWrap: true,
                    clipBehavior: Clip.none,
                    children: List.generate(15, (index) {
                      // return Container(width: 30, height: 30, color: Colors.orange);
                      return Image.asset(iconCheckPolygon2,);
                    }),
                ),
              ),
            );
        },
        separatorBuilder: (_, index) => SizedBox(width: 16,),
        itemCount: 4);
  }
}

