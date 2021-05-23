import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from "typeorm";
import { Part } from "./Part";

@Entity()
export class MouldTon {

    @PrimaryGeneratedColumn()
    id!: number;

    @Column()
    value!: string;

    @OneToMany(() => Part, part => part.mouldTon)
    parts?: Part[];

    @Column("text",  { nullable: true })
    description?: string;
}
