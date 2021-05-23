import { Entity, Column, PrimaryGeneratedColumn, OneToMany, ManyToOne } from "typeorm";
import { MaterialMaker } from "./MaterialMaker";
import { Part } from "./Part";

@Entity()
export class Material {

    @PrimaryGeneratedColumn()
    id!: number;

    @Column()
    tsm!: string;

    @Column()
    grade!: string;

    @ManyToOne(() => MaterialMaker, maker => maker.materials)
    maker?: MaterialMaker;

    @OneToMany(() => Part, part => part.material)
    parts?: Part[];

    @Column("text",  { nullable: true })
    description?: string;
}
