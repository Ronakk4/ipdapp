import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Agri-Commodity Predictor',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green[700],
        actions: [
          DropdownButton<String>(
            items: [
              DropdownMenuItem(
                child: Text('Select Type of Bill', style: TextStyle(color: Colors.white)),
                value: 'select',
              ),
              DropdownMenuItem(
                child: Text('Sales Invoice', style: TextStyle(color: Colors.white)),
                value: 'sales_invoice',
              ),
              DropdownMenuItem(
                child: Text('Purchase Invoice', style: TextStyle(color: Colors.white)),
                value: 'purchase_invoice',
              ),
              DropdownMenuItem(
                child: Text('Receipt', style: TextStyle(color: Colors.white)),
                value: 'receipt',
              ),
            ],
            onChanged: (value) {
              // Handle bill type selection
            },
          ),
          SizedBox(width: 10),
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {
              // Implement camera functionality
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.green[200],
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(Icons.filter_alt, color: Colors.white),
                SizedBox(width: 10),
                Text('Filters:', style: TextStyle(color: Colors.white)),
                Spacer(),
                Text('Time', style: TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                Text('Location', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Container(
            color: Colors.green[100],
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(Icons.grass, color: Colors.white),
                SizedBox(width: 10),
                Text('Choose Agri-Commodity:', style: TextStyle(color: Colors.white)),
                Spacer(),
                DropdownButton<String>(
                  items: [
                    DropdownMenuItem(
                      child: Text('Select', style: TextStyle(color: Colors.white)),
                      value: 'select',
                    ),
                    DropdownMenuItem(
                      child: Text('Wheat', style: TextStyle(color: Colors.white)),
                      value: 'wheat',
                    ),
                    DropdownMenuItem(
                      child: Text('Paddy', style: TextStyle(color: Colors.white)),
                      value: 'paddy',
                    ),
                  ],
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green[50],
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Historical Data Table', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green[700])),
                        SizedBox(height: 10),
                        Expanded(
                          child: DataTable(
                            columns: [
                              DataColumn(label: Text('Date', style: TextStyle(fontWeight: FontWeight.bold))),
                              DataColumn(label: Text('Price', style: TextStyle(fontWeight: FontWeight.bold))),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Text('2023-01-01')),
                                DataCell(Text('\$100')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('2023-01-02')),
                                DataCell(Text('\$110')),
                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green[50],
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Predicted Price Trend', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green[700])),
                        SizedBox(height: 10),
                        Placeholder(
                          fallbackHeight: 200,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Predict', style: TextStyle(color: Colors.white)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green[700]!),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
