var mysql = require('mysql');
var inquirer = require('inquirer');
var connection = mysql.createConnection({
    host: 'localhost',
    port: 8889,
    user: 'root',
    password: 'Insecure',
    database: 'bamazon_db'
});

inquirer
    .prompt([{
            type: "input",
            message: "What ID product would you like to buy?",
            name: "id"
        },
        {
            type: "input",
            message: "How many would you like?",
            name: "quantity"
        },
    ])
    .then(function(inquirerResponse) {
      connection.connect(function(err){
if (err) {
  return console.log(err);
}

connection.query("SELECT * FROM item_id", function(err, res){
  if (err){
    return console.log(err);
  }
  // console.log(res);

});

writeTable();

});

function writeTable(){
var create = "INSERT INTO products (name, quantity) VALUES ?";
var values = [
  [res.name, res.quantity]

];
connection.query(create, [values] ,function (err, result) {
  if (err) throw err;
  console.log("Number of records inserted: " + result.affectedRows);
  });
}
})
