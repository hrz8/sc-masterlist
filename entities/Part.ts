import { Entity, Column, PrimaryColumn, ManyToOne, Tree, TreeChildren, TreeParent, ManyToMany, JoinTable } from "typeorm";
import { ActualWeight } from "./ActualWeight";
import { Color } from "./Color";
import { GrainType } from "./GrainType";
import { Material } from "./Material";
import { MouldCav } from "./MouldCav";
import { MouldMaker } from "./MouldMaker";
import { MouldTon } from "./MouldTon";
import { Project } from "./Project";
import { Sourcing } from "./Sourcing";

@Entity()
@Tree("closure-table", {
    ancestorColumnName: (column) => "parent_" + column.propertyName,
    descendantColumnName: (column) => "sub_" + column.propertyName,
})
export class Part {

    @PrimaryColumn({
        length: 100
    })
    number!: string;

    @Column()
    level!: number;

    @Column()
    name!: number;

    @Column("text")
    image!: string;

    @Column()
    qtyPerUnit!: number;

    @Column()
    qtyPerMonth!: number;

    @Column()
    dwgWeight?: number;

    @Column({ nullable: true })
    paintColor?: string;

    @Column({ nullable: true })
    paintCode?: string;

    @Column("text")
    remarks?: string;

    // project relation
    @ManyToOne(() => Project, project => project.parts)
    project!: Project;

    // many to many
    @ManyToMany(() => Color)
    @JoinTable({
        name: "part_color"
    })
    colors?: Color[];

    // many to one
    @ManyToOne(() => Material, material => material.parts)
    material?: Material;

    @ManyToOne(() => GrainType, grain => grain.parts)
    grainType?: GrainType;

    @ManyToOne(() => MouldMaker, mouldMaker => mouldMaker.parts)
    mouldMaker?: MouldMaker;

    @ManyToOne(() => MouldTon, mouldTon => mouldTon.parts)
    mouldTon?: MouldTon;
    
    @ManyToOne(() => MouldCav, mouldCav => mouldCav.parts)
    mouldCav?: MouldCav;

    @ManyToOne(() => ActualWeight, actualWeight => actualWeight.parts)
    actualWeight?: ActualWeight;

    // Closure
    @TreeChildren()
    children?: Part[];

    @TreeParent()
    parent!: Part;

}
