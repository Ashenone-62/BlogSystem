# BlogSystem

## 引言

该项目是我学习express及ejs模板引擎期间搭建的💪。本来是为了把旧博客翻新为express项目。但最终由于一些不可抗力的原因导致部分内容未完善，作为主体的博客的功能已经完全实现了。本项目很基础，目前技术力比较高的地方个人觉得是瀑布流照片和标签过滤文章，在当下的主流前端框架中，这些工作都能被完美胜任。开源出来希望对有个人博客需求以及想学习的朋友有帮助。😘

## 必要技术栈

- Node.js
- Express
- MySQL

## 功能

- 文章阅览
- 根据文章标签过滤文章
- 等宽瀑布流的分享照片

## 安装

- 在目标文件夹内鼠标右键，选择`Git Bash Here`

```GitHub
git clone https://github.com/Ashenone-62/BlogSystem.git
```

- 然后使用`vsCode`在目标文件夹打开并打开终端或者命令行用cd进入目标文件夹，输入`npm install`安装依赖(如果你安装了`cnpm`就用`cnpm`，速度快)

```
npm install
------OR------
cnpm install(前提是你要安装了cnpm)
```

- 然后编辑目录下的`blogSQL.js`,将对应的内容作修改

```javascript
let options = {
    host: "localhost",//你的主机名
    user: "root",//你的sql用户名
    password: "*****",//你的sql密码
    database: "xxx"//你的数据库名
  }
```

- 数据库参数修改好后，接下来导入数据表，在目录下的`sql`文件夹里

- 如果你无法导入，那根据下面表格的内容创建对应的数据表

  - 表 passages

    |      字段       | 字段类型 |                    字段形式                    |
    | :-------------: | :------: | :--------------------------------------------: |
    | pid(主键，自增) |   int    |                       1                        |
    |      title      | varchar  |                     测试1                      |
    |      tags       |   json   |                     [1, 2]                     |
    |     follow      | varchar  | 本书记录了张三传奇的一生阿巴阿巴阿巴阿巴阿巴阿 |
    |     content     | longtext |           **（md文档原码）！！！！**           |
    |       img       | varchar  |               /images/cover.jpg                |
    |      date       | varchar  |                   2020-06-25                   |

    

  - 表 sharepics

    |      字段       | 字段类型 |     字段形式      |
    | :-------------: | :------: | :---------------: |
    | sid(主键，自增) |   int    |         1         |
    |      title      | varchar  |       无题        |
    |      date       | varchar  |    2020-04-20     |
    |     picUrl      | varchar  | /images/pic/1.jpg |
    |      size       | varchar  |     4288*2848     |

  - 表 tags

    |      字段       | 字段类型 | 字段形式 |
    | :-------------: | :------: | :------: |
    | tid(主键，自增) |   int    |    1     |
    |       tag       | varchar  |  面试题  |

- 数据库配置完成后，就可以启动预览了，在终端或者命令行执行`npm start`

```
npm start
------OR------
nodemon ./bin/www(前提是你要安装了nodemon)
```

## 使用

- 新增，修改，删除文章
  - 在passages表中新增，修改，删除相应的记录
- 新增，修改，删除标签
  - 在tags表中新增，修改，删除相应的记录
- 修改关于我的内容
  - 在目录下的views文件夹下找到aboutMe.ejs，修改相应的内容
- 新增，修改，删除照片
  - 在sharepics表中新增，修改，删除相应的记录

## LICENSE

[Apache 2.0](https://github.com/Ashenone-62/BlogSystem/blob/master/LICENSE)