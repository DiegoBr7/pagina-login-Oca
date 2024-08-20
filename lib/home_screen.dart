import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.teal[50],
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Olá, João', style: TextStyle(fontSize: 18)),
                    Icon(Icons.account_circle, color: Colors.teal, size: 40),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 150,
                color: Colors.grey[300],
                child: Center(child: Text('imagem banner')),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle, size: 10, color: Colors.teal),
                  SizedBox(width: 4),
                  Icon(Icons.circle, size: 10, color: Colors.grey),
                  SizedBox(width: 4),
                  Icon(Icons.circle, size: 10, color: Colors.grey),
                ],
              ),
              SizedBox(height: 16),
              Text('Conheça mais', style: TextStyle(fontSize: 18)),
              SizedBox(height: 16),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildCategoryCard('Psicologia'),
                  _buildCategoryCard('Psicopedagogia'),
                  _buildCategoryCard('Nutricionista'),
                  _buildCategoryCard('Psicopedagogia'),
                ],
              ),
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Resumo'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_circle, size: 50, color: Colors.teal),
          SizedBox(height: 16),
          Text(title, style: TextStyle(fontSize: 16, color: Colors.teal)),
        ],
      ),
    );
  }
}
