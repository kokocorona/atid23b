const indexR = require("./index");
const usersR = require("./users");
const categoriesR = require("./categories");
const sectionsR = require("./sections");
const vipsR = require("./vips");
// const autosR = require("./autos");


exports.routesInit = (app) => {
  app.use("/",indexR);
  app.use("/users",usersR);
  app.use("/categories",categoriesR);
  app.use("/sections",sectionsR);
  app.use("/vips",vipsR);
  // app.use("/autos",autosR);

}