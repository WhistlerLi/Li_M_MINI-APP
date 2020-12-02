var models = require('../db')
var express = require('express')
var router = express.Router()
var mysql = require('mysql')
var $sql = require('../sqlMap')

var conn = mysql.createConnection(models.mysql)

conn.connect();

setInterval(function () {
  conn.query('SELECT 1');
}, 5000);
var jsonWrite = function (res, ret) {
  if (typeof ret === 'undefined') {
    res.json({
      code: '1',
      msg: 'fail'
    })
  } else {
    res.json(ret)
  }
}
router.get('/getCars', (req, res) => {
  var sql = $sql.cars.list;
  var params = req.body;
  console.log(params);
  conn.query(sql, function (err, result) {
    if (err) {
      console.log(err);
    }
    if (result) {
      console.log(result)
      res.send(result)
    }
  })
});

router.get('/info', (req, res) => {
  var sql = $sql.cars.search;
  var params = req.query;
  console.log(params);
  conn.query(sql, [params.id],function (err, result) {
    if (err) {
      console.log(err);
    }
    if (result) {
      console.log(result)
      res.send(result)
    }
  })
})


module.exports = router
