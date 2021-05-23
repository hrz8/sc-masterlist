import { Entity, Column, PrimaryGeneratedColumn } from "typeorm";

@Entity()
export class Process {

    @PrimaryGeneratedColumn()
    id!: number;

    @Column()
    name!: string;

    @Column("text", { nullable: true })
    description?: string;
}
