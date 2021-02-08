let express = require('express');
let router = express.Router();
let marked = require("marked");
let sqlQuery = require('../blogSQL.js')


/* GET home page. */
router.get('/',async function(req, res, next){
  let strSqlPassageInfo = "select pid,img,title,date,follow,tags from passages";
  let resultsPassageInfos = await sqlQuery(strSqlPassageInfo);

  for(let i in resultsPassageInfos){
    let toArr = JSON.parse(resultsPassageInfos[i].tags)
    let resArr = []

    for(let j in toArr){
      let strSqlTag = "select tag from tags where tid = ?"
      let resultsTag = await sqlQuery(strSqlTag,toArr[j]) 
      resArr.push(resultsTag[0])
      resultsPassageInfos[i].tags = [...resArr]
    }
  }

  let strSqlTags = "select tag from tags";
  let resultsTags = await sqlQuery(strSqlTags);
  
  let option = {
    resultsTags,
    resultsPassageInfos
  }

  res.render('Catagories',option);
})

router.get('/:pid',async function(req, res, next) {
  let strSql = "select * from passages where pid = ? "
  let pid = req.params.pid;
  let results = await sqlQuery(strSql,[pid])

  results = results[0]
  results.content = marked(results.content);
  
  let urlOptions = req.url.slice(1);
  urlOptions = decodeURI(urlOptions);
  urlOptions = urlOptions.split("&");
  let tags = [];

  urlOptions.forEach((element) => {
    if(element.length != 0){
      let arr = element.split("=");
      let tag = arr[1];
      tags.push(tag)
    }
  });

  let option = {
    results,
    tags
  }
  
  res.render('Passage', option);
});

module.exports = router;
