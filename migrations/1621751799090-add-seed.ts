import {getRepository, MigrationInterface, QueryRunner} from "typeorm";
import { Color } from "../entities/Color";
import { GrainType } from "../entities/GrainType";
import { Process } from "../entities/Process";
import { Project } from "../entities/Project";
import { Sourcing } from "../entities/Sourcing";
import color from "../seeds/color";
import grainType from "../seeds/grainType";
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
                getRepository(Sourcing).save(sourcing)
            ]
        )
        
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
    }

}
