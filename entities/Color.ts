import { Entity, Column, PrimaryGeneratedColumn } from "typeorm";

@Entity()
export class Color {

    @PrimaryGeneratedColumn()
    id!: number;

    @Column()
    name!: string;

    @Column({ nullable: true })
    code?: string;

    @Column({ nullable: true })
    sfx?: string;

    @Column("text", { nullable: true })
    description?: string;
}