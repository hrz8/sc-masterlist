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
    migrations: [`${__dirname}/migrations/*.js`],
    synchronize: true,
    migrationsRun: true,
    logging: true
}).then((connection: any) => {
    process.exit(0)
}).catch((error: any) => console.log(error));
