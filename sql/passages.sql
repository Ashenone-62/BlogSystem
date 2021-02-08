/*
 Navicat Premium Data Transfer

 Source Server         : BLOG
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 08/02/2021 11:56:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for passages
-- ----------------------------
DROP TABLE IF EXISTS `passages`;
CREATE TABLE `passages`  (
  `pid` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tags` json NOT NULL,
  `follow` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of passages
-- ----------------------------
INSERT INTO `passages` VALUES (1, '测试1', '[1, 2]', '本书记录了张三传奇的一生阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴', '# ES6拓展\r\n\r\n## 对象的拓展\r\n\r\n1.Object.create——指定对象为原型(OriginObject)，创建新的对象。第二个参数可以放新增的属性\r\n\r\n```javascript\r\nObject.create(OriginObject,{newOption1,newOption2,newOption3,.....})\r\n\r\n//newOption格式\r\n//name属性名\r\nname:{\r\n    value: value,//属性值\r\n    writable: false,//当前属性值是否可写(修改),默认为F\r\n    configurable: false,//当前属性是否可被删除,默认为F\r\n    enumerable: false,//当前属性是否可被枚举(for ... in ...),默认为F\r\n}\r\n```\r\n\r\n2.Object.defineProperty(优先级比前者高)\r\n\r\n```javascript\r\nObject.defineProperty(OriginObject,newOption,{\r\n	value: value,//属性值\r\n    writable: false,//当前属性值是否可写(修改),默认为F\r\n    configurable: false,//当前属性是否可被删除,默认为F\r\n    enumerable: false,//当前属性是否可被枚举(for ... in ...),默认为F\r\n    })\r\n```\r\n\r\n3.Object.defineProperties——定义或修改内部属性\r\n\r\n```js\r\nObject.defineProperties(OriginObject,{\r\n	name:{\r\n        get: fuction(){},//获取属性值的函数\r\n    	set: fuction(){}//设置属性值的函数	\r\n    }\r\n    })\r\n```\r\n\r\n例子\r\n\r\n```javascript\r\nvar user = {\r\n    firstname: \"张\",//姓\r\n    lastname: \"三\",//名\r\n}\r\n\r\nObject.defineProperties(user,{\r\n	fullname:{\r\n        get: fuction(){\r\n        	return this.firstname + \"-\" + this.lastname //拼接原型user对象的firstname，lastname然后把值返回给user对象的fullname\r\n    	},\r\n    	set: fuction(option){ \r\n            var arr = option.split(\"-\")//从\"-\"分割传入参数(此处为某-某某的名字)\r\n            if(arr.length == 2){//判断一下名字是否合规\r\n                //合规赋值\r\n               this.firstname = arr[0];\r\n               this.lastname = arr[1];\r\n            }else{\r\n                //不符合报错\r\n                console.log(\"输入名字有误\")\r\n            }\r\n    	}\r\n })\r\n```\r\n\r\n4.Other——Obj自带方法获取当前值和监听变化设置\r\n\r\n```javascript\r\n//获取当前值\r\nget name(){\r\n    .....\r\n}\r\n//监听变化设置\r\nset name(){\r\n    .....\r\n}\r\n```\r\n\r\n例子\r\n\r\n```javascript\r\nvar user = {\r\n    firstname: \"张\",//姓\r\n    lastname: \"三\",//名\r\n    get fullname(){\r\n        return this.firstname + \"-\" +this.lastname//拼接当前user对象的firstname，lastname然后把值返回给fullname\r\n    }\r\n	set fulltime(option){\r\n        var arr = option.split(\"-\")//从\"-\"分割传入参数(此处为某-某某的名字)\r\n        if(arr.length == 2){//判断一下名字是否合规\r\n            //合规赋值\r\n           this.firstname = arr[0];\r\n           this.lastname = arr[1];\r\n           }else{\r\n            //不符合报错\r\n            console.log(\"输入名字有误\")\r\n        }\r\n    }	\r\n\r\n}\r\n```\r\n\r\n## 数组的拓展\r\n\r\n1.获取value在数组中的第一个下标\r\n\r\n```javascript\r\nArray.prototype.indexOf(value)\r\n```\r\n\r\n2.获取value在数组中的最后一个下标\r\n\r\n```javascript\r\nArray.prototype.lastIndexOf(value)\r\n```\r\n\r\n3.遍历数组\r\n\r\n```javascript\r\nArray.prototype.forEach(fuction(item,index){})\r\n```\r\n\r\n4.遍历原始数组，返回加工过后的新数组\r\n\r\n```javascript\r\nArray.prototype.map(fuction(item,index){})\r\n```\r\n\r\n5.遍历过滤一个新的子数组，返回条件为True的值\r\n\r\n```javascript\r\nArray.prototype.filter(fuction(item,index){})\r\n```\r\n\r\n## 函数拓展\r\n\r\n将函数内的this指向obj，并将函数返回\r\n\r\n```javascript\r\nFuction.prototype.bind(obj)\r\n```\r\n\r\n## JSON对象与JS对象的转换\r\n\r\n1.JS对象(数组)--->JSON对象(数组)\r\n\r\n```javascript\r\nJSON.stringify(Obj/Arr)\r\n```\r\n\r\n2.JSON对象(数组)--->JS对象(数组)json\r\n\r\n```javascript\r\nJSON.parse(Json)\r\n```\r\n\r\n', '/images/cover.jpg', '2020-06-25');
INSERT INTO `passages` VALUES (2, '测试2', '[1, 3, 8]', '书上记录了李四反杀张三的故事', '按时打卡四年冬季拉萨你的NSA老大', '/images/cover.jpg', '2021-01-02');
INSERT INTO `passages` VALUES (3, '测试3', '[2, 3, 4]', '书上记录了李四反杀张三的故事', '李四反杀张三', '/images/cover.jpg', '2019-06-21');
INSERT INTO `passages` VALUES (4, '测试4', '[1, 6]', '6', '7', '/images/cover.jpg', '5');
INSERT INTO `passages` VALUES (5, '测试5', '[2]', 'aa', 'ada', '/images/cover.jpg', 'dsasda');

SET FOREIGN_KEY_CHECKS = 1;
