import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from "typeorm";
import { Part } from "./Part";

@Entity()
export class Material {

    @PrimaryGeneratedColumn()
    id!: number;

    @Column()
    tsm!: string;

    @Column()
    grade!: string;

    @Column()
    maker!: string;

    @OneToMany(() => Part, part => part.material)
    parts?: Part[];

    @Column("text",  { nullable: true })
    description?: string;
}
