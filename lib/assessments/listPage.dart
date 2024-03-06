import 'package:flutter/material.dart';

class Assessment {
  final String name;
  final int totalAssets;
  final int qaPassedAssets;
  final int qaFailedAssets;

  Assessment({
    required this.name,
    required this.totalAssets,
    required this.qaPassedAssets,
    required this.qaFailedAssets,
  });
}

class AssessmentListPage extends StatelessWidget {
  final List<Assessment> assessments = [
    Assessment(
      name: 'January 2024',
      totalAssets: 10000,
      qaPassedAssets: 8000,
      qaFailedAssets: 2000,
    ),
    Assessment(
      name: 'February 2024',
      totalAssets: 10000,
      qaPassedAssets: 9000,
      qaFailedAssets: 1000,
    ),
    Assessment(
      name: 'March 2024',
      totalAssets: 10000,
      qaPassedAssets: 9500,
      qaFailedAssets: 500,
    ),
    Assessment(
      name: 'April 2024',
      totalAssets: 10000,
      qaPassedAssets: 9500,
      qaFailedAssets: 500,
    ),
    Assessment(
      name: 'May 2024',
      totalAssets: 10000,
      qaPassedAssets: 9500,
      qaFailedAssets: 500,
    ),
    Assessment(
      name: 'June 2024',
      totalAssets: 10000,
      qaPassedAssets: 9500,
      qaFailedAssets: 500,
    ),
    Assessment(
      name: 'July 2024',
      totalAssets: 10000,
      qaPassedAssets: 9500,
      qaFailedAssets: 500,
    ),
    // Add more assessments here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assessment List'),
      ),
      body: ListView.builder(
        itemCount: assessments.length,
        itemBuilder: (context, index) {
          return AssessmentCard(assessment: assessments[index]);
        },
      ),
    );
  }
}

class AssessmentCard extends StatelessWidget {
  final Assessment assessment;

  AssessmentCard({required this.assessment});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Assessment Name: ${assessment.name}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            _buildDetailRow('Total Assets', assessment.totalAssets.toString()),
            _buildDetailRow(
                'QA Passed Assets', assessment.qaPassedAssets.toString()),
            _buildDetailRow(
                'QA Failed Assets', assessment.qaFailedAssets.toString()),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(width: 8.0),
          Text(
            value,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
