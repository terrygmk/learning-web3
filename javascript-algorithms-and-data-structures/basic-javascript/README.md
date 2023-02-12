
- 转义字符
代码	输出
\'	单引号
\"	双引号
\\	反斜杠
\n	换行符
\t	制表符
\r	回车
\b	退格
\f	换页符

- 变量
    - 应该总是用 let 或 const 声明你的变量
    - 同名时，局部变量将会优先于全局变量

- 字符串
    - str.length
    - 索引 str[i]
    - 获取倒数第 N 个字符 a = str[str.length-n]
    - 不可变。一旦字符串被创建就不能被改变。str = 'abc';str[0] = 'H' //error
    - 使用模板字面量创建字符串
        - 使用反引号（`），而不是引号（' 或者 "）将字符串括起来
        - 代码和输出中的字符串都是多行的。 不需要在字符串中插入 \n
        - ${variable} 语法是一个占位符
            - ${a + b} 占位符内可运算
- 数组
    - 数组的条目是 可变的 并且可以自由更改，即使数组是用 const 声明的
        - const myArray = [18, 64, 99];myArray[0]=45 //ok
        - const myArray = [18, 64, 99];myArray = [45, 64, 99]; //error
    - arr.push(item) 在数组末尾增加元素
    - arr.pop() 函数移除数组末尾的元素并返回这个元素
    - arr.shift() 函数移除数组第1个元素并返回这个元素
    - arr.unshift(item) 在数组头部增加元素
    - arr.reduce() ??
- 对象
    - 删除对象的属性
        - delete ourDog.bark;
    - 是否含有属性
        - obj.hasOwnProperty(propname)
    - Math对象
        - Math.random() 
            - 生成一个在0（包括 0）到 1（不包括 1）之间的随机小数
            - 生成 0 - n （包含）之间的整数，Math.floor(Math.random() * (n+1));
            - 生成 min - max （包含）之间的整数 Math.floor(Math.random() * (max - min + 1) + min)
        - Math.floor(floatVal)
            - 向下取整
    - 确保数据不可变
        - Object.freeze(obj);
    - 使用 class 语法定义构造函数
        - 首字母大写驼峰命名法 UpperCamelCase 是 ES6 class 命名的惯例
        - 默认构造函数是无参数
        - 用 new 创建一个新的对象时，构造函数会被调用
        ```javascript
        class Vegetable {
            constructor(name){
                this.name = name;
            }
        }
        const carrot = new Vegetable('carrot');
        console.log(carrot.name); // 应该显示 'carrot'
        ```
    - 使用 getter 和 setter 来控制对象的访问
        - getter 和 setter 非常重要，因为它们隐藏了内部的实现细节
        - Getter 函数的作用是可以让对象返回一个私有变量，而不需要直接去访问私有变量。
        - Setter 函数的作用是可以基于传进的参数来修改对象中私有变量。
        - 私有变量前添加下划线（_）。 然而，这种做法本身并不是将变量变成私有的。
        ```javascript
        //温度转换例子， F 是华氏温度值，C 是摄氏温度值
        class Thermostat {
            constructor(f){
                this._f = f;
            }
            get temperature() {
                const c = 5/9 * (this._f - 32);
                return c;
            }
            set temperature(c) {
                this._f = c * 9.0 / 5 + 32
            }
        }

        const thermos = new Thermostat(76); // 设置为华氏刻度
        let temp = thermos.temperature; // 24.44 摄氏度
        thermos.temperature = 26;
        temp = thermos.temperature; // 26 摄氏度
        ```
- 函数
    - 当函数没有显示 return时，将返回 undefined
    - parseInt(string, radix) // radix取值  2 到 36 ，基数 可理解为进制，默认为10
        - 字符串转回整形
            - parseInt("0011") // return 11
            - parseInt("s7") // return NaN
            - parseInt("0011",10) // return 11
            - parseInt("0011",2) // return 3
            - parseInt("0011",3) // return 4
            - parseInt("0014",3) // return 0
- 三元运算符
    - a ? b : c, where a 是条件，当条件返回 true 的时候运行代码 b，当条件返回 false 的时候运行代码 c
    - 可多个三元运算符

- 将 rest 操作符与函数参数一起使用
    ```javascript
    function howMany(...args) {
        return "You have passed " + args.length + " arguments.";
    }
    ```
- 使用 spread 运算符展开数组项
    ```javascript
    const arr = [6, 89, 3, 45];
    onst maximus = Math.max(...arr);
    const arr2 = [...arr]
    ```
- 解构赋值
    - 使用解构赋值来获取对象的值
        ```javascript
        const user = { name: 'John Doe', age: 34 };
        const { name, age } = user; // name='John Doe';age=34;
        ```
    - 使用解构赋值从对象中分配变量
        ```javascript
        const user = { name: 'John Doe', age: 34 };
        // 获取 user.name 的值，将它赋给一个新的变量 userName，等等。 userName 的值将是字符串 John Doe，userAge 的值将是数字 34。
        const { name: userName, age: userAge } = user; //userName='John Doe';userAge=34;
        ```
    - 使用解构赋值从嵌套对象中分配变量
        ```javascript
        const user = {
            johnDoe: { 
                age: 34,
                email: 'johnDoe@freeCodeCamp.com'
            }
        };
        // 解构对象的属性值赋值给具有相同名字的变量
        const { johnDoe: { age, email }} = user; // age=34; email= 'johnDoe@freeCodeCamp.com'
        // 将对象的属性值赋值给具有不同名字的变量 
        const { johnDoe: { age: userAge, email: userEmail }} = user; // userAge=34; userEmail= 'johnDoe@freeCodeCamp.com'
        ```
    - 使用解构赋值从数组中分配变量
        ```javascript
        const [a, b,,, c] = [1, 2, 3, 4, 5, 6]; //  a、b 和 c 的值为 1, 2, 5
        ```
    - 通过 rest 参数解构
        -  rest 参数只能对数组列表最后的元素起作用。 这意味着你不能使用 rest 语法来省略原数组最后一个元素、截取中间的元素作为子数组。
         ```javascript
        const [a, b, ...arr] = [1, 2, 3, 4, 5, 7];// a,b,arr 值分别为 1, 2 和 [3, 4, 5, 7]
        ```
    - 使用解构赋值将对象作为函数的参数传递
        ```javascript
        const stats = {
            max: 10,
            median: 5,
            min: 2
        };
        const half = ({max,min}) => (max + min) / 2.0; //解构参数
        const avg = half(stats); // avg=6; 使用解构赋值将对象作为函数的参数传递
        ```
- 使用简单字段编写简洁的对象字面量声明
    ```javascript
    const createPerson = (name, age, gender) => ({
        name, age, gender
    });
    const person = createPerson("Zodiac Hasbro", 56, "male")// person = {name: "Zodiac Hasbro", age: 56, gender: "male"}
    ```
- 用 ES6 编写简洁的函数声明
    ```javascript
    // ES5
    const person = {
        name: "Taylor",
        sayHello: function() {
            return `Hello! My name is ${this.name}.`;
        }
    };
    //ES6
    const person = {
        name: "Taylor",
        sayHello() { // 可以直接去掉  “: function“
            return `Hello! My name is ${this.name}.`;
        }
    };
    ```

- 代码复用 导入与导出
    - 通过 export 导出来 复用 JavaScript 代码
    ```javascript
    const uppercaseString = (string) => {
        return string.toUpperCase();
    }

    const lowercaseString = (string) => {
        return string.toLowerCase()
    }

    export { uppercaseString, lowercaseString };
    ```
    - 通过 import 导入来 复用 JavaScript 代码
    ```javascript
    import { uppercaseString, lowercaseString } from './string_functions.js';

    uppercaseString("hello");
    lowercaseString("WORLD!");
    ```

    - 用 * 从文件中导入所有内容
    ```javascript
    import * as stringFunctions from "./string_functions.js";

    stringFunctions.uppercaseString("hello");
    stringFunctions.lowercaseString("WORLD!");
    ```
    - 用 export default 创建一个默认导出
        - 每个文件或者模块中应当只默认导出一个值
        ```javascript
        export default function subtract(x, y) {
            return x - y;
        }
        // or
        export default function (x, y) {
            return x - y;
        }
        ```
    - 导入一个默认的导出
    ```javascript
    // 被导入的 subtract 值没有被花括号（{}）所包围
    // subtract 只是一个变量的名字，对应 math_functions.js 文件的任何默认导出值。 在导入默认导出时，可以使用任何名字。
    import subtract from "./math_functions.js"; 
    
    subtract(7,4);
    ```
