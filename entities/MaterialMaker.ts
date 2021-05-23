import { Entity, Column, OneToMany, PrimaryColumn } from "typeorm";
import { Material } from "./Material";

@Entity()
export class MaterialMaker {
    @PrimaryColumn()
    name!: string;

    @OneToMany(() => Material, material => material.maker)
    materials?: Material[];

    @Column("text",  { nullable: true })
    description?: string;
}
