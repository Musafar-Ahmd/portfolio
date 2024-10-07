class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/shumoo.png',
    title: 'Shumoo',
    subtitle:
        ''' Shumoo is an advanced ecommerce platform specializing in pharmaceuticals and cosmetics, serving 
customers in the UAE with a wide range of high-quality products in these categories''',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.alshumoo.ecom',
    iosLink:
        "https://apps.apple.com/kr/app/%EC%98%81%EC%96%B4%EB%A8%B8%EB%A6%AC-%EA%B3%B5%EC%9E%91%EC%86%8C/id1507102714",
  ),
  ProjectUtils(
    image: 'assets/inpos.png',
    title: 'inPos',
    subtitle:
        '''Inpos is a comprehensive retail management system designed to help businesses manage their daily 
operations efficiently. This app offers a range of features to streamline inventory management, sales 
tracking, customer management, and reporting, making it an ideal solution for retailers, wholesalers, and 
distributors across various industries, including fashion, electronics, grocery, and more.''',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.innerix.inpos',
  ),
  ProjectUtils(
    image: 'assets/wise-learning.png',
    title: 'Wise Learning',
    subtitle:
        '''Experienced in regularly updating project dependencies to the latest versions to ensure compatibility with 
    the Flutter framework updates and to leverage new features and bug fixes introduced by the library maintainers.''',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.innerix.wiselearning',
  ),
  ProjectUtils(
    image: 'assets/inpos.png',
    title: 'Lak Amana',
    subtitle:
        '''Inpos is a comprehensive retail management system designed to help businesses manage their daily 
operations efficiently. This app offers a range of features to streamline inventory management, sales 
tracking, customer management, and reporting, making it an ideal solution for retailers, wholesalers, and 
distributors across various industries, including fashion, electronics, grocery, and more.''',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.innerix.inpos',
  ),
  ProjectUtils(
    image: 'assets/inpos.png',
    title: 'VM Store',
    subtitle:
        '''VM Store is an e-commerce platform designed to provide users with a seamless online shopping experience. 
This app offers a wide range of products across various categories, allowing users to browse and purchase 
products online, track orders, and manage their account information securely. By leveraging the VM Store 
app, users can enjoy a convenient and seamless online shopping experience, access a wide range of products, 
track orders, and manage account information securely.''',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.innerix.vmstore&hl=en-IN',
  ),
  ProjectUtils(
    image: 'assets/inpos.png',
    title: 'Toys App',
    subtitle:
        '''Inpos is a comprehensive retail management system designed to help businesses manage their daily 
operations efficiently. This app offers a range of features to streamline inventory management, sales 
tracking, customer management, and reporting, making it an ideal solution for retailers, wholesalers, and 
distributors across various industries, including fashion, electronics, grocery, and more.''',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.innerix.inpos',
  ),
  ProjectUtils(
    image: 'assets/inpos.png',
    title: 'Hifz',
    subtitle:
        '''Inpos is a comprehensive retail management system designed to help businesses manage their daily 
operations efficiently. This app offers a range of features to streamline inventory management, sales 
tracking, customer management, and reporting, making it an ideal solution for retailers, wholesalers, and 
distributors across various industries, including fashion, electronics, grocery, and more.''',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.innerix.inpos',
  ),
];
