class Post {
  const Post({
    this.title,
    this.author,
    this.description,
    this.imageUrl
  });

  final String title;
  final String author;
  final String description;
  final String imageUrl;
  
}

final List<Post> posts = [
  Post(
    title: 'Vue 商城项目开发实战',
    author: '我是十三',
    description: '企业级大型电商系统，前后端分离商城实践，向全栈进发！',
    imageUrl: 'https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/a6b660acfa094609b378afd783a04523~tplv-k3u1fbpfcp-zoom-1.image'
  ),
  Post(
    title: '漫画 Go 语言 纯手绘版',
    author: 'haojiahuo',
    description: '一个简单又好玩的学习方法，最快理解学习Go语言，用最直接的方式带你看懂Go语言。',
    imageUrl: 'https://user-gold-cdn.xitu.io/2020/5/30/172614feb424d2b3?imageView2/1/w/200/h/280/q/95/format/webp/interlace/1'
  ),
  Post(
    title: 'MySQL 是怎样运行的：从根儿上理解 MySQL',
    author: '小孩子4919',
    description: '授人以鱼不如授人以渔，从根儿上理解 MySQL，让 MySQL 不再是一个黑盒。',
    imageUrl: 'https://user-gold-cdn.xitu.io/2020/6/20/172d144898de3145?imageView2/1/w/200/h/280/q/95/format/webp/interlace/1'
  ),
  Post(
    title: 'MySQL 是怎样使用的：从零蛋开始学习 MySQL',
    author: '小孩子4919',
    description: '来来来，你什么都不用会，真正的从零蛋开始系统又轻松地学习MySQL。',
    imageUrl: 'https://user-gold-cdn.xitu.io/2019/9/25/16d67c7db5fc6421?imageView2/1/w/200/h/280/q/95/format/webp/interlace/1'
  ),
  Post(
    title: 'Swift 数字详解',
    author: '飞行学校',
    description: '从理论到应用，全面介绍 Swift 4 中面向协议的数字系统',
    imageUrl: 'https://user-gold-cdn.xitu.io/2018/9/26/166169bb03a76f8b?imageView2/1/w/200/h/280/q/95/format/webp/interlace/1'
  ),
  Post(
    title: '深入理解 TCP 协议：从原理到实战',
    author: '挖坑的张师傅',
    description: '用实验和图解的方式带你深入理解 TCP 协议，让 TCP 协议不再是拦路虎',
    imageUrl: 'https://user-gold-cdn.xitu.io/2020/6/20/172d1488323e5a18?w=1950&h=2730&f=png&s=309944'
  ),
  Post(
    title: '开发者必备的 Docker 实践指南',
    author: '有明',
    description: '带你快速掌握 Docker 这项新时代开发者必备的工具',
    imageUrl: 'https://user-gold-cdn.xitu.io/2018/11/13/1670b3a58a44689a?w=1300&h=1820&f=png&s=95912'
  ),
  Post(
    title: 'JavaScript 设计模式核⼼原理与应⽤实践',
    author: '修言',
    description: '通俗易懂的编程“套路“学。带你深入看似高深实则接地气的设计模式原理，在实际场景中内化设计模式的”道“与”术“。学会驾驭代码，而非被其奴役。',
    imageUrl: 'https://user-gold-cdn.xitu.io/2019/9/16/16d382e623923d91?w=1950&h=2730&f=png&s=1003161'
  ),
  Post(
    title: 'SpringCloudNetflix 源码解读与原理分析',
    author: 'LinkedBear',
    description: '继SpringBoot原理分析之后的又一力作，从熟悉的场景逐步深入源码底层，理解SpringCloudNetflix中组件的设计和原理。',
    imageUrl: 'https://user-gold-cdn.xitu.io/2020/6/1/1726dbe3e46ccdab?w=1950&h=2730&f=png&s=339133'
  ),
  Post(
    title: '前端性能优化原理与实践',
    author: '修言',
    description: '毫秒必争！深入理解前端性能原理，将晦涩的知识转化为可爱的生产力，建立你自己的优化技能索引目录',
    imageUrl: 'https://user-gold-cdn.xitu.io/2018/10/23/166a0387b91066b9?w=650&h=910&f=png&s=250749'
  ),
  Post(
    title: '深入理解NLP的中文分词：从原理到实践',
    author: '周兴博',
    description: '在中文的语言环境里，中文分词是NLP基础中的基础，核心中的核心，直接影响着各种NLP任务最后的结果质量。',
    imageUrl: 'https://user-gold-cdn.xitu.io/2019/11/8/16e4a65bafa2c3e5?w=1950&h=2730&f=png&s=505691'
  ),
  Post(
    title: 'Mastering Gradle',
    author: 'walfud',
    description: '这是一本能拉开你与别人 Gradle 差距的书。\n从工程实践角度出发, 一方面讲述 Gradle 的核心用法, 另一方面讲述其背后的原理. 相信看完我们精心准备的系列文章, 读者再也不用死记硬背 \"Build Script 到底有哪些配置?\", 也不会为 \"Gradle 到底是怎么执行的?\" 这些问题而苦恼, 而是有种 \"拨云见日, 原来如此, 不过如此\" 的顿悟感. ',
    imageUrl: 'https://user-gold-cdn.xitu.io/2020/6/26/172f0a69771328b9?w=1950&h=2730&f=png&s=1115920'
  ),
  Post(
    title: '前端算法与数据结构面试：底层逻辑解读与大厂真题训练',
    author: '修言',
    description: '简明易懂的前端算法面试教学，接地气&说人话&大量图解，带你从编码基本功到手撕大厂真题、构建坚不可摧的算法能力体系',
    imageUrl: 'https://user-gold-cdn.xitu.io/2020/6/20/172d14d866d42a2a?w=1950&h=2730&f=png&s=334576'
  ),
  Post(
    title: 'Python数据分析实战：构建股票量化交易系统',
    author: '元宵大师',
    description: '以股票数据为分析标的，以搭建量化交易策略为学习场景，由基础工具的使用逐步进阶到策略的设计，由浅入深、由技术到思维地为读者讲解Python金融数据分析和挖掘技术在股票量化交易中的应用。',
    imageUrl: 'https://user-gold-cdn.xitu.io/2019/5/29/16b02e61373e1829?w=1300&h=1820&f=png&s=1963592'
  ),
  Post(
    title: 'SVG 动画开发实战手册',
    author: '聆木听风',
    description: '从0到1，学习SVG动画开发知识，快速高效完成SVG动画效果开发。',
    imageUrl: 'https://user-gold-cdn.xitu.io/2019/9/26/16d6bda264ac27e4?w=1950&h=2730&f=png&s=332720'
  ),
    Post(
    title: 'Taro 多端开发实现原理与项目实战',
    author: '凹凸实验室',
    description: '剖析 Taro 多端开发框架的实现原理，并通过电商核心的项目实战，帮助开发者快速上手多端项目。',
    imageUrl: 'https://user-gold-cdn.xitu.io/2018/11/12/16706202cc6428df?w=1300&h=1820&f=png&s=123146'
  )  
];
