const e = require('express');
var mysql = require('mysql')

let options = {
    host: "localhost",//你的主机名
    user: "root",//你的sql用户名
    password: "*****",//你的sql密码
    database: "xxx"//你的数据库名
  }

let con = mysql.createConnection(options);

con.connect((err) => {
    if(err){
        console.log(err);
    }else{
        console.log("连接成功");
    }
})

function sqlQuery(strSql,arr){
    return new Promise(function(resolve,reject){
        con.query(strSql,arr,(err,result)=>{
            if(err){
                reject(err)
            }else{
                resolve(result)
            }
        })
    })
}

module.exports = sqlQuery;