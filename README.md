## Node.js + express + ejs + mysql 服务器渲染

npm install -g express

如果是express 4.0之前版本，那么执行“express -V”就可以得到版本号了，可express 4.0之后还需要再安装express-generator包，如果没有安装还执行“express -V”命令会报错。
npm install -g express-generator


express -e smart-express-ejs

cd smart-express-ejs

npm install




运行
DEBUG=smart-express-ejs ./bin/www  (运行 node ./bin/www  或者 npm start  没反应)

修改自动刷新
supervisor ./bin/www

支持es6语法
node --harmony app.js