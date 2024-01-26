var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  const now = new Date();
  console.info(`Request received at ${now}`);
  return res.json({ message: 'Welcome to the API' });
});

module.exports = router;