import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from "typeorm";
import { Part } from "./Part";

@Entity()
export class GrainType {

    @PrimaryGeneratedColumn()
    code!: string;

    @OneToMany(() => Part, part => part.grainType)
    parts?: Part[];

    @Column("text",  { nullable: true })
    description?: string;
}
