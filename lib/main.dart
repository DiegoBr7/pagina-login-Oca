import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'home_screen.dart'; // Importando a tela inicial

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LoginScreen(),
      routes: {
        '/register': (context) => RegisterScreen(),
        '/home': (context) =>
            HomeScreen(), // Definindo a rota para a tela inicial
      },
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Adicionado para evitar overflow
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 190),
                  padding: EdgeInsets.only(top: 10),
                  child: Opacity(
                    opacity: 1.0,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.normal, // Peso regular
                        fontFamily: "Dosis", // Fonte Dosis
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24 , width: 100,),
                TextField(
                  cursorColor: Colors.teal, // Define a cor do cursor
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(
                      color: Color(0xFF555555), // Cor aplicada
                      fontWeight: FontWeight.w400, // Peso regular
                      fontSize: 20,
                      height: 1.366, // Altura da linha
                    ), // Cor do rótulo quando não está focado
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 255, 255,
                            255), // Cor da borda quando não está focado
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.teal, // Cor da borda quando está focado
                      ),
                    ),
                    filled:
                        true, // Indica que o TextField deve ser preenchido com uma cor de fundo
                    fillColor:
                        Color(0xFFD9D9D9), // Define a cor de fundo como cinza
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  obscureText: true,
                  cursorColor: Colors.teal, // Define a cor do cursor
                  decoration: InputDecoration(
                      labelText: 'Senha',
                      labelStyle: TextStyle(
                          color: Color(0xFF555555), // Cor aplicada
                          fontWeight: FontWeight.w400, // Peso regular
                          fontSize: 20,
                          height:
                              1.366), // Altura da linha), // Cor do rótulo quando não está focado
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 255, 255,
                              255), // Cor da borda quando não está focado
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: Colors.teal, // Cor da borda quando está focado
                        ),
                      ),
                      filled:
                          true, // Indica que o TextField deve ser preenchido com uma cor de fundo
                      fillColor:
                          Color(0xFFD9D9D9) // Define a cor de fundo como cinza
                      ),
                ),
                SizedBox(height: 12),
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Checkbox(
                            value: false,
                            onChanged: (bool? value) {},
                            fillColor: MaterialStateProperty.all<Color>(
                                Color(0xFFD9D9D9)),
                          ),
                          Text(
                            'Lembrar minha senha',
                            style: TextStyle(
                              fontFamily: 'Dosis',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              letterSpacing: -0.165,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Esqueci minha senha',
                          style: TextStyle(
                            color: Color(
                                0xFF363636), // Define a cor preta (ou uma cor similar)
                            fontFamily: 'Open Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height:
                                1.5, // line-height é calculado como font-size * height
                            letterSpacing: -0.165,
                          ), // Define a cor preta
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Opacity(
                  opacity: 1.0, // Define a opacidade do botão como 0
                  child: Container(
                    width: 333, // Largura do botão
                    height: 56, // Altura do botão
                    margin: EdgeInsets.only(
                        
                        ), // Define a margem superior e à esquerda
                    child: ElevatedButton(
                      onPressed: () {
                        // Navegar para a tela inicial após o login
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Dosis',
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 30.34 / 24,
                          
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft:
                                Radius.circular(20), // Define o border-radius
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        backgroundColor:
                            Color(0xFF06C270), // Define a cor de fundo do botão
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 240),
                Text(
                  'Ainda não é registrado?',
                  style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Opacity(
                  opacity:
                      1.0, // Define a opacidade (0 = invisível, 1 = visível)
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      'Registre-se',
                      style: TextStyle(
                        fontFamily: 'Dosis',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Color(0xFF06C657),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white, // background: #FFFFFF;
                      minimumSize: Size(333, 56), // width: 333px; height: 56px;
                      padding: EdgeInsets
                          .zero, // Remove o espaçamento interno do botão
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              20), // border-radius: 20px 0px 0px 0px;
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      side: BorderSide(
                        color: Color(0xFF06C657), // Cor da borda: #06C657
                        width: 2, // Largura da borda: 2px
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: Row(children: <Widget>[
                    Expanded(
                      child: Divider(
                        height: 2,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Ou acesse com'),
                    ),
                    Expanded(
                      child: Divider(
                        height: 2,
                        color: Colors.grey,
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Image.asset('assets/images/Google.png'),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset('assets/images/Facebook.png'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
