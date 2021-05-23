import "reflect-metadata";
import { createConnection } from "typeorm";

createConnection({
    type: "mysql",
    host: "localhost",
    port: 3306,
    username: "root",
    password: process.env.MYSQL_PASSWORD,
    database: "sc-masterlist",
    entities: [`${__dirname}/entities/*.js`],
    synchronize: true,
    logging: true
}).then((connection: any) => {
    // here you can start to work with your entities
}).catch((error: any) => console.log(error));
