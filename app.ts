import "reflect-metadata";
import { createConnection } from "typeorm";
import { Part } from "./entities/Part";
import { Project } from "./entities/Project";

createConnection({
    type: "mysql",
    host: "localhost",
    port: 3306,
    username: "root",
    password: process.env.MYSQL_PASSWORD,
    database: "sc-masterlist",
    entities: [
        Project,
        Part
    ],
    synchronize: true,
    logging: true
}).then((connection: any) => {
    // here you can start to work with your entities
}).catch((error: any) => console.log(error));
