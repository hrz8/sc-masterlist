import {getRepository, MigrationInterface, QueryRunner} from "typeorm";
import { Color } from "../entities/Color";
import { GrainType } from "../entities/GrainType";
import { MouldCav } from "../entities/MouldCav";
import { MouldMaker } from "../entities/MouldMaker";
import { MouldTon } from "../entities/MouldTon";
import { Process } from "../entities/Process";
import { Project } from "../entities/Project";
import { Sourcing } from "../entities/Sourcing";
import color from "../seeds/color";
import grainType from "../seeds/grainType";
import mouldCav from "../seeds/mouldCav";
import mouldMaker from "../seeds/mouldMaker";
import mouldTon from "../seeds/mouldTon";
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
                getRepository(MouldCav).save(mouldCav)
            ]
        )
        
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
    }

}
