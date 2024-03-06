import 'package:flutter/material.dart';

class Asset {
  final String name;
  final String description;
  final String imageUrl;
  final String location;
  final String procurementDate;
  final String expiryDate;
  final String status;
  final double price;
  final String qualityStatus;

  Asset({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.location,
    required this.procurementDate,
    required this.expiryDate,
    required this.status,
    required this.price,
    required this.qualityStatus,
  });
}

class AssetListPage extends StatelessWidget {
  final List<Asset> assets = [
    Asset(
      name: 'Asset 1',
      description: 'Description for Asset 1',
      imageUrl: 'https://placekitten.com/200/200', // Sample image URL
      location: 'Gate 1',
      procurementDate: '2022-01-01',
      expiryDate: '2025-01-01',
      status: 'Active',
      price: 500.0,
      qualityStatus: 'QA Fail',
    ),
    Asset(
      name: 'Asset 2',
      description: 'Description for Asset 2',
      imageUrl: 'https://placekitten.com/200/200', // Sample image URL
      location: 'Gate 2',
      procurementDate: '2022-01-01',
      expiryDate: '2025-01-01',
      status: 'In Active',
      price: 100.0,
      qualityStatus: 'QA Pass',
    ),
    Asset(
      name: 'Asset 3',
      description: 'Description for Asset 2',
      imageUrl: 'https://placekitten.com/200/200', // Sample image URL
      location: 'Gate 3',
      procurementDate: '2022-01-01',
      expiryDate: '2025-01-01',
      status: 'In Active',
      price: 100.0,
      qualityStatus: 'QA Pass',
    ),
    Asset(
      name: 'Asset 4',
      description: 'Description for Asset 2',
      imageUrl: 'https://placekitten.com/200/200', // Sample image URL
      location: 'Gate 4',
      procurementDate: '2022-01-01',
      expiryDate: '2025-01-01',
      status: 'In Active',
      price: 100.0,
      qualityStatus: 'QA Pass',
    ),
    Asset(
      name: 'Asset 5',
      description: 'Description for Asset 2',
      imageUrl: 'https://placekitten.com/200/200', // Sample image URL
      location: 'Gate 5',
      procurementDate: '2022-01-01',
      expiryDate: '2025-01-01',
      status: 'In Active',
      price: 100.0,
      qualityStatus: 'QA Pass',
    ),
    // Add more assets here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asset List'),
      ),
      body: ListView.builder(
        itemCount: assets.length,
        itemBuilder: (context, index) {
          return AssetCard(asset: assets[index]);
        },
      ),
    );
  }
}

class AssetCard extends StatelessWidget {
  final Asset asset;

  AssetCard({required this.asset});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      color: Color.fromRGBO(255, 255, 255, 1),
      margin: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Top Row - Asset Image
            Row(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  child: Image.network(
                    asset.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                    width: 12.0), // Add some space between image and details
                // Right side - Asset Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDetailRow('Name', asset.name),
                      _buildDetailRow('Status', asset.status),
                      _buildDetailRow('Location', asset.location),
                      _buildDetailRow('Quality Status', asset.qualityStatus)
                    ],
                  ),
                ),
                // Expanded(
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       _buildDetailRow('Expiry', asset.expiryDate),
                //       _buildDetailRow('Procured', asset.procurementDate),
                //       _buildDetailRow('Price', '\$${asset.price.toString()}'),
                //     ],
                //   ),
                // ),
              ],
            ),
            SizedBox(
                height:
                    12.0), // Add some space between image row and the next row
            //   // Bottom Row - More Asset Details
            Row(
              children: [
                Expanded(
                  child: _buildDetailRow(
                      'Procurement Date', asset.procurementDate),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: _buildDetailRow('Expiry Date', asset.expiryDate),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child:
                      _buildDetailRow('Price', '\$${asset.price.toString()}'),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: _buildDetailRow('Description', asset.description),
                ),
              ],
            )
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
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
