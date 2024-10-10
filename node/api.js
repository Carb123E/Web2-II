
var app = require("express").Router();
const DBPool = require('./crowdfunding_db.js')

// all fundraisers
app.get('/api/getFundraisersList', (req, res) => {
    let searchSql = 'SELECT * from `FUNDRAISER`'
    DBPool.query(searchSql, [], (results) => {
        let result = results.results
        res.send(result);
    })
});
//fundraisers details by id
app.get('/api/getFundraisersDetails', (req, res) => {
    let param = req.query
    let searchSql = 'SELECT * from `FUNDRAISER` WHERE FUNDRAISER_ID = ?'
    DBPool.query(searchSql, [param.id], (results) => {
        let result = results.results
        res.send(result);
    })
});
//fundraisers details by ACTIVE
app.get("/api/getFundraisersListActive", (req, res) => {
    let param = req.query
    let searchSql = 'SELECT * from `FUNDRAISER` WHERE ACTIVE = ?'
    DBPool.query(searchSql, [param.active], (results) => {
        let result = results.results
        res.send(result);
    })
});
//fundraisers details by Type
app.get("/api/getFundraisersListByType", (req, res) => {
    let param = req.query
    let searchSql = 'SELECT * from `FUNDRAISER` WHERE FUNDRAISER_ID = ? AND CITY = ? AND CATEGORY_ID = ?'
    DBPool.query(searchSql, [param.FUNDRAISER_ID,param.CITY,param.CATEGORY_ID], (results) => {
        let result = results.results
        res.send(result);
    })
});
//fundraisers details by FUNDRAISER_ID
app.get("/api/getFundraisersListByFUNDRAISERID", (req, res) => {
    let param = req.query
    let searchSql = 'SELECT * from `FUNDRAISER` WHERE FUNDRAISER_ID = ?'
    DBPool.query(searchSql, [param.FUNDRAISER_ID], (results) => {
        let result = results.results
        res.send(result);
    })
});
//all categories
app.get("/api/getCategoriesList", (req, res) => {
    let searchSql = 'SELECT * from `CATEGORY`'
    DBPool.query(searchSql, [], (results) => {
        let result = results.results
        res.send(result);
    })
});


module.exports = app;