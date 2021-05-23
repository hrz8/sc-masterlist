import { Entity, Column, PrimaryColumn, ManyToOne, Tree, TreeChildren, TreeParent, ManyToMany, JoinTable, OneToMany } from "typeorm";
import { Color } from "./Color";
import { Process } from "./Process";
import { Project } from "./Project";
import { Sourcing } from "./Sourcing";

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
    qtyPerUnit!: number;

    @Column()
    qtyPerMonth!: number;

    @Column()
    dqgWeight?: number;

    // project relation
    @ManyToOne(() => Project, project => project.parts)
    project!: Project;

    // many to many
    @ManyToMany(() => Color)
    @JoinTable()
    colors?: Color[];

    @ManyToMany(() => Sourcing)
    @JoinTable()
    sourcings?: Sourcing[];
    
    // Closure
    @TreeChildren()
    children?: Part[];

    @TreeParent()
    parent!: Part;

}
