import 'package:chat_process/Screens/project_detail_screen.dart';
import 'package:flutter/material.dart';

class ProjectScreen extends StatelessWidget {
  final List<Map<String, dynamic>> projects = [
    {
      'name': 'Project A',
      'image': 'assets/pp.jpg',
      'dateImplemented': '2023-11-01',
      'file': 'project_a.pdf',
      'description':
          'This is Project A. It is a sample description for Project A.',
    },
    {
      'name': 'Project B',
      'image': 'assets/sd.jpg',
      'dateImplemented': '2023-09-15',
      'file': 'project_b.pdf',
      'description':
          'This is Project B. It is a sample description for Project B.',
    },
    {
      'name': 'Project A',
      'image': 'assets/pp.jpg',
      'dateImplemented': '2023-11-01',
      'file': 'project_a.pdf',
      'description':
          'This is Project A. It is a sample description for Project A.',
    },
    {
      'name': 'Project B',
      'image': 'assets/sd.jpg',
      'dateImplemented': '2023-09-15',
      'file': 'project_b.pdf',
      'description':
          'This is Project B. It is a sample description for Project B.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Eshway',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProjectDetailScreen(
                    project: projects[index],
                  ),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 4.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(12.0)),
                      image: DecorationImage(
                        image: AssetImage(projects[index]['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        projects[index]['name'],
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description:',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          projects[index]['description'],
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Date Implemented: ${projects[index]['dateImplemented']}',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'File: ${projects[index]['file']}',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
