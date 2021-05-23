import { Entity, Column, PrimaryColumn } from "typeorm";

@Entity()
export class Process {

    @PrimaryColumn()
    name!: string;

    @Column("text", { nullable: true })
    description?: string;
}
