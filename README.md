# dartboot_annotation

当前已支持的注解:

| 注解名 | 参数 | 描述 | 
| :---- | :---- | :---- |
| @BootContext | -- | 上下文注解，用在应用启动类上，仅用于`dartboot_core`库，请勿直接使用该注解！！|
| @Bean | -- | 自动注入类注解，用在普通`class`上，`dartboot_core`会扫描包含该注解的类，并且会在扫描成功后立即执行无参构造函数 |
| | `name` | 类的别名，用于其他自动注入类的依赖 |
| | `dependencies` | 类依赖，参数值为其他注入类的别名，该参数会影响类的初始化顺序，被依赖的类会先构造 |
| | `conditionOnProperty` | 自动注入条件，当包含该参数值的应用属性（不会对属性值做判断）时，才会初始化当前类 |
| @Api | -- | 接口描述的注解，可以用在接口`class`/函数上，仅用于描述接口信息 |
| | `description` | 接口描述内容 |
| @RestController | -- | REST接口控制器的注解，用于普通`class`上，和`@Bean`注解类似，`dartboot_core`会扫描包含该注解的类，会在扫描成功后立即执行无参构造函数，另外会将该类保存到HTTP服务的路由列表中 |
| | `basePath` | 定义REST接口的路由前缀，例如`basePath=/api`且接口的路由为`/config`，则访问路径为`/api/config` |
| @Request | -- | HTTP请求注解，必须在`@RestController`注解类中使用，用在对外的HTTP接口函数上 |
| | `path` | 接口路由地址，例如`/config` |
| | `method` | 请求方式，仅支持：`GET`、`POST`、`DELETE` |
| | `responseType` | 响应体的序列化类型，仅支持：`html`、`json`、`text` |
| @Get | -- | GET请求注解，为`@Request`注解的子注解 |
| | `path` | 接口路由地址，例如`/config` |
| | `responseType` | 响应体的序列化类型，仅支持：`html`、`json`、`text` |
| @Post | -- | POST请求注解，为`@Request`注解的子注解 |
| | `path` | 接口路由地址，例如`/config` |
| | `responseType` | 响应体的序列化类型，仅支持：`html`、`json`、`text` |
| @Delete | -- | DELETE请求注解，为`@Request`注解的子注解 |
| | `path` | 接口路由地址，例如`/config` |
| | `responseType` | 响应体的序列化类型，仅支持：`html`、`json`、`text` |
| @Path | -- | HTTP请求路由参数注解，一般用在含有`@Request`注解的函数中的参数上，用于获取路由参数信息 |
| | `name` | 参数名称，例如`/config/{p}`中`p`为参数名 |
| @Query | -- | HTTP请求查询参数注解，一般用在含有`@Request`注解的函数中的参数上，用于获取查询参数信息 |
| | `name` | 参数名称，例如`/config?p=1`中`p`为参数名 |
| | `required` | 是否毕传 |
| | `defaultValue` | 默认参数值，如果路由参数中没有该参数值，则返回该默认值 |
| @Body | -- | POST请求或DELETE请求时，用于标注`body`请求体的注解，一般用在含有`@Request`注解的函数中的参数上 |
| @Header | -- | HTTP请求的请求头注解，一般用在含有`@Request`注解的函数中的参数上，用于获取请求头中的参数值，统一返回字符串 |
| | `name` | 参数名称，例如请求头为`Authorization=123`,`Authorization`即为参数名 |
| @Table | -- | 表注解，用于标志`class`为一个表模型。一般在对接数据库时会使用。 |
| | `tableName` | 表名称 |
| | `partitionBy` | 分区表达式，该参数目前仅用于`clickhouse`的表定义，参数值传分区表达式即可 |
| @Column | -- | 表格的列注解 |
| | `name` | 在表格上的列的名称，用于对应`class`的属性名 |
| | `id` | 是否为表格的主键 |
| | `nullable` | 是否该值允许为空 |
| | `defaultValue` | 默认值 |
| | `indexed` | 是否建立索引 |