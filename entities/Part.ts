import { Entity, Column, PrimaryColumn, ManyToOne } from "typeorm";
import { Project } from "./Project";

@Entity()
export class Part {

    @PrimaryColumn()
    number!: number;

    @Column()
    level!: number;

    @Column()
    name!: number;

    @Column("text")
    image!: string;

    @Column()
    qty_per_unit!: number;

    @Column()
    qty_per_month!: number;

    @ManyToOne(() => Project, project => project.parts)
    project!: Project;
}