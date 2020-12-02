var sqlMap = {
  cars: {
    list: 'select * from cars',
    search: 'select * from cars where id=?'
  }
}
module.exports = sqlMap;
