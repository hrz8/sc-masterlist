import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from "typeorm";
import { Part } from "./Part";

@Entity()
export class Project {

    @PrimaryGeneratedColumn()
    id!: number;

    @Column()
    name!: string;

    @Column("text", { nullable: true })
    description?: string;

    @OneToMany(() => Part, part => part.project)
    parts?: Part[];
}
