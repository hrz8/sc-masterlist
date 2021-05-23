import { Entity, Column, OneToMany, PrimaryColumn } from "typeorm";
import { Part } from "./Part";

@Entity()
export class Project {

    @PrimaryColumn()
    name!: string;

    @Column("text", { nullable: true })
    description?: string;

    @OneToMany(() => Part, part => part.project)
    parts?: Part[];
}
