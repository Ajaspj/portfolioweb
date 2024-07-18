import 'package:portfolioweb/model/carousalmodel.dart';
import 'package:portfolioweb/model/projectmodel.dart';

List<ProjectModel> projectList = [
  // #1 project
  ProjectModel(
    title: 'Spice Store (E-Commerce)',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink: 'https://github.com/Ajaspj/spiceway.git',
    images: [
      CarouselModel(
          title: 'Home Page',
          subtitle: 'User Application',
          image: "assets/images/homepagespiceway.png"),
      CarouselModel(
        title: 'Categories Page',
        subtitle: '',
        image: "assets/images/categoryspiceway.png",
      ),
      CarouselModel(
        title: 'Cart Page',
        subtitle: '',
        image: "assets/images/cartspiceway.png",
      ),
      CarouselModel(
        title: 'Checkout Page',
        subtitle: '',
        image: "assets/images/checkoutspiceway.png",
      ),
    ],
    skills: ['Flutter', 'Dart', 'Firebase Auth', 'FireStore', 'provider'],
  ),

  // #2 project
  ProjectModel(
    title: 'News App using REST API',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink: 'https://github.com/Ajaspj/api_integration_with_provider.git',
    images: [
      CarouselModel(
        title: 'Homepage',
        subtitle: '',
        image: 'assets/images/news_app_home.jpg',
      ),
      CarouselModel(
        title: 'Filter by Category',
        subtitle: '',
        image: "assets/images/news_app_details.jpg",
      ),
    ],
    skills: [
      'Flutter',
      'Dart',
      'REST API',
      'Provider',
      'Hive',
    ],
  ),

  // #3 project
  ProjectModel(
    title: 'TODO Application',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink: 'https://github.com/Ajaspj/task030424.git',
    images: [
      CarouselModel(
        title: 'TODO List',
        subtitle: '',
        image: "assets/images/todo list.png",
      ),
      CarouselModel(
        title: 'Add TODO',
        subtitle: '',
        image: "assets/images/todo add.png",
      ),
    ],
    skills: [
      'Flutter',
      'Dart',
      'Hive',
      'Type Adapter',
    ],
  ),

  // #4 project
  ProjectModel(
    title: 'Expense Tracker',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink: 'https://github.com/Ajaspj/expensetrackerapp.git',
    images: [
      CarouselModel(
        title: 'Add New Income/Expense',
        subtitle: '',
        image: "assets/images/expense_tracker_add_record.png",
      ),
    ],
    skills: [
      'Flutter',
      'Dart',
      'Provider',
      'Sqflite',
    ],
  ),

  // #5 project
  ProjectModel(
    title: 'Notes Application',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink: 'https://github.com/Ajaspj/notes_app.git',
    images: [
      CarouselModel(
        title: 'Home Page',
        subtitle: '',
        image: "assets/images/note home.png",
      ),
      CarouselModel(
        title: 'Add New Note',
        subtitle: '',
        image: "assets/images/note add.png",
      ),
    ],
    skills: [
      'Flutter',
      'Dart',
      'Hive',
      'Share Plus',
    ],
  ),

  // #6 project
  ProjectModel(
    title: 'Quiz Application',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink: 'https://github.com/Ajaspj/quizapp.git',
    images: [
      CarouselModel(
        title: 'Home Page',
        subtitle: '',
        image: "assets/images/quiz home.png",
      ),
      CarouselModel(
        title: 'Questions',
        subtitle: '',
        image: "assets/images/quiz exm.png",
      ),
      CarouselModel(
        title: 'Quiz Summary',
        subtitle: '',
        image: "assets/images/quiz cong.png",
      ),
    ],
    skills: [
      'Flutter',
      'Dart',
    ],
  ),

  // #7 project
  ProjectModel(
    title: 'Google Pay UI Clone',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink: '',
    images: [
      CarouselModel(
        title: 'Login Page',
        subtitle: '',
        image: "",
      ),
      CarouselModel(
        title: 'Home Page',
        subtitle: '',
        image: "assets/images/gpayhome.png",
      ),
      CarouselModel(
        title: 'Chat Page',
        subtitle: '',
        image: "assets/images/gpay sent.png",
      ),
      CarouselModel(
        title: 'Balance Page',
        subtitle: '',
        image: "assets/images/gpay check balamce.png",
      ),
      CarouselModel(
        title: 'Transaction History Page',
        subtitle: '',
        image: "assets/images/gpay history.png",
      ),
      CarouselModel(
        title: 'Login Page',
        subtitle: '',
        image: "assets/images/gpay login.png",
      ),
      CarouselModel(
        title: 'Account Selection Page',
        subtitle: '',
        image: "assets/images/gpay bottom.png",
      ),
    ],
    skills: [
      'Flutter',
      'Dart',
      'Shared Preferences',
      'Google Fonts',
    ],
  ),

  // #8 project
  ProjectModel(
    title: 'Instagram UI Clone',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink: 'https://github.com/Ajaspj/flutter_instagram_clone.git',
    images: [
      CarouselModel(
        title: 'Home Page',
        subtitle: '',
        image: "assets/images/instagram_home.jpg",
      ),
      CarouselModel(
        title: 'Search Page',
        subtitle: '',
        image: "assets/images/instagram_search.jpg",
      ),
    ],
    skills: [
      'Flutter',
      'Dart',
    ],
  ),
];
