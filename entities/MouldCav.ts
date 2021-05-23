import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from "typeorm";
import { Part } from "./Part";

@Entity()
export class MouldCav {

    @PrimaryGeneratedColumn()
    id!: number;

    @Column()
    value!: string;

    @OneToMany(() => Part, part => part.mouldCav)
    parts?: Part[];

    @Column("text",  { nullable: true })
    description?: string;
}
