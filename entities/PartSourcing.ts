import { Entity, Column, ManyToOne, JoinColumn, PrimaryColumn } from "typeorm";
import { Part } from "./Part";
import { Sourcing } from "./Sourcing";

@Entity()
export class PartSourcing {

    @PrimaryColumn() 
    partNumber!: string;

    @ManyToOne(() => Part)
    @JoinColumn({ name: "partNumber" })
    part!: Part;

    @PrimaryColumn() 
    sourcingId!: number;

    @ManyToOne(() => Sourcing)
    @JoinColumn({ name: "sourcingId" })
    sourcing!: Sourcing;

    @Column()
    remarks!: string;
}
