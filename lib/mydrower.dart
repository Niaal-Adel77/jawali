import 'package:flutter/material.dart';
import 'Page.dart';
class MYDROWER extends StatelessWidget {
  const MYDROWER({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Image(image: AssetImage("images/11.png")),
                  ),
                  SizedBox(height: 10),
                  Text("نيال عادل علي احمد", style: TextStyle(fontSize: 16)),
                ],
              ),
            ),

            Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  ListTile(
                    title: Text("محفظة"),
                    leading: Icon(Icons.phone_android),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MYPage()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("طلب الدفع"),
                    leading: Icon(Icons.request_page),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MYPage()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("سداد فواتير/شحن رصيد"),
                    leading: Icon(Icons.receipt_long),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MYPage()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("اشتراك باقات"),
                    leading: Icon(Icons.sim_card),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MYPage()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("حوالات الشبكة"),
                    leading: Icon(Icons.sync_alt),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MYPage()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("الخدمات"),
                    leading: Icon(Icons.add_circle_outline_rounded),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MYPage()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("المفضلة"),
                    leading: Icon(Icons.star),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MYPage()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("كشف حساب"),
                    leading: Icon(Icons.bar_chart),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MYPage()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("المصارفة"),
                    leading: Icon(Icons.account_balance),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MYPage()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("المصارفة"),
                    leading: Icon(Icons.call),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MYPage()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("المصارفة"),
                    leading: Icon(Icons.settings),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MYPage()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("المصارفة"),
                    leading: Icon(Icons.logout),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MYPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
