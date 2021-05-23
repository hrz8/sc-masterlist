import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from "typeorm";
import { Part } from "./Part";

@Entity()
export class MouldMaker {

    @PrimaryGeneratedColumn()
    id!: number;

    @Column()
    name!: string;

    @OneToMany(() => Part, part => part.mouldMaker)
    parts?: Part[];

    @Column("text",  { nullable: true })
    description?: string;
}
