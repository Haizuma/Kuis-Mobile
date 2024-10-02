import 'package:flutter/material.dart';
import 'login_page.dart';
import 'detail_upnvy_page.dart';

class Faculty {
  String name;
  int numberOfMajors;
  int numberOfStudents;
  String imageAsset;
  List<String> imageUrls;

  Faculty({
    required this.name,
    required this.numberOfMajors,
    required this.numberOfStudents,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var facultyList = [
  Faculty(
    name: 'Fakultas Teknik',
    numberOfMajors: 6,
    numberOfStudents: 2000,
    imageAsset: 'images/fakultas-teknik.jpg',
    imageUrls: [
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
    ],
  ),
  Faculty(
    name: 'Fakultas Ekonomi dan Bisnis',
    numberOfMajors: 5,
    numberOfStudents: 1500,
    imageAsset: 'images/fakultas-ekonomi.jpg',
    imageUrls: [
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
    ],
  ),
  Faculty(
    name: 'Fakultas Ilmu Sosial dan Ilmu Politik',
    numberOfMajors: 4,
    numberOfStudents: 1200,
    imageAsset: 'images/fakultas-fisip.jpg',
    imageUrls: [
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
    ],
  ),
  Faculty(
    name: 'Fakultas Pertanian',
    numberOfMajors: 3,
    numberOfStudents: 800,
    imageAsset: 'images/fakultas-pertanian.jpeg',
    imageUrls: [
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
    ],
  ),
  Faculty(
    name: 'Fakultas Hukum',
    numberOfMajors: 1,
    numberOfStudents: 600,
    imageAsset: 'images/fakultas-hukum.jpg',
    imageUrls: [
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
    ],
  ),
  Faculty(
    name: 'Fakultas Teknologi Mineral',
    numberOfMajors: 5,
    numberOfStudents: 3000,
    imageAsset: 'images/fakultas-ftm.jpg',
    imageUrls: [
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
    ],
  ),
  Faculty(
    name: 'Fakultas Perikanan',
    numberOfMajors: 3,
    numberOfStudents: 1000,
    imageAsset: 'images/fakultas-ikan.jpg',
    imageUrls: [
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
      'https://awsimages.detik.net.id/community/media/visual/2023/01/13/kampus-upn-veteran-jogja-jumat-1312023_169.jpeg?w=1200',
    ],
  ),
];

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent.shade100,
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text('Halo, $username'),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailUpnvyPage()),
              );
            },
            child: Card(
              margin: EdgeInsets.all(16),
              color: Colors.green[50],
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Sudahkah kamu mengenal UPN Jogja? UPN Jogja adalah kampus favorit di DIY lho! Kenalan Lebih lanjut yuk",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: facultyList.length,
              itemBuilder: (context, index) {
                final faculty = facultyList[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  color: Colors.white,
                  child: ListTile(
                    leading: Image.asset(
                      faculty.imageAsset,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(faculty.name),
                    subtitle: Text(
                        'Jumlah Jurusan: ${faculty.numberOfMajors}, Jumlah Mahasiswa: ${faculty.numberOfStudents}'),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green[800],
            ),
            child: Text(
              'Logout',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
