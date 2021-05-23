import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from "typeorm";
import { Part } from "./Part";

@Entity()
export class ActualWeight {

    @PrimaryGeneratedColumn()
    id!: number;

    @Column()
    part!: number;

    @Column()
    run!: number;

    @OneToMany(() => Part, part => part.actualWeight)
    parts?: Part[];
}