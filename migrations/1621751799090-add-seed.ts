import {getRepository, MigrationInterface, QueryRunner} from "typeorm";
import { Color } from "../entities/Color";
import { GrainType } from "../entities/GrainType";
import { Material } from "../entities/Material";
import { MaterialGrade } from "../entities/MaterialGrade";
import { MaterialMaker } from "../entities/MaterialMaker";
import { MouldCav } from "../entities/MouldCav";
import { MouldMaker } from "../entities/MouldMaker";
import { MouldTon } from "../entities/MouldTon";
import { Part } from "../entities/Part";
import { Process } from "../entities/Process";
import { Project } from "../entities/Project";
import { Sourcing } from "../entities/Sourcing";
import color from "../seeds/color";
import grainType from "../seeds/grainType";
import material from "../seeds/material";
import materialGrade from "../seeds/materialGrade";
import materialMaker from "../seeds/materialMaker";
import mouldCav from "../seeds/mouldCav";
import mouldMaker from "../seeds/mouldMaker";
import mouldTon from "../seeds/mouldTon";
import part from "../seeds/part";
import process from "../seeds/process";
import sourcing from "../seeds/sourcing";

export class addSeed1621751799090 implements MigrationInterface {

    public async up(queryRunner: QueryRunner): Promise<void> {
        await Promise.all(
            [
                getRepository(Project).save([{
                    name: "D26A"
                }, {
                    name: "560B"
                }]),
                getRepository(Color).save(color),
                getRepository(GrainType).save(grainType),
                getRepository(Process).save(process),
                getRepository(Sourcing).save(sourcing),
                getRepository(MouldMaker).save(mouldMaker),
                getRepository(MouldTon).save(mouldTon),
                getRepository(MouldCav).save(mouldCav),
                getRepository(MaterialMaker).save(materialMaker),
                getRepository(MaterialGrade).save(materialGrade),
            ]
        )
        await getRepository(Material).save(material)
        await getRepository(Part).save(part)
        
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
    }

}
