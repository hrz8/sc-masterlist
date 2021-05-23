import { Entity, Column, PrimaryGeneratedColumn, OneToMany, ManyToOne } from "typeorm";
import { MaterialGrade } from "./MaterialGrade";
import { MaterialMaker } from "./MaterialMaker";
import { Part } from "./Part";

@Entity()
export class Material {

    @PrimaryGeneratedColumn()
    id?: number;

    @Column()
    tsm!: string;

    @ManyToOne(() => MaterialGrade, grade => grade.materials)
    grade?: MaterialGrade;

    @ManyToOne(() => MaterialMaker, maker => maker.materials)
    maker?: MaterialMaker;

    @OneToMany(() => Part, part => part.material)
    parts?: Part[];

    @Column("text",  { nullable: true })
    description?: string;
}
