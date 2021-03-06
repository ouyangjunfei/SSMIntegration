# SSM整合学习记录

实现书籍管理的增删改查

*参考视频* [【狂神说Java】SpringMVC最新教程IDEA版通俗易懂](https://www.bilibili.com/video/BV1aE41167Tu) `P17-P23`

## 资源

[SpringMVC官方文档](https://docs.spring.io/spring-framework/docs/current/reference/html/web.html)

以及B站视频下方**评论区**

[Maven仓库官网](https://mvnrepository.com/)

[BootStrap v3.4.1 国内CDN](https://www.bootcdn.cn/twitter-bootstrap/3.4.1/)

[BootStrap3中文文档](https://v3.bootcss.com/css/)

[jQuery v3.5.1 国内CDN](https://www.bootcdn.cn/jquery/3.5.1/)

## 项目环境

- Java : 1.8 (要求)
- IDEA : Ultimate (建议)
- Maven : Bundled (3.6.3)
- Spring组件 : 5.x.x (建议)
- BootStrap : 3.4.x
- jQuery : 3.5.x
- Tomcat : 9.0.x
- MySQL : 5.7.31 (建议使用5.7.x)

建议先完成Spring整合MyBatis部分，对应[视频](https://www.bilibili.com/video/BV1WE411d7Dv?p=24)

## 注意事项

Tomcat版本与对应的`servlet-api`和`jsp-api`参考[Apache Tomcat Versions](http://tomcat.apache.org/whichversion.html)

这两项依赖的scope都建议设置为`provided`，因为Tomcat自身会提供对应的jar包

个人建议先把后面的Ajax与拦截器都学了再做整合

此项目要求对前端有**一点点**了解，包括HTML、CSS、JavaScript

后期在基本的整合内容上，加入了个人学习的前后端日期字段

具体文档可以查看[前后端日期交互](./前后端日期交互.md)