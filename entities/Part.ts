import { Entity, Column, PrimaryColumn, ManyToOne, Tree, TreeChildren, TreeParent, ManyToMany, JoinTable, OneToMany } from "typeorm";
import { Process } from "./Process";
import { Project } from "./Project";

@Entity()
@Tree("closure-table", {
    closureTableName: "part_relation",
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
    qty_per_unit!: number;

    @Column()
    qty_per_month!: number;

    @ManyToOne(() => Project, project => project.parts)
    project!: Project;
    
    // Closure
    @TreeChildren()
    children?: Part[];

    @TreeParent()
    parent!: Part;

}