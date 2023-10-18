// 설정 페이지

import 'imports.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 50.0, // 위 패딩
          bottom: 30.0, // 아래 패딩
          left: 40.0, // 왼쪽 패딩
          right: 40.0, // 오른쪽 패딩
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 20.0, // 왼쪽 패딩
                right: 20.0,
              ),
              width: 312.0,
              height: 638,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                border: Border.all(color: Colors.black),
              ),
              child: Text(
                "설정 화면",
                // 스타일 설정
                style: TextStyle(
                    fontSize: 15.0, // 글꼴 크기
                    fontFamily: "Font",
                    fontWeight: FontWeight.bold, //굵게 하고 싶은 경우
                    color: AppColor.mainColor),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex = SETTINGS_PAGE, // 현재 페이지가 두 번째 페이지이므로 해당 인덱스 선택
        onItemTapped: (newIndex) {
          if (newIndex != currentIndex) {
            Navigator.push(context, pageRoute(newIndex));
          }
        },
      ),
    );
  }
}
