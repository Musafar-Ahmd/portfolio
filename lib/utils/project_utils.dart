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
    image: 'assets/lak-amana.jpg',
    title: 'Lak Amana',
    subtitle:
        '''Lakamana is an e-commerce platform designed to provide a unique shopping experience for the 
Lakshadweep community. The app offers a wide range of products manufactured specifically for the 
Lakshadweep people, including traditional clothing, handicrafts, and local specialties.''',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.innerix.lakamana&hl=en-IN',
  ),
  ProjectUtils(
    image: 'assets/vm-store.jpg',
    title: 'VM Store',
    subtitle:
        '''VM Store is an e-commerce platform designed to provide users with a seamless online shopping experience. 
This app offers a wide range of products across various categories, allowing users to browse and purchase 
products online, track orders, and manage their account information securely. By leveraging the VM Store 
app, users can enjoy a convenient and seamless online shopping experience.''',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.innerix.vmstore&hl=en-IN',
  ),
  ProjectUtils(
    image: 'assets/ui.jpg',
    title: 'Toys App',
    subtitle:
        ''' A mobile application designed for showcasing toy businesses and advertisements in malls. The app serves as a digital platform where toy stores can promote their products, display ads, and attract customers through engaging visuals and interactive content. It provides businesses with the ability to target mall visitors with advertisements, special offers, and featured toy collections, enhancing visibility and driving sales.''',
    androidLink: '',
  ),
  ProjectUtils(
    image: 'assets/ui.jpg',
    title: ' HR app',
    subtitle:
        '''I A comprehensive Human Resources mobile application aimed at streamlining employee and HR operations. The app enables employees to submit leave requests, request official documents like salary and experience certificates, and access payroll information such as payslips and payment history. Additionally, it supports work task management and tracking for efficient workflow.''',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.innerix.inpos',
  ),
];
