##### 1)   map2text为项目数据库

##### 2)   地图文本描述(页面)为实习任务，地图文本描述管理系统是卷了一卷。（分成两个主要是文本描述管理系统环境配置较麻烦）。



![](https://www.hualigs.cn/image/60f6ee78efe09.jpg)

##### 3)   地图文本描述(页面) ：

![](https://www.hualigs.cn/image/60f6eef9f211b.jpg)

地图文本描述(页面)环境配置：

​    编译器：

​		idea（需配置php环境）

​    服务器：

​		Apache

​    数据库配置：

​		Getdata和Savedata文件中9-13行代码为数据库链接代码，需将其修改为配置后的数据库路径。

![](https://www.hualigs.cn/image/60f6ef4d71131.jpg)

​    文件功能描述：index为地图页面，Savedata.php用于数据存储，Getdata.php用于数据获取

​    实现功能：

​			1.获取地图中心点和随机中心点（由index.html文件中getMapCenter()和setNewCenter()函数实现）

​			2.添加对地图的自然语言描述（由index.html文件中savaData()函数实现）

​			3.实现网页端数据调取查阅功能（由index.html文件中savaData()函数实现）

​			4.利用数据库系统进行数据存储管理（由index.html文件中getJSON()函数实现）

​			5.实现文本评价预筛选机制（由index.html文件中savaData()函数实现）

##### 4)   地图文本描述管理系统

![](https://www.hualigs.cn/image/60f6efeb0b390.jpg)

地图文本描述管理系统环境配置：

​    编译器：

​		idea（需配置maven）

​    数据库配置：

​		在x-admin\src\main\resources中的application.yml文件中修改username和password，将test改为数		据库名称。

![](https://www.hualigs.cn/image/60f6f02702881.jpg)

项目启动后请访问：http://localhost:9999/page/end/login.html，

登录账号: admin

登陆密码: admin

系统主要实现功能：

​		1.地图文本描述及其所有功能

​    	2.用户管理及权限管理

​    	3.地点信息可视化管理

​    	4.描述信息可视化管理

![](https://www.hualigs.cn/image/60f6f088b103e.jpg)