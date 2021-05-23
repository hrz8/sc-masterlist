import { Entity, Column, PrimaryGeneratedColumn } from "typeorm";

@Entity()
export class Sourcing {

    @PrimaryGeneratedColumn()
    id!: number;

    @Column()
    name!: string;

    @Column("text",  { nullable: true })
    description?: string;
}
