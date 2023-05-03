const mongoose = require('mongoose');
const { config } = require('../config/secrets');

main().catch(err => console.log(err));

async function main() {
  // כדי למנוע הצגת אזהרה
  mongoose.set('strictQuery', false);
  // וזה לווינדוס 11
  // await mongoose.connect('mongodb://127.0.0.1:27017/atid22');
  await mongoose.connect(`mongodb+srv://${config.db_user}:${config.db_pass}@cluster0.jqikq.mongodb.net/atid23`);
  // await mongoose.connect(`mongodb+srv://koko93213:MONKEYS3213212@clu321ster0.jqikq.mongodb.net/atid22`);
  console.log("mongo connect atid23 atlas");
  
  // use `await mongoose.connect('mongodb://user:password@localhost:27017/test');` if your database has auth enabled
}