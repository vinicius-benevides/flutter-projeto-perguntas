# 📱 Quiz Flutter - Projeto de Aprendizado

Este é um projeto simples de **Quiz sobre a linguagem Flutter**, desenvolvido com o objetivo de praticar técnicas e estruturas fundamentais do framework **Flutter** e da linguagem **Dart**.

## 🎯 Objetivo

O projeto foi criado como uma aplicação educacional para consolidar conhecimentos sobre:

* Estrutura de widgets (`StatelessWidget` e `StatefulWidget`)
* Gerenciamento de estado simples
* Composição de layout usando `Column`, `SizedBox`, `Padding`, etc.
* Animações com `AnimatedSwitcher`
* Modularização e reutilização de componentes
* Interação com listas e embaralhamento de perguntas/respostas

---

## 📸 Capturas de Tela

<p float="left">
  <img src="https://github.com/user-attachments/assets/46290e1d-75e7-4ab8-979d-3414669a2169" width="48%" />
  <img src="https://github.com/user-attachments/assets/45712da7-4970-414f-9788-afb91a97f204" width="48%" />
</p>


## 🧠 Como funciona

O aplicativo apresenta uma série de perguntas relacionadas ao Flutter. Cada pergunta possui múltiplas alternativas. Ao final do quiz, o usuário vê sua pontuação em forma de percentual.

Principais funcionalidades:

✅ Interface responsiva com `Material Design`

✅ Transições animadas entre perguntas e resultado

✅ Embaralhamento das perguntas e respostas a cada novo jogo

✅ Botão para reiniciar o quiz

---

## 🧩 Estrutura do Projeto

```bash
lib/
├── main.dart              # Ponto de entrada da aplicação
├── types.dart             # Modelos de dados (Pergunta e Resposta)
├── utils/
│   └── perguntas.dart     # Lista de perguntas
├── questionario.dart      # Widget do questionário
├── resultado.dart         # Widget da tela de resultado
├── questao.dart           # Widget para exibir a pergunta
└── opcao.dart             # Widget para exibir as opções de resposta
```

---

## 🚀 Como executar

### Pré-requisitos:

* [Flutter SDK](https://flutter.dev/docs/get-started/install)
* Um editor de código (ex: [VS Code](https://code.visualstudio.com/) ou [Android Studio](https://developer.android.com/studio))

### Passos:

1. Clone este repositório:

```bash
https://github.com/vinicius-benevides/flutter-projeto-perguntas.git
```

2. Instale as dependências:

```bash
flutter pub get
```

3. Execute a aplicação:

```bash
flutter run
```

---

## 📘 Aprendizados

Durante o desenvolvimento, foram explorados conceitos importantes como:

* Criação e uso de `Widgets` personalizados
* Boas práticas com separação de responsabilidades
* Uso de `setState()` para controle de fluxo no app
* Aplicação de estilos e temas com `ThemeData`

---

## 🛠️ Possíveis melhorias futuras

* Suporte a múltiplos temas (claro/escuro)
* Persistência da pontuação com `SharedPreferences`
* Inclusão de mais categorias e perguntas
* Análise de desempenho do usuário
* Internacionalização (`i18n`)

