var http=require('http');
var fs=require('fs');
var mysql=require('mysql');
var db=mysql.createConnection({
	host:'localhost',
	user: 'root',
	password: '123456',
	database:'datura'
});	
var httpObj=http.createServer(function(req,res){
	console.log('谁访问过哪：'+req.url);//日志文件
	if(req.url.indexOf('getnews')!=-1){
		//从数据库拿数据
		console.log('进来了！');
		db.query('select * from news',function(err,data){
			if(!err){
				res.write(JSON.stringify(data));
				res.end();
			}
		});
	}else{
		fs.readFile('www'+req.url,function(err,data){
			//console.log('www'+req.url);
			if(!err){
				res.write(data);
				res.end();
			}else{
				res.write('404');
				res.end();
			}
		});
	}
});
httpObj.listen(8088);
