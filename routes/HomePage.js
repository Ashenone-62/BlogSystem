let express = require('express');
let router = express.Router();
let sqlQuery = require('../blogSQL.js')

router.get('/', async function (req, res, next) {
  let strSqlPassageItem = "select pid,img,title,date,follow,tags from passages"
  let strSqlTagsLength = "select tid from tags";

  let resultsPassageItems = await sqlQuery(strSqlPassageItem);
  let resultsTagsLength = await sqlQuery(strSqlTagsLength);

  for(let i in resultsPassageItems){
    let toArr = JSON.parse(resultsPassageItems[i].tags)
    let resArr = []

    for(let j in toArr){
      let strSqlTag = "select tag from tags where tid = ?"
      let resultsTag = await sqlQuery(strSqlTag,toArr[j]) 
      resArr.push(resultsTag[0])
      resultsPassageItems[i].tags = [...resArr]
    }
  }

  res.render('HomePage', {
    adminName: 'xx',
    resultsPassageItems,
    resultsTagsLength
  });
});

module.exports = router;