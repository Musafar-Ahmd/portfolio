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
    image: 'assets/shumo.png',
    title: 'Shumoo',
    subtitle:
        ''' Shumoo is an advanced ecommerce platform specializing in pharmaceuticals and cosmetics, serving 
customers in the UAE with a wide range of high-quality products in these categories''',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.alshumoo.ecom',
    iosLink: "https://apps.apple.com/ae/app/shumoo/id6480279795",
  ),
  ProjectUtils(
    image: 'assets/hope.png',
    title: 'EnteHope',
    subtitle:
        'Ente Hope is an e-commerce app when users can purchase products and stand a chance to win exciting prices. The app offers a seamless shopping experience with  a variety of products and every purchase gives uses an opportunity to win special rewards',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.draw.entehope',
    iosLink: "https://apps.apple.com/in/app/ente-hope/id6593672835",
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
    image: 'assets/toys.png',
    title: 'Toys App',
    subtitle:
        ''' A mobile application designed for showcasing toy businesses and advertisements in malls. The app serves as a digital platform where toy stores can promote their products, display ads, and attract customers through engaging visuals and interactive content. It provides businesses with the ability to target mall visitors with advertisements, special offers, and featured toy collections, enhancing visibility and driving sales.''',
    androidLink:
        'https://drive.google.com/drive/folders/11mCmKZwncriKb9vDSqI9yF2ijrii1MVO',
  ),
];
