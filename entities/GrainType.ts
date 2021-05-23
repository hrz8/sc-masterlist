import { Entity, Column, OneToMany, PrimaryColumn } from "typeorm";
import { Part } from "./Part";

@Entity()
export class GrainType {

    @PrimaryColumn()
    code!: string;

    @OneToMany(() => Part, part => part.grainType)
    parts?: Part[];

    @Column("text",  { nullable: true })
    description?: string;
}
