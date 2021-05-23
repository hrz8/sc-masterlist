import { Part } from "../entities/Part";

export default [
    {
        project: {
            name: "D26A"
        },
        level: 1,
        number: "52101-BZC10",
        name: "BUMPER, SUB-ASSY, FR (D-BRAND LO : W/SONAR, W/O FOG, W/O CAMERA)",
        image: "https://picsum.photos/seed/picsum/200/300",
        qtyPerUnit: 1
    },
    {
        project: {
            name: "D26A"
        },
        level: 2,
        parent: {
            number: "52101-BZC10"
        },
        number: "52119-BZR70",
        name: "COVER, FR BUMPER (D-BRAND)",
        image: "https://picsum.photos/id/237/200/300",
        qtyPerUnit: 1,
        sourcings: [
            {
                name: "SUGITY",
                remarks: "SC"
            },
            {
                name: "V-V",
                remarks: "SC"
            }
        ],
        processes: [
            {
                name: "RESIN"
            }
        ],
        material: {
            id: 7
        },
        colors: [
            {
                id: 14
            }
        ],
        paintColor: "BODY COLOR",
        paintCode: "11BK01",
        mouldMaker: {
            id: 1
        },
        mouldCav: {
            id: 1
        },
        mouldTon: {
            id: 8
        },
        grainType: {
            code: "GR504"
        },
        dwgWeight: 4831
    },
    {
        project: {
            name: "D26A"
        },
        level: 2,
        parent: {
            number: "52101-BZC10"
        },
        number: "53111-BZ580",
        name: "GRILLE, RADIATOR (D-BRAND)",
        image: "https://picsum.photos/200/300.jpg",
        qtyPerUnit: 2,
        qtyPerMonth: 1,
        sourcings: [
            {
                name: "RPT"
            }
        ],
        sourcingRemarks: "SC",
        processes: [
            {
                name: "ASSY",
            }
        ],
        processRouting: "RPT -> SC",
        material: {
            id: 17
        },
        colors: [
            {
                id: 14
            }
        ],
        paintColor: "BLACK",
        mouldMaker: {
            id: 6
        },
        mouldCav: {
            id: 1
        },
        mouldTon: {
            id: 3
        },
        grainType: {
            code: "GR504"
        },
        dwgWeight: 292
    }
] as Part[]
