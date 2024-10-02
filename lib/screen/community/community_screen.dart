import 'package:application_gia_pha/constants.dart';
import 'package:application_gia_pha/screen/community/components/quantity_button.dart';
import 'package:application_gia_pha/screen/community/components/button_support.dart';
import 'package:application_gia_pha/screen/community/components/image_carousel.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ImageCarousel(),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ignore: avoid_unnecessary_containers
                  QuantityButton(
                    color: Color.fromARGB(197, 255, 185, 180),
                    text1: 'Thành viên',
                    text2: '12345',
                  ),
                  QuantityButton(
                    color: Color.fromARGB(255, 211, 204, 129),
                    text1: 'Gia phả',
                    text2: '6789',
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ButtonSupport(
                      image: 'assets/images/gia_pha2.png',
                      text: 'Hướng dẫn sử dụng',
                      press: () {},
                    ),
                    ButtonSupport(
                      image: 'assets/images/logo_zalo1.png',
                      text: 'Góp ý và liên hệ Zalo',
                      press: () {},
                    ),
                    ButtonSupport(
                      image: 'assets/images/logo_giapha.png',
                      text: 'Chính sách tài khoản',
                      press: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  decoration: BoxDecoration(
                    // border: Border.all(
                    //   color: Colors.grey,
                    // ),
                    borderRadius: BorderRadius.circular(10),
                    color: kPrimaryLightColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey
                            .withOpacity(0.5), // Màu của đổ bóng với độ mờ
                        spreadRadius: 2, // Bán kính mở rộng của đổ bóng
                        blurRadius: 5, // Bán kính làm mờ
                        offset: const Offset(0, 3), // Vị trí của bóng đổ (x, y)
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "MẪU GIA PHẢ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text("Địa chỉ: Ứng Hòa, Hà Nội"),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.account_circle,
                                size: 15,
                              ),
                              SizedBox(width: 3),
                              Text(
                                "5 Đời",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 15,
                              ),
                              SizedBox(width: 3),
                              Text(
                                "5 Đời",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_filled,
                                size: 15,
                              ),
                              SizedBox(width: 3),
                              Text(
                                "5 Đời",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Container(
                        height: 2, // Set your desired thickness
                        color: const Color.fromARGB(255, 162, 161, 161),
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            size: 40,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: "Người tạo:\n",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  children: [
                                    TextSpan(text: "Quản trị viên Gia Phả TBQ")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Container(
                        height: 2, // Set your desired thickness
                        color: const Color.fromARGB(255, 162, 161, 161),
                      ),
                      const SizedBox(height: 5),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CommunityButton(
                                title: "Danh sách thành viên",
                                text: "Phá Hệ",
                                icon: Icons.abc,
                                color: kPrimaryColor,
                                press: () {},
                              ),
                              CommunityButton(
                                title: "Danh sách chi, cành",
                                text: "Nhánh",
                                icon: Icons.abc,
                                color: kPrimaryColor,
                                press: () {},
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          CommunityButton(
                            title: "Sắp xếp phả đồ, câu đối, ảnh rồng phung ..",
                            text: "THIẾT KẾ PHẢ ĐỒ",
                            icon: Icons.abc,
                            color: kPrimaryColor,
                            press: () {},
                          ),
                          const SizedBox(height: 10),
                          CommunityButton(
                            title: "Viết lại lịch sự dòng họ",
                            text: "PHẢ KÝ",
                            icon: Icons.abc,
                            color: kPrimaryColor,
                            press: () {},
                          ),
                          const SizedBox(height: 10),
                          CommunityButton(
                            title:
                                "Ghi chép, thờ cúng tổ tiên, thắp hương, xin lễ ..",
                            text: "TỪ ĐƯỜNG",
                            icon: Icons.abc,
                            color: const Color.fromARGB(255, 169, 132, 29),
                            press: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class CommunityButton extends StatelessWidget {
  const CommunityButton({
    super.key,
    required this.title,
    required this.text,
    required this.icon,
    required this.color,
    required this.press,
  });
  final String title, text;
  final IconData icon;
  final Color color;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(width: 5),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
