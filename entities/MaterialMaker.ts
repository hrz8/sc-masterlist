import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from "typeorm";
import { Material } from "./Material";

@Entity()
export class MaterialMaker {

    @PrimaryGeneratedColumn()
    id!: number;

    @Column()
    name!: string;

    @OneToMany(() => Material, material => material.maker)
    materials?: Material[];

    @Column("text",  { nullable: true })
    description?: string;
}
