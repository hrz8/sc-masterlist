import { Entity, Column, PrimaryColumn } from "typeorm";

@Entity()
export class Sourcing {

    @PrimaryColumn()
    name!: string;

    @Column("text",  { nullable: true })
    description?: string;
}
