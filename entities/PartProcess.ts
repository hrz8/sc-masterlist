import { Entity, Column, PrimaryGeneratedColumn, ManyToOne, JoinColumn, PrimaryColumn } from "typeorm";
import { Part } from "./Part";
import { Process } from "./Process";

@Entity()
export class PartProcess {

    @PrimaryColumn() 
    partNumber!: string;

    @ManyToOne(() => Part)
    @JoinColumn({ name: "partNumber" })
    part!: Part;

    @PrimaryColumn() 
    processId!: number;

    @ManyToOne(() => Process)
    @JoinColumn({ name: "processId" })
    process!: Process;

    @Column()
    routing!: string;
}