import { Entity, Column, PrimaryGeneratedColumn } from "typeorm";

@Entity()
export class Color {

    @PrimaryGeneratedColumn()
    id!: number;

    @Column({ nullable: true })
    name?: string;

    @Column()
    code!: string;

    @Column({ nullable: true })
    sfx?: string;

    @Column("text", { nullable: true })
    description?: string;
}