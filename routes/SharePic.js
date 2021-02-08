var express = require('express');
var router = express.Router();
let sqlQuery = require('../blogSQL.js')

/* GET home page. */

router.post('/',async function(req, res, next) {
  let imgData = {
      start: 0,
      count: 20
  }

  imgData.start = parseInt(req.body.currentImg);
  console.log(req.body.currentImg)
  let strSqlPic = "select * from sharepics limit ?,?";
  let resultsPic = await sqlQuery(strSqlPic,[imgData.start,imgData.count]);
  
  res.send(resultsPic);
});


router.get('/',async function(req, res, next) {
  let imgData = {
    start: 0,
    count: 20
  }

  let strSqlPic = "select * from sharepics limit ?,?";
  let resultsPic = await sqlQuery(strSqlPic,[imgData.start,imgData.count]);
  
  let option = {
    resultsPic
  }

  res.render('SharePic', option);
});

module.exports = router;