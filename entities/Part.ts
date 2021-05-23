import { Entity, Column, PrimaryColumn, ManyToOne, Tree, TreeChildren, TreeParent, ManyToMany, JoinTable } from "typeorm";
import { ActualWeight } from "./ActualWeight";
import { Color } from "./Color";
import { GrainType } from "./GrainType";
import { Material } from "./Material";
import { MouldCav } from "./MouldCav";
import { MouldMaker } from "./MouldMaker";
import { MouldTon } from "./MouldTon";
import { Process } from "./Process";
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

    @Column({ nullable: false })
    level!: number;

    @Column({ nullable: false })
    name!: string;

    @Column("text")
    image?: string;

    @Column({ nullable: true })
    qtyPerUnit?: number;

    @Column({ nullable: true })
    qtyPerMonth?: number;

    @Column({ nullable: true })
    dwgWeight?: number;

    @Column({ nullable: true })
    paintColor?: string;

    @Column({ nullable: true })
    paintCode?: string;

    @Column({ nullable: true })
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

    @ManyToMany(() => Sourcing)
    @JoinTable({
        name: "part_sourcing"
    })
    sourcings?: Sourcing[];

    @Column({ nullable: true })
    sourcingRemarks?: string;

    @ManyToMany(() => Process)
    @JoinTable({
        name: "part_process"
    })
    processes?: Process[];

    @Column({ nullable: true })
    processRouting?: string;

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
    parent?: Part;

}
