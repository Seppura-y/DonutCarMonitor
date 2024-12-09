import QtQuick
import QtQuick3D

Node {
    id: node
    property color carbodyColor: "#ff7c7c7c"
    //property real doorFLRotationZ: -75
    //property real doorFRRotationZ: 75
    //property real doorBLRotationZ: -75
    //property real doorBRRotationZ: 75
    property real doorFLRotationZ: 0
    property real doorFRRotationZ: 0
    property real doorBLRotationZ: 0
    property real doorBRRotationZ: 0
    // Resources
    Texture {
        id: seam_png_texture
        objectName: "seam.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/seam.png"
    }
    Texture {
        id: icons_xiaomi_png_texture
        objectName: "icons_xiaomi.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/icons_xiaomi.png"
    }
    Texture {
        id: wood_png_texture
        objectName: "wood.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/wood.png"
    }
    Texture {
        id: seamB_png_texture
        objectName: "seamB.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/seamB.png"
    }
    Texture {
        id: intD_png_texture
        objectName: "intD.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/intD.png"
    }
    Texture {
        id: seatbelt_png_texture
        objectName: "seatbelt.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/seatbelt.png"
    }
    Texture {
        id: carpet_png_texture
        objectName: "carpet.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/carpet.png"
    }

    Texture {
        id: leatherB_normal_png_texture
        objectName: "perf2.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/perf2.png"
    }

    Texture {
        id: sidewall_png_texture
        objectName: "sidewall.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/sidewall.png"
    }

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        Node {
            id: xiaomi_SU7_LRB
            objectName: "Xiaomi_SU7_LRB"
            x: -78.43900299072266
            y: 1116.394
            z: 55.989990234375
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            Node {
                id: door004_doorRR_LRD
                objectName: "door004_doorRR_LRD"
                x: 1017.1071166992188
                y: -145.1392822265625
                z: -421.2286376953125
                eulerRotation.y: 0
                eulerRotation.z: doorBRRotationZ
                eulerRotation.x: 0
                Model {
                    id: doorR_21_LRD
                    objectName: "doorR_21_LRD"
                    x: -938.66845703125
                    y: -288.0594787597656
                    z: 123.29730224609375
                    source: "meshes/doorR_21_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorR_22_LRD
                    objectName: "doorR_22_LRD"
                    x: -938.66845703125
                    y: -276.1594543457031
                    z: 89.707275390625
                    source: "meshes/doorR_22_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorR_23_LRD
                    objectName: "doorR_23_LRD"
                    x: -938.66845703125
                    y: -520.3593139648438
                    z: -54.1427001953125
                    eulerRotation.y: 0
                    eulerRotation.z: 0
                    eulerRotation.x: 0
                    source: "meshes/doorR_23_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorR_24_LRD
                    objectName: "doorR_24_LRD"
                    x: -938.6683959960938
                    y: -158.11441040039062
                    z: 452.5522766113281
                    source: "meshes/doorR_24_LRD_mesh.mesh"
                    materials: [
                        glass_darkB_material
                    ]
                }
                Model {
                    id: doorR_25_LRD
                    objectName: "doorR_25_LRD"
                    x: -938.66845703125
                    y: -96.70944213867188
                    z: 449.787353515625
                    source: "meshes/doorR_25_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorR_26_LRD
                    objectName: "doorR_26_LRD"
                    x: -938.66845703125
                    y: -530.1195068359375
                    z: 310.88232421875
                    source: "meshes/doorR_26_LRD_mesh.mesh"
                    materials: [
                        plasticGlossy_material
                    ]
                }
                Model {
                    id: doorR_27_LRD
                    objectName: "doorR_27_LRD"
                    x: -938.6683349609375
                    y: -6.004486083984375
                    z: 122.21728515625
                    source: "meshes/doorR_27_LRD_mesh.mesh"
                    materials: [
                        seam_material
                    ]
                }
                Model {
                    id: doorR_28_LRD
                    objectName: "doorR_28_LRD"
                    x: -938.66845703125
                    y: -502.9444580078125
                    z: 86.8973388671875
                    source: "meshes/doorR_28_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorR_29_LRD
                    objectName: "doorR_29_LRD"
                    x: -938.66845703125
                    y: -440.29437255859375
                    z: -250.0076904296875
                    source: "meshes/doorR_29_LRD_mesh.mesh"
                    materials: [
                        leatherA_material
                    ]
                }
                Model {
                    id: doorR_30_LRD
                    objectName: "doorR_30_LRD"
                    x: -938.66845703125
                    y: -438.03936767578125
                    z: -22.95770263671875
                    source: "meshes/doorR_30_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorR_31_LRD
                    objectName: "doorR_31_LRD"
                    x: -938.6683959960938
                    y: -369.0494384765625
                    z: 201.3172607421875
                    source: "meshes/doorR_31_LRD_mesh.mesh"
                    materials: [
                        wood_material
                    ]
                }
                Model {
                    id: doorR_32_LRD
                    objectName: "doorR_32_LRD"
                    x: -938.66845703125
                    y: -382.6944580078125
                    z: 5.322265625
                    source: "meshes/doorR_32_LRD_mesh.mesh"
                    materials: [
                        silver_material
                    ]
                }
                Model {
                    id: doorR_33_LRD
                    objectName: "doorR_33_LRD"
                    x: -938.66845703125
                    y: -489.8094482421875
                    z: -52.95770263671875
                    source: "meshes/doorR_33_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorR_34_LRD
                    objectName: "doorR_34_LRD"
                    x: -938.6685180664062
                    y: -272.97442626953125
                    z: 23.0323486328125
                    source: "meshes/doorR_34_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorR_35_LRD
                    objectName: "doorR_35_LRD"
                    x: -938.66845703125
                    y: -455.12451171875
                    z: -23.7677001953125
                    source: "meshes/doorR_35_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorR_36_LRD
                    objectName: "doorR_36_LRD"
                    x: -938.66845703125
                    y: -464.87432861328125
                    z: -24.20269775390625
                    source: "meshes/doorR_36_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorR_37_LRD
                    objectName: "doorR_37_LRD"
                    x: -938.6734008789062
                    y: -510.6044921875
                    z: 272.412353515625
                    source: "meshes/doorR_37_LRD_mesh.mesh"
                    materials: [
                        leatherA_material
                    ]
                }
                Model {
                    id: doorR_38_LRD
                    objectName: "doorR_38_LRD"
                    x: -938.66845703125
                    y: -524.5143432617188
                    z: -46.70269775390625
                    source: "meshes/doorR_38_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorR_39_LRD
                    objectName: "doorR_39_LRD"
                    x: -938.6685791015625
                    y: -883.8194580078125
                    z: -20.19268798828125
                    source: "meshes/doorR_39_LRD_mesh.mesh"
                    materials: [
                        silver_material
                    ]
                }
                Model {
                    id: doorR_40_LRD
                    objectName: "doorR_40_LRD"
                    x: -941.84326171875
                    y: 199.34552001953125
                    z: 277.4422607421875
                    source: "meshes/doorR_40_LRD_mesh.mesh"
                    materials: [
                        icons_material
                    ]
                }
                Model {
                    id: doorR_41_LRD
                    objectName: "doorR_41_LRD"
                    x: -938.66845703125
                    y: -93.16949462890625
                    z: 450.3372802734375
                    source: "meshes/doorR_41_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
            }
            Node {
                id: door001_doorRL_LRD
                objectName: "door001_doorRL_LRD"
                x: -860.2293090820312
                y: -145.1392822265625
                z: -421.2286376953125
                eulerRotation.y: 0
                eulerRotation.z: doorBLRotationZ
                eulerRotation.x: 0
                Model {
                    id: doorR_00_LRD
                    objectName: "doorR_00_LRD"
                    x: 938.6679077148438
                    y: -288.0594787597656
                    z: 123.29730224609375
                    source: "meshes/doorR_00_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorR_01_LRD
                    objectName: "doorR_01_LRD"
                    x: 938.66796875
                    y: -276.1594543457031
                    z: 89.707275390625
                    source: "meshes/doorR_01_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorR_02_LRD
                    objectName: "doorR_02_LRD"
                    x: 938.66796875
                    y: -520.3593139648438
                    z: -54.1427001953125
                    source: "meshes/doorR_02_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorR_03_LRD
                    objectName: "doorR_03_LRD"
                    x: 938.66796875
                    y: -158.11441040039062
                    z: 452.5522766113281
                    source: "meshes/doorR_03_LRD_mesh.mesh"
                    materials: [
                        glass_darkB_material
                    ]
                }
                Model {
                    id: doorR_04_LRD
                    objectName: "doorR_04_LRD"
                    x: 938.66796875
                    y: -96.70944213867188
                    z: 449.787353515625
                    source: "meshes/doorR_04_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorR_05_LRD
                    objectName: "doorR_05_LRD"
                    x: 938.66796875
                    y: -530.1195068359375
                    z: 310.88232421875
                    source: "meshes/doorR_05_LRD_mesh.mesh"
                    materials: [
                        plasticGlossy_material
                    ]
                }
                Model {
                    id: doorR_06_LRD
                    objectName: "doorR_06_LRD"
                    x: 938.6680908203125
                    y: -6.004486083984375
                    z: 122.21728515625
                    source: "meshes/doorR_06_LRD_mesh.mesh"
                    materials: [
                        seam_material
                    ]
                }
                Model {
                    id: doorR_07_LRD
                    objectName: "doorR_07_LRD"
                    x: 938.66796875
                    y: -502.9444580078125
                    z: 86.8973388671875
                    source: "meshes/doorR_07_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorR_08_LRD
                    objectName: "doorR_08_LRD"
                    x: 938.66796875
                    y: -440.29437255859375
                    z: -250.0076904296875
                    source: "meshes/doorR_08_LRD_mesh.mesh"
                    materials: [
                        leatherA_material
                    ]
                }
                Model {
                    id: doorR_09_LRD
                    objectName: "doorR_09_LRD"
                    x: 938.66796875
                    y: -438.03936767578125
                    z: -22.95770263671875
                    source: "meshes/doorR_09_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorR_10_LRD
                    objectName: "doorR_10_LRD"
                    x: 938.66796875
                    y: -369.0494384765625
                    z: 201.3172607421875
                    source: "meshes/doorR_10_LRD_mesh.mesh"
                    materials: [
                        wood_material
                    ]
                }
                Model {
                    id: doorR_11_LRD
                    objectName: "doorR_11_LRD"
                    x: 938.6679077148438
                    y: -382.6944580078125
                    z: 5.322265625
                    source: "meshes/doorR_11_LRD_mesh.mesh"
                    materials: [
                        silver_material
                    ]
                }
                Model {
                    id: doorR_12_LRD
                    objectName: "doorR_12_LRD"
                    x: 938.66796875
                    y: -489.8094482421875
                    z: -52.95770263671875
                    source: "meshes/doorR_12_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorR_13_LRD
                    objectName: "doorR_13_LRD"
                    x: 938.6679077148438
                    y: -272.97442626953125
                    z: 23.0323486328125
                    source: "meshes/doorR_13_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorR_14_LRD
                    objectName: "doorR_14_LRD"
                    x: 938.66796875
                    y: -455.12451171875
                    z: -23.7677001953125
                    source: "meshes/doorR_14_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorR_15_LRD
                    objectName: "doorR_15_LRD"
                    x: 938.66796875
                    y: -464.87432861328125
                    z: -24.20269775390625
                    source: "meshes/doorR_15_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorR_16_LRD
                    objectName: "doorR_16_LRD"
                    x: 938.6629028320312
                    y: -510.6044921875
                    z: 272.412353515625
                    source: "meshes/doorR_16_LRD_mesh.mesh"
                    materials: [
                        leatherA_material
                    ]
                }
                Model {
                    id: doorR_17_LRD
                    objectName: "doorR_17_LRD"
                    x: 938.66796875
                    y: -524.5143432617188
                    z: -46.70269775390625
                    source: "meshes/doorR_17_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorR_18_LRD
                    objectName: "doorR_18_LRD"
                    x: 938.66796875
                    y: -883.8194580078125
                    z: -20.19268798828125
                    source: "meshes/doorR_18_LRD_mesh.mesh"
                    materials: [
                        silver_material
                    ]
                }
                Model {
                    id: doorR_19_LRD
                    objectName: "doorR_19_LRD"
                    x: 935.4931640625
                    y: 199.34552001953125
                    z: 277.4422607421875
                    source: "meshes/doorR_19_LRD_mesh.mesh"
                    materials: [
                        icons_material
                    ]
                }
                Model {
                    id: doorR_20_LRD
                    objectName: "doorR_20_LRD"
                    x: 938.66796875
                    y: -93.16949462890625
                    z: 450.3372802734375
                    source: "meshes/doorR_20_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
            }
            Node {
                id: door_doorFL_LRD
                objectName: "door_doorFL_LRD"
                x: -849.71826171875
                y: 982.0252075195312
                z: -421.2286376953125
                eulerRotation.y: 0
                eulerRotation.z: doorFLRotationZ
                eulerRotation.x: 0
                Model {
                    id: doorF_00_LRD
                    objectName: "doorF_00_LRD"
                    x: 928.1570434570312
                    y: -565.8838500976562
                    z: -96.772705078125
                    source: "meshes/doorF_00_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorF_01_LRD
                    objectName: "doorF_01_LRD"
                    x: 928.1571044921875
                    y: -1415.223876953125
                    z: 123.29730224609375
                    source: "meshes/doorF_01_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorF_02_LRD
                    objectName: "doorF_02_LRD"
                    x: 928.1570434570312
                    y: -1403.323974609375
                    z: 89.707275390625
                    source: "meshes/doorF_02_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorF_03_LRD
                    objectName: "doorF_03_LRD"
                    x: 928.1571044921875
                    y: -1285.27880859375
                    z: 452.55224609375
                    source: "meshes/doorF_03_LRD_mesh.mesh"
                    materials: [
                        glass_dark_material
                    ]
                }
                Model {
                    id: doorF_05_LRD
                    objectName: "doorF_05_LRD"
                    x: 928.1572875976562
                    y: -289.96392822265625
                    z: 313.9072265625
                    source: "meshes/doorF_05_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorF_06_LRD
                    objectName: "doorF_06_LRD"
                    x: 928.1572875976562
                    y: -266.20880126953125
                    z: 205.1573486328125
                    source: "meshes/doorF_06_LRD_mesh.mesh"
                    materials: [
                        plasticGlossy_material
                    ]
                }
                Model {
                    id: doorF_07_LRD
                    objectName: "doorF_07_LRD"
                    x: 928.1570434570312
                    y: -351.95391845703125
                    z: 315.21728515625
                    source: "meshes/doorF_07_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorF_08_LRD
                    objectName: "doorF_08_LRD"
                    x: 928.1571044921875
                    y: -353.10894775390625
                    z: 315.207275390625
                    source: "meshes/doorF_08_LRD_mesh.mesh"
                    materials: [
                        reflect_material
                    ]
                }
                Model {
                    id: doorF_09_LRD
                    objectName: "doorF_09_LRD"
                    x: 928.1571655273438
                    y: -290.32891845703125
                    z: 299.9322509765625
                    source: "meshes/doorF_09_LRD_mesh.mesh"
                    materials: [
                        glass_darkB_material
                    ]
                }
                Model {
                    id: doorF_10_LRD
                    objectName: "doorF_10_LRD"
                    x: 928.1572875976562
                    y: -292.10894775390625
                    z: 299.9722900390625
                    source: "meshes/doorF_10_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorF_11_LRD
                    objectName: "doorF_11_LRD"
                    x: 928.1572875976562
                    y: -292.9039306640625
                    z: 299.4522705078125
                    source: "meshes/doorF_11_LRD_mesh.mesh"
                    materials: [
                        chrome_material
                    ]
                }
                Model {
                    id: doorF_12_LRD
                    objectName: "doorF_12_LRD"
                    x: 928.1572875976562
                    y: -282.08892822265625
                    z: 198.727294921875
                    source: "meshes/doorF_12_LRD_mesh.mesh"
                    materials: [
                        glass_clear_material
                    ]
                }
                Model {
                    id: doorF_13_LRD
                    objectName: "doorF_13_LRD"
                    x: 928.1572875976562
                    y: -281.88397216796875
                    z: 199.42724609375
                    source: "meshes/doorF_13_LRD_mesh.mesh"
                    materials: [
                        plasticGlossy_material
                    ]
                }
                Model {
                    id: doorF_14_LRD
                    objectName: "doorF_14_LRD"
                    x: 928.1571655273438
                    y: -187.6287841796875
                    z: 304.17724609375
                    source: "meshes/doorF_14_LRD_mesh.mesh"
                    materials: [
                        plasticGlossy_material
                    ]
                }
                Model {
                    id: doorF_15_LRD
                    objectName: "doorF_15_LRD"
                    x: 928.1569213867188
                    y: -1223.873779296875
                    z: 449.787353515625
                    source: "meshes/doorF_15_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorF_16_LRD
                    objectName: "doorF_16_LRD"
                    x: 928.156982421875
                    y: -613.2588500976562
                    z: 263.84228515625
                    source: "meshes/doorF_16_LRD_mesh.mesh"
                    materials: [
                        plasticGlossy_material
                    ]
                }
                Model {
                    id: doorF_17_LRD
                    objectName: "doorF_17_LRD"
                    x: 928.156982421875
                    y: -1133.1689453125
                    z: 122.21728515625
                    source: "meshes/doorF_17_LRD_mesh.mesh"
                    materials: [
                        seam_material
                    ]
                }
                Model {
                    id: doorF_18_LRD
                    objectName: "doorF_18_LRD"
                    x: 928.1571044921875
                    y: -597.5888671875
                    z: 62.727294921875
                    source: "meshes/doorF_18_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorF_19_LRD
                    objectName: "doorF_19_LRD"
                    x: 928.1570434570312
                    y: -569.8688354492188
                    z: -247.86770629882812
                    source: "meshes/doorF_19_LRD_mesh.mesh"
                    materials: [
                        leatherA_material
                    ]
                }
                Model {
                    id: doorF_20_LRD
                    objectName: "doorF_20_LRD"
                    x: 928.1570434570312
                    y: -603.8738403320312
                    z: -19.60772705078125
                    source: "meshes/doorF_20_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorF_21_LRD
                    objectName: "doorF_21_LRD"
                    x: 928.1570434570312
                    y: -602.4888305664062
                    z: 246.3572998046875
                    source: "meshes/doorF_21_LRD_mesh.mesh"
                    materials: [
                        leatherA_material
                    ]
                }
                Model {
                    id: doorF_22_LRD
                    objectName: "doorF_22_LRD"
                    x: 928.1572265625
                    y: -786.4889526367188
                    z: 198.622314453125
                    source: "meshes/doorF_22_LRD_mesh.mesh"
                    materials: [
                        wood_material
                    ]
                }
                Model {
                    id: doorF_23_LRD
                    objectName: "doorF_23_LRD"
                    x: 928.156982421875
                    y: -571.2890014648438
                    z: 5.4923095703125
                    source: "meshes/doorF_23_LRD_mesh.mesh"
                    materials: [
                        silver_material
                    ]
                }
                Model {
                    id: doorF_24_LRD
                    objectName: "doorF_24_LRD"
                    x: 928.1571044921875
                    y: -704.3088989257812
                    z: -51.3177490234375
                    source: "meshes/doorF_24_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorF_25_LRD
                    objectName: "doorF_25_LRD"
                    x: 928.1570434570312
                    y: -406.9337158203125
                    z: 29.662353515625
                    source: "meshes/doorF_25_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorF_27_LRD
                    objectName: "doorF_27_LRD"
                    x: 136.962158203125
                    y: -680.0938110351562
                    z: -24.20269775390625
                    source: "meshes/doorF_27_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorF_28_LRD
                    objectName: "doorF_28_LRD"
                    x: 928.1572875976562
                    y: -191.94879150390625
                    z: 303.9923095703125
                    source: "meshes/doorF_28_LRD_mesh.mesh"
                    materials: [
                        leatherA_material
                    ]
                }
                Model {
                    id: doorF_29_LRD
                    objectName: "doorF_29_LRD"
                    x: 136.6822509765625
                    y: -685.7837524414062
                    z: -22.377685546875
                    source: "meshes/doorF_29_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorF_31_LRD
                    objectName: "doorF_31_LRD"
                    x: 928.1570434570312
                    y: -567.9290161132812
                    z: -89.61767578125
                    source: "meshes/doorF_31_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorF_32_LRD
                    objectName: "doorF_32_LRD"
                    x: 928.1571044921875
                    y: -83.25396728515625
                    z: -133.17767333984375
                    source: "meshes/doorF_32_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorF_33_LRD
                    objectName: "doorF_33_LRD"
                    x: 928.1572265625
                    y: -80.9039306640625
                    z: -132.84271240234375
                    source: "meshes/doorF_33_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorF_34_LRD
                    objectName: "doorF_34_LRD"
                    x: 928.1571044921875
                    y: -1058.3338623046875
                    z: -27.32769775390625
                    source: "meshes/doorF_34_LRD_mesh.mesh"
                    materials: [
                        silver_material
                    ]
                }
                Model {
                    id: doorF_35_LRD
                    objectName: "doorF_35_LRD"
                    x: 924.9821166992188
                    y: -927.81884765625
                    z: 277.4422607421875
                    source: "meshes/doorF_35_LRD_mesh.mesh"
                    materials: [
                        icons_material
                    ]
                }
                Model {
                    id: doorF_36_LRD
                    objectName: "doorF_36_LRD"
                    x: 928.1569213867188
                    y: -1220.333984375
                    z: 450.3372802734375
                    source: "meshes/doorF_36_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
            }
            Node {
                id: door003_doorFR_LRD
                objectName: "door003_doorFR_LRD"
                x: 1006.5960083007812
                y: 982.0252075195312
                z: -421.2286376953125
                eulerRotation.y: 0
                eulerRotation.z: doorFRRotationZ
                eulerRotation.x: 0
                Node {
                    id: doorF_26_LRD
                    objectName: "doorF_26_LRD"
                    x: -136.6822509765625
                    y: -685.7841796875
                    z: -22.377685546875
                }
                Node {
                    id: doorF_30_LRD
                    objectName: "doorF_30_LRD"
                    x: -136.0220947265625
                    y: -685.43408203125
                    z: -24.20269775390625
                }
                Model {
                    id: doorF_37_LRD
                    objectName: "doorF_37_LRD"
                    x: -928.1572265625
                    y: -565.884033203125
                    z: -96.772705078125
                    source: "meshes/doorF_37_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorF_38_LRD
                    objectName: "doorF_38_LRD"
                    x: -928.1573486328125
                    y: -1415.2239990234375
                    z: 123.29730224609375
                    source: "meshes/doorF_38_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorF_39_LRD
                    objectName: "doorF_39_LRD"
                    x: -928.1574096679688
                    y: -1403.323974609375
                    z: 89.707275390625
                    source: "meshes/doorF_39_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorF_40_LRD
                    objectName: "doorF_40_LRD"
                    x: -928.1573486328125
                    y: -1285.27880859375
                    z: 452.55224609375
                    source: "meshes/doorF_40_LRD_mesh.mesh"
                    materials: [
                        glass_dark_material
                    ]
                }
                Model {
                    id: doorF_42_LRD
                    objectName: "doorF_42_LRD"
                    x: -928.1572265625
                    y: -289.96392822265625
                    z: 313.9072265625
                    source: "meshes/doorF_42_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorF_43_LRD
                    objectName: "doorF_43_LRD"
                    x: -928.1572265625
                    y: -266.2088623046875
                    z: 205.1573486328125
                    source: "meshes/doorF_43_LRD_mesh.mesh"
                    materials: [
                        plasticGlossy_material
                    ]
                }
                Model {
                    id: doorF_44_LRD
                    objectName: "doorF_44_LRD"
                    x: -928.1571044921875
                    y: -351.953857421875
                    z: 315.21728515625
                    source: "meshes/doorF_44_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorF_45_LRD
                    objectName: "doorF_45_LRD"
                    x: -928.1572265625
                    y: -353.10894775390625
                    z: 315.207275390625
                    source: "meshes/doorF_45_LRD_mesh.mesh"
                    materials: [
                        reflect_material
                    ]
                }
                Model {
                    id: doorF_46_LRD
                    objectName: "doorF_46_LRD"
                    x: -928.1571044921875
                    y: -290.32891845703125
                    z: 299.9322509765625
                    source: "meshes/doorF_46_LRD_mesh.mesh"
                    materials: [
                        glass_darkB_material
                    ]
                }
                Model {
                    id: doorF_47_LRD
                    objectName: "doorF_47_LRD"
                    x: -928.1572265625
                    y: -292.10894775390625
                    z: 299.9722900390625
                    source: "meshes/doorF_47_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorF_48_LRD
                    objectName: "doorF_48_LRD"
                    x: -928.1572265625
                    y: -292.9039306640625
                    z: 299.4522705078125
                    source: "meshes/doorF_48_LRD_mesh.mesh"
                    materials: [
                        chrome_material
                    ]
                }
                Model {
                    id: doorF_49_LRD
                    objectName: "doorF_49_LRD"
                    x: -928.1572265625
                    y: -282.0888671875
                    z: 198.727294921875
                    source: "meshes/doorF_49_LRD_mesh.mesh"
                    materials: [
                        glass_clear_material
                    ]
                }
                Model {
                    id: doorF_50_LRD
                    objectName: "doorF_50_LRD"
                    x: -928.1572265625
                    y: -281.8839111328125
                    z: 199.42724609375
                    source: "meshes/doorF_50_LRD_mesh.mesh"
                    materials: [
                        plasticGlossy_material
                    ]
                }
                Model {
                    id: doorF_51_LRD
                    objectName: "doorF_51_LRD"
                    x: -928.1571044921875
                    y: -187.6290283203125
                    z: 304.17724609375
                    source: "meshes/doorF_51_LRD_mesh.mesh"
                    materials: [
                        plasticGlossy_material
                    ]
                }
                Model {
                    id: doorF_52_LRD
                    objectName: "doorF_52_LRD"
                    x: -928.1572265625
                    y: -1223.8740234375
                    z: 449.787353515625
                    source: "meshes/doorF_52_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorF_53_LRD
                    objectName: "doorF_53_LRD"
                    x: -928.1572265625
                    y: -613.259033203125
                    z: 263.84228515625
                    source: "meshes/doorF_53_LRD_mesh.mesh"
                    materials: [
                        plasticGlossy_material
                    ]
                }
                Model {
                    id: doorF_54_LRD
                    objectName: "doorF_54_LRD"
                    x: -928.1572875976562
                    y: -1133.1690673828125
                    z: 122.21728515625
                    source: "meshes/doorF_54_LRD_mesh.mesh"
                    materials: [
                        seam_material
                    ]
                }
                Model {
                    id: doorF_55_LRD
                    objectName: "doorF_55_LRD"
                    x: -928.1572265625
                    y: -597.5889892578125
                    z: 62.727294921875
                    source: "meshes/doorF_55_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorF_56_LRD
                    objectName: "doorF_56_LRD"
                    x: -928.1571655273438
                    y: -569.8690185546875
                    z: -247.86770629882812
                    source: "meshes/doorF_56_LRD_mesh.mesh"
                    materials: [
                        leatherA_material
                    ]
                }
                Model {
                    id: doorF_57_LRD
                    objectName: "doorF_57_LRD"
                    x: -928.1572265625
                    y: -603.8740234375
                    z: -19.60772705078125
                    source: "meshes/doorF_57_LRD_mesh.mesh"
                    materials: [
                        leatherB_material
                    ]
                }
                Model {
                    id: doorF_58_LRD
                    objectName: "doorF_58_LRD"
                    x: -928.1572265625
                    y: -602.489013671875
                    z: 246.3572998046875
                    source: "meshes/doorF_58_LRD_mesh.mesh"
                    materials: [
                        leatherA_material
                    ]
                }
                Model {
                    id: doorF_59_LRD
                    objectName: "doorF_59_LRD"
                    x: -928.1572265625
                    y: -786.4888916015625
                    z: 198.622314453125
                    source: "meshes/doorF_59_LRD_mesh.mesh"
                    materials: [
                        wood_material
                    ]
                }
                Model {
                    id: doorF_60_LRD
                    objectName: "doorF_60_LRD"
                    x: -928.1572265625
                    y: -571.2889404296875
                    z: 5.4923095703125
                    source: "meshes/doorF_60_LRD_mesh.mesh"
                    materials: [
                        silver_material
                    ]
                }
                Model {
                    id: doorF_61_LRD
                    objectName: "doorF_61_LRD"
                    x: -928.1572265625
                    y: -704.3089599609375
                    z: -51.3177490234375
                    source: "meshes/doorF_61_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorF_62_LRD
                    objectName: "doorF_62_LRD"
                    x: -928.1571044921875
                    y: -406.933837890625
                    z: 29.662353515625
                    source: "meshes/doorF_62_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorF_63_LRD
                    objectName: "doorF_63_LRD"
                    x: -136.6822509765625
                    y: -685.7841796875
                    z: -22.377685546875
                    source: "meshes/doorF_63_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorF_64_LRD
                    objectName: "doorF_64_LRD"
                    x: -928.1572265625
                    y: -191.9488525390625
                    z: 303.9923095703125
                    source: "meshes/doorF_64_LRD_mesh.mesh"
                    materials: [
                        leatherA_material
                    ]
                }
                Model {
                    id: doorF_65_LRD
                    objectName: "doorF_65_LRD"
                    x: -136.0220947265625
                    y: -685.43408203125
                    z: -24.20269775390625
                    source: "meshes/doorF_65_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
                Model {
                    id: doorF_66_LRD
                    objectName: "doorF_66_LRD"
                    x: -928.1572265625
                    y: -567.9290771484375
                    z: -89.61767578125
                    source: "meshes/doorF_66_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorF_67_LRD
                    objectName: "doorF_67_LRD"
                    x: -928.1571044921875
                    y: -83.2540283203125
                    z: -133.17767333984375
                    source: "meshes/doorF_67_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorF_68_LRD
                    objectName: "doorF_68_LRD"
                    x: -928.1571044921875
                    y: -80.9039306640625
                    z: -132.84271240234375
                    source: "meshes/doorF_68_LRD_mesh.mesh"
                    materials: [
                        carpaint_material
                    ]
                }
                Model {
                    id: doorF_69_LRD
                    objectName: "doorF_69_LRD"
                    x: -928.1573486328125
                    y: -1058.333984375
                    z: -27.32769775390625
                    source: "meshes/doorF_69_LRD_mesh.mesh"
                    materials: [
                        silver_material
                    ]
                }
                Model {
                    id: doorF_70_LRD
                    objectName: "doorF_70_LRD"
                    x: -931.3321533203125
                    y: -927.8189697265625
                    z: 277.4422607421875
                    source: "meshes/doorF_70_LRD_mesh.mesh"
                    materials: [
                        icons_material
                    ]
                }
                Model {
                    id: doorF_71_LRD
                    objectName: "doorF_71_LRD"
                    x: -928.1572265625
                    y: -1220.333984375
                    z: 450.3372802734375
                    source: "meshes/doorF_71_LRD_mesh.mesh"
                    materials: [
                        plasticblack_material
                    ]
                }
            }
            Model {
                id: roof_glass_exterior_glass_tinted_LRB
                objectName: "roof_glass_exterior_glass_tinted_LRB"
                x: 78.43869018554688
                y: -342.6437072753906
                z: 35.40869140625
                source: "meshes/roof_glass_exterior_glass_tinted_LRB_mesh.mesh"
                materials: [
                    glass_darkB_material
                ]
                Model {
                    id: windshield_LRB
                    objectName: "windshield_LRB"
                    source: "meshes/windshield_LRB_mesh.mesh"
                    materials: [
                        glass_dark_material
                    ]
                }
            }
            Model {
                id: mesh_body_exterior_carpaint_LRB
                objectName: "mesh_body_exterior_carpaint_LRB"
                x: 78.43899536132812
                y: 55.436279296875
                z: -478.70635986328125
                source: "meshes/mesh_body_exterior_carpaint_LRB_mesh.mesh"
                materials: [
                    carpaint_material
                ]
            }
            Model {
                id: mesh_body_exterior_black_gloss_LRB
                objectName: "mesh_body_exterior_black_gloss_LRB"
                x: 78.43875122070312
                y: 48.7412109375
                z: -794.5013427734375
                source: "meshes/mesh_body_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: mesh_body_quarter_pannel_exterior_carpaint_LRB
                objectName: "mesh_body_quarter_pannel_exterior_carpaint_LRB"
                x: 78.43865203857422
                y: -622.7537841796875
                z: -300.08135986328125
                source: "meshes/mesh_body_quarter_pannel_exterior_carpaint_LRB_mesh.mesh"
                materials: [
                    carpaint_material
                ]
            }
            Model {
                id: roof_glass_radar_frame_exterior_black_gloss_LRB
                objectName: "roof_glass_radar_frame_exterior_black_gloss_LRB"
                x: 78.43878173828125
                y: 241.17123413085938
                z: 230.8287353515625
                source: "meshes/roof_glass_radar_frame_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: roof_glass_001_exterior_black_gloss_LRB
                objectName: "roof_glass_001_exterior_black_gloss_LRB"
                x: 78.43844604492188
                y: -1961.998779296875
                z: -46.851318359375
                source: "meshes/roof_glass_001_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: headlight_glass_exterior_glass_clear_LRB
                objectName: "headlight_glass_exterior_glass_clear_LRB"
                x: 78.4390869140625
                y: 2253.56640625
                z: -484.226318359375
                source: "meshes/headlight_glass_exterior_glass_clear_LRB_mesh.mesh"
                materials: [
                    glass_clear_material
                ]
            }
            Model {
                id: headlight_housing_exterior_black_matt_LRB
                objectName: "headlight_housing_exterior_black_matt_LRB"
                x: 78.43907928466797
                y: 2219.6416015625
                z: -484.1513671875
                source: "meshes/headlight_housing_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: front_grille_horizontal_bars_exterior_black_matt_LRB
                objectName: "front_grille_horizontal_bars_exterior_black_matt_LRB"
                x: 78.43911743164062
                y: 2480.4365234375
                z: -819.5813598632812
                source: "meshes/front_grille_horizontal_bars_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: grille_vertical_bars_front_exterior_black_matt_LRB
                objectName: "grille_vertical_bars_front_exterior_black_matt_LRB"
                x: 78.43911743164062
                y: 2475.031005859375
                z: -818.1763305664062
                source: "meshes/grille_vertical_bars_front_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: front_side_intake_001_exterior_black_matt_LRB
                objectName: "front_side_intake_001_exterior_black_matt_LRB"
                x: 78.4390640258789
                y: 2123.4814453125
                z: -705.3563232421875
                source: "meshes/front_side_intake_001_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: front_side_intake_exterior_black_gloss_LRB
                objectName: "front_side_intake_exterior_black_gloss_LRB"
                x: 78.43907165527344
                y: 2179.99658203125
                z: -725.2713623046875
                source: "meshes/front_side_intake_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: sides_mirror_camera_holder_exterior_black_gloss_LRB
                objectName: "sides_mirror_camera_holder_exterior_black_gloss_LRB"
                x: 78.43891906738281
                y: 1163.211181640625
                z: -453.5013427734375
                source: "meshes/sides_mirror_camera_holder_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: rear_diffuser_exterior_black_matt_LRB
                objectName: "rear_diffuser_exterior_black_matt_LRB"
                x: 78.43840026855469
                y: -2269.1533203125
                z: -830.4563598632812
                source: "meshes/rear_diffuser_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: rear_diffuser_reflectors_glass_exterior_glass_clear_LRB
                objectName: "rear_diffuser_reflectors_glass_exterior_glass_clear_LRB"
                x: 78.43839263916016
                y: -2346.654052734375
                z: -779.6913452148438
                source: "meshes/rear_diffuser_reflectors_glass_exterior_glass_clear_LRB_mesh.mesh"
                materials: [
                    glass_red_material
                ]
            }
            Model {
                id: underbody_exterior_black_matt_LRB
                objectName: "underbody_exterior_black_matt_LRB"
                x: 78.43872833251953
                y: -99.90380859375
                z: -703.7313232421875
                source: "meshes/underbody_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: mesh_body_gap_blockers_exterior_black_matt_LRB
                objectName: "mesh_body_gap_blockers_exterior_black_matt_LRB"
                x: 78.43875122070312
                y: 45.1512451171875
                z: -480.19635009765625
                source: "meshes/mesh_body_gap_blockers_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: parking_sensors_black_exterior_black_gloss_LRB
                objectName: "parking_sensors_black_exterior_black_gloss_LRB"
                x: 78.43875122070312
                y: 48.331298828125
                z: -629.3013916015625
                source: "meshes/parking_sensors_black_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: parking_sensors_bodycolor_exterior_carpaint_LRB
                objectName: "parking_sensors_bodycolor_exterior_carpaint_LRB"
                x: 78.43878936767578
                y: 313.9662780761719
                z: -642.766357421875
                source: "meshes/parking_sensors_bodycolor_exterior_carpaint_LRB_mesh.mesh"
                materials: [
                    carpaint_material
                ]
            }
            Model {
                id: front_intake_tirm_exterior_carpaint_LRB
                objectName: "front_intake_tirm_exterior_carpaint_LRB"
                x: 78.43911743164062
                y: 2479.7265625
                z: -813.4813232421875
                source: "meshes/front_intake_tirm_exterior_carpaint_LRB_mesh.mesh"
                materials: [
                    carpaint_material
                ]
            }
            Model {
                id: front_intake_trim2_exterior_black_matt_LRB
                objectName: "front_intake_trim2_exterior_black_matt_LRB"
                x: 78.43911743164062
                y: 2462.71142578125
                z: -791.601318359375
                source: "meshes/front_intake_trim2_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: front_grille_exterior_black_matt_LRB
                objectName: "front_grille_exterior_black_matt_LRB"
                x: 78.43911743164062
                y: 2487.196044921875
                z: -838.2613525390625
                source: "meshes/front_grille_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: grille_vertical_bars_inside_exterior_black_matt_LRB
                objectName: "grille_vertical_bars_inside_exterior_black_matt_LRB"
                x: 78.4391098022461
                y: 2407.58642578125
                z: -816.861328125
                source: "meshes/grille_vertical_bars_inside_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: front_intake_tirm_001_exterior_black_matt_LRB
                objectName: "front_intake_tirm_001_exterior_black_matt_LRB"
                x: 78.43910217285156
                y: 2366.181640625
                z: -851.0813598632812
                source: "meshes/front_intake_tirm_001_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: front_grille_002_exterior_black_matt_LRB
                objectName: "front_grille_002_exterior_black_matt_LRB"
                x: 78.4391098022461
                y: 2421.63671875
                z: -817.2113647460938
                source: "meshes/front_grille_002_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: front_grille_top_piece_exterior_black_matt_LRB
                objectName: "front_grille_top_piece_exterior_black_matt_LRB"
                x: 78.43911743164062
                y: 2464.8916015625
                z: -754.6663818359375
                source: "meshes/front_grille_top_piece_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: grille_inside_details_exterior_black_matt_LRB
                objectName: "grille_inside_details_exterior_black_matt_LRB"
                x: 78.43910217285156
                y: 2395.53125
                z: -813.5613403320312
                source: "meshes/grille_inside_details_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: front_bumper_camera_exterior_black_gloss_LRB
                objectName: "front_bumper_camera_exterior_black_gloss_LRB"
                x: 78.43912506103516
                y: 2543.571044921875
                z: -733.7113647460938
                source: "meshes/front_bumper_camera_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: front_camera_glass_exterior_glass_clear_LRB
                objectName: "front_camera_glass_exterior_glass_clear_LRB"
                x: 78.42412567138672
                y: 2547.4013671875
                z: -735.2813720703125
                source: "meshes/front_camera_glass_exterior_glass_clear_LRB_mesh.mesh"
                materials: [
                    glass_clear_material
                ]
            }
            Model {
                id: front_camera_exterior_black_gloss_LRB
                objectName: "front_camera_exterior_black_gloss_LRB"
                x: 78.42412567138672
                y: 2545.49658203125
                z: -734.8013305664062
                source: "meshes/front_camera_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: headlight_body_exterior_black_matt_LRB
                objectName: "headlight_body_exterior_black_matt_LRB"
                x: 78.43907928466797
                y: 2228.41162109375
                z: -485.21636962890625
                source: "meshes/headlight_body_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: guidelines_inside_chrome_parts_exterior_chrome_rough_LRB
                objectName: "guidelines_inside_chrome_parts_exterior_chrome_rough_LRB"
                x: 78.43907928466797
                y: 2206.676025390625
                z: -483.5863037109375
                source: "meshes/guidelines_inside_chrome_parts_exterior_chrome_rough_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: guidelines_inside_chrome_parts_exterior_chrome_LRB
                objectName: "guidelines_inside_chrome_parts_exterior_chrome_LRB"
                x: 78.43907928466797
                y: 2215.506103515625
                z: -483.5863037109375
                source: "meshes/guidelines_inside_chrome_parts_exterior_chrome_LRB_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: headlight_inside_glass_exterior_glass_clear_LRB
                objectName: "headlight_inside_glass_exterior_glass_clear_LRB"
                x: 78.4390869140625
                y: 2287.19140625
                z: -508.9013671875
                source: "meshes/headlight_inside_glass_exterior_glass_clear_LRB_mesh.mesh"
                materials: [
                    glass_clear_material
                ]
            }
            Model {
                id: headlight_inside_frame_exterior_black_gloss_LRB
                objectName: "headlight_inside_frame_exterior_black_gloss_LRB"
                x: 78.43907165527344
                y: 2193.885986328125
                z: -483.5863037109375
                source: "meshes/headlight_inside_frame_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: headlight_inside_indicator_reflector_exterior_chrome_LRB
                objectName: "headlight_inside_indicator_reflector_exterior_chrome_LRB"
                x: 78.4390869140625
                y: 2285.32666015625
                z: -508.96630859375
                source: "meshes/headlight_inside_indicator_reflector_exterior_chrome_LRB_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: headlight_inside_frame_001_exterior_black_matt_LRB
                objectName: "headlight_inside_frame_001_exterior_black_matt_LRB"
                x: 78.43907165527344
                y: 2160.946044921875
                z: -484.351318359375
                source: "meshes/headlight_inside_frame_001_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: headlight_inside_leds_glass_exterior_glass_clear_LRB
                objectName: "headlight_inside_leds_glass_exterior_glass_clear_LRB"
                x: 78.4390640258789
                y: 2137.53662109375
                z: -491.95635986328125
                source: "meshes/headlight_inside_leds_glass_exterior_glass_clear_LRB_mesh.mesh"
                materials: [
                    glass_clear_material
                ]
            }
            Model {
                id: headlight_inside_leds_housing_exterior_black_matt_LRB
                objectName: "headlight_inside_leds_housing_exterior_black_matt_LRB"
                x: 78.4390640258789
                y: 2129.736328125
                z: -492.0963134765625
                source: "meshes/headlight_inside_leds_housing_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: headlight_inside_leds_emissive_exterior_white_emissive_LRB
                objectName: "headlight_inside_leds_emissive_exterior_white_emissive_LRB"
                x: 78.4390640258789
                y: 2139.135986328125
                z: -492.2313232421875
                source: "meshes/headlight_inside_leds_emissive_exterior_white_emissive_LRB_mesh.mesh"
                materials: [
                    led_material
                ]
            }
            Model {
                id: headlight_inside_indicator_emissive_exterior_white_emissive_LRB
                objectName: "headlight_inside_indicator_emissive_exterior_white_emissive_LRB"
                x: 78.4390869140625
                y: 2280.87646484375
                z: -509.2763671875
                source: "meshes/headlight_inside_indicator_emissive_exterior_white_emissive_LRB_mesh.mesh"
                materials: [
                    led_material
                ]
            }
            Model {
                id: headlight_inside_frame_002_exterior_black_matt_LRB
                objectName: "headlight_inside_frame_002_exterior_black_matt_LRB"
                x: 78.43907928466797
                y: 2208.021484375
                z: -545.0313720703125
                source: "meshes/headlight_inside_frame_002_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: text_xiaomi_matrix_noMS_exterior_chrome_rough_LRB
                objectName: "Text_xiaomi_matrix_noMS_exterior_chrome_rough_LRB"
                x: 78.46906280517578
                y: 2101.555908203125
                z: -470.18133544921875
                source: "meshes/text_xiaomi_matrix_noMS_exterior_chrome_rough_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: projector_frame2_exterior_black_gloss_LRB
                objectName: "projector_frame2_exterior_black_gloss_LRB"
                x: 78.4390640258789
                y: 2144.87158203125
                z: -493.08135986328125
                source: "meshes/projector_frame2_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: projector_glass_exterior_glass_clear_LRB
                objectName: "projector_glass_exterior_glass_clear_LRB"
                x: 78.43907165527344
                y: 2153.321044921875
                z: -493.1163330078125
                source: "meshes/projector_glass_exterior_glass_clear_LRB_mesh.mesh"
                materials: [
                    glass_clear_material
                ]
            }
            Model {
                id: projector_frame_exterior_chrome_rough_LRB
                objectName: "projector_frame_exterior_chrome_rough_LRB"
                x: 78.43907165527344
                y: 2158.220947265625
                z: -493.1163330078125
                source: "meshes/projector_frame_exterior_chrome_rough_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: projector_frame_exterior_chrome_LRB
                objectName: "projector_frame_exterior_chrome_LRB"
                x: 78.43907165527344
                y: 2153.8564453125
                z: -493.1063232421875
                source: "meshes/projector_frame_exterior_chrome_LRB_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: projector_frame_line_exterior_black_gloss_LRB
                objectName: "projector_frame_line_exterior_black_gloss_LRB"
                x: 78.43907165527344
                y: 2147.660888671875
                z: -505.431396484375
                source: "meshes/projector_frame_line_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: projector_frame3_exterior_black_matt_LRB
                objectName: "projector_frame3_exterior_black_matt_LRB"
                x: 78.4390640258789
                y: 2121.896484375
                z: -493.08636474609375
                source: "meshes/projector_frame3_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: projector_frame_housing_exterior_black_matt_LRB
                objectName: "projector_frame_housing_exterior_black_matt_LRB"
                x: 78.4390640258789
                y: 2096.13623046875
                z: -493.0513916015625
                source: "meshes/projector_frame_housing_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: projector_frame2_001_exterior_chrome_LRB
                objectName: "projector_frame2_001_exterior_chrome_LRB"
                x: 78.43907165527344
                y: 2145.87646484375
                z: -493.111328125
                source: "meshes/projector_frame2_001_exterior_chrome_LRB_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: projector_led_inside_base_exterior_black_matt_LRB
                objectName: "projector_led_inside_base_exterior_black_matt_LRB"
                x: 78.4390640258789
                y: 2140.176025390625
                z: -493.111328125
                source: "meshes/projector_led_inside_base_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: projector_led_inisde_base2_exterior_chrome_LRB
                objectName: "projector_led_inisde_base2_exterior_chrome_LRB"
                x: 78.4390640258789
                y: 2143.696044921875
                z: -492.976318359375
                source: "meshes/projector_led_inisde_base2_exterior_chrome_LRB_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: projector_frame3_001_exterior_black_gloss_LRB
                objectName: "projector_frame3_001_exterior_black_gloss_LRB"
                x: 78.4390640258789
                y: 2139.2666015625
                z: -493.111328125
                source: "meshes/projector_frame3_001_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: projector_led_emissive_exterior_white_emissive_healight_2_LRB
                objectName: "projector_led_emissive_exterior_white_emissive_healight_2_LRB"
                x: 78.4390640258789
                y: 2145.16650390625
                z: -492.96630859375
                source: "meshes/projector_led_emissive_exterior_white_emissive_healight_2_LRB_mesh.mesh"
                materials: [
                    led_material
                ]
            }
            Model {
                id: sides_mirror_camera_exterior_black_gloss_LRB
                objectName: "sides_mirror_camera_exterior_black_gloss_LRB"
                x: 78.43890380859375
                y: 1072.461181640625
                z: -448.806396484375
                source: "meshes/sides_mirror_camera_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: sides_mirror_camera_glass_exterior_glass_clear_LRB
                objectName: "sides_mirror_camera_glass_exterior_glass_clear_LRB"
                x: 78.43890380859375
                y: 1071.701416015625
                z: -448.736328125
                source: "meshes/sides_mirror_camera_glass_exterior_glass_clear_LRB_mesh.mesh"
                materials: [
                    glass_clear_material
                ]
            }
            Model {
                id: tailights_glass_exterior_glass_clear_LRB
                objectName: "tailights_glass_exterior_glass_clear_LRB"
                x: 78.43840789794922
                y: -2216.82373046875
                z: -295.21630859375
                source: "meshes/tailights_glass_exterior_glass_clear_LRB_mesh.mesh"
                materials: [
                    glass_clear_material
                ]
            }
            Model {
                id: tailights_housing_exterior_black_matt_LRB
                objectName: "tailights_housing_exterior_black_matt_LRB"
                x: 78.43840789794922
                y: -2212.5185546875
                z: -296.05133056640625
                source: "meshes/tailights_housing_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: tailights_housing_exterior_black_gloss_LRB
                objectName: "tailights_housing_exterior_black_gloss_LRB"
                x: 78.43840789794922
                y: -2210.9033203125
                z: -297.29632568359375
                source: "meshes/tailights_housing_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: tailights_ring_big_exterior_red_emissive_LRB
                objectName: "tailights_ring_big_exterior_red_emissive_LRB"
                x: 78.43840026855469
                y: -2262.7236328125
                z: -298.9263916015625
                source: "meshes/tailights_ring_big_exterior_red_emissive_LRB_mesh.mesh"
                materials: [
                    red_illum_material
                ]
            }
            Model {
                id: tailights_rings_housing_exterior_black_matt_LRB
                objectName: "tailights_rings_housing_exterior_black_matt_LRB"
                x: 78.43840026855469
                y: -2277.37353515625
                z: -298.54132080078125
                source: "meshes/tailights_rings_housing_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: tailights_ring_small_exterior_red_emissive_LRB
                objectName: "tailights_ring_small_exterior_red_emissive_LRB"
                x: 78.43840026855469
                y: -2288.82861328125
                z: -298.081298828125
                source: "meshes/tailights_ring_small_exterior_red_emissive_LRB_mesh.mesh"
                materials: [
                    red_illum_material
                ]
            }
            Model {
                id: tailights_middle_lights_frame_exterior_black_matt_LRB
                objectName: "tailights_middle_lights_frame_exterior_black_matt_LRB"
                x: 78.43840026855469
                y: -2263.58837890625
                z: -302.246337890625
                source: "meshes/tailights_middle_lights_frame_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: tailights_middle_lights_glass_exterior_glass_clear_LRB
                objectName: "tailights_middle_lights_glass_exterior_glass_clear_LRB"
                x: 78.43840026855469
                y: -2292.8583984375
                z: -303.3863525390625
                source: "meshes/tailights_middle_lights_glass_exterior_glass_clear_LRB_mesh.mesh"
                materials: [
                    glass_clear_material
                ]
            }
            Model {
                id: tailights_middle_lights_emissive_exterior_chrome_rough_LRB
                objectName: "tailights_middle_lights_emissive_exterior_chrome_rough_LRB"
                x: 78.43840026855469
                y: -2282.638671875
                z: -303.601318359375
                source: "meshes/tailights_middle_lights_emissive_exterior_chrome_rough_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: text_xiaomi_ring_noMS_exterior_chrome_rough_LRB
                objectName: "Text_xiaomi_ring_noMS_exterior_chrome_rough_LRB"
                x: 78.41844177246094
                y: -2091.32861328125
                z: -318.45135498046875
                source: "meshes/text_xiaomi_ring_noMS_exterior_chrome_rough_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: rear_diffuser_reflector_housing_exterior_chrome_rough2_RED_LRB
                objectName: "rear_diffuser_reflector_housing_exterior_chrome_rough2_RED_LRB"
                x: 78.43839263916016
                y: -2340.8583984375
                z: -779.7013549804688
                source: "meshes/rear_diffuser_reflector_housing_exterior_chrome_rough2_RED_LRB_mesh.mesh"
                materials: [
                    reflectBumpB_material
                ]
            }
            Model {
                id: rear_side_vents_exterior_black_gloss_LRB
                objectName: "rear_side_vents_exterior_black_gloss_LRB"
                x: 78.43842315673828
                y: -2131.2734375
                z: -584.7113037109375
                source: "meshes/rear_side_vents_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: rear_side_vents_inside_exterior_black_matt_LRB
                objectName: "rear_side_vents_inside_exterior_black_matt_LRB"
                x: 78.43842315673828
                y: -2113.3037109375
                z: -610.9413452148438
                source: "meshes/rear_side_vents_inside_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: rear_bumper_camera_glass_exterior_glass_clear_LRB
                objectName: "rear_bumper_camera_glass_exterior_glass_clear_LRB"
                x: 78.42837524414062
                y: -2435.45361328125
                z: -594.6163330078125
                source: "meshes/rear_bumper_camera_glass_exterior_glass_clear_LRB_mesh.mesh"
                materials: [
                    glass_clear_material
                ]
            }
            Model {
                id: rear_bumper_camera_exterior_black_gloss_LRB
                objectName: "rear_bumper_camera_exterior_black_gloss_LRB"
                x: 78.42837524414062
                y: -2434.033935546875
                z: -594.2013549804688
                source: "meshes/rear_bumper_camera_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: roof_glass_rear_camera_exterior_black_gloss_LRB
                objectName: "roof_glass_rear_camera_exterior_black_gloss_LRB"
                x: 78.43853759765625
                y: -1357.02880859375
                z: 184.2835693359375
                source: "meshes/roof_glass_rear_camera_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: rear_roof_camera_glass_exterior_glass_clear_LRB
                objectName: "rear_roof_camera_glass_exterior_glass_clear_LRB"
                x: 78.42853546142578
                y: -1395.893798828125
                z: 185.1536865234375
                source: "meshes/rear_roof_camera_glass_exterior_glass_clear_LRB_mesh.mesh"
                materials: [
                    glass_clear_material
                ]
            }
            Model {
                id: rear_roof_camera_exterior_black_gloss_LRB
                objectName: "rear_roof_camera_exterior_black_gloss_LRB"
                x: 78.42353057861328
                y: -1393.52880859375
                z: 185.1336669921875
                source: "meshes/rear_roof_camera_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: roof_glass_radar_exterior_black_gloss_LRB
                objectName: "roof_glass_radar_exterior_black_gloss_LRB"
                x: 78.43878173828125
                y: 254.08123779296875
                z: 259.86865234375
                source: "meshes/roof_glass_radar_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: roof_seal_noMS_exterior_black_matt_LRB
                objectName: "roof_seal_noMS_exterior_black_matt_LRB"
                x: 78.42366790771484
                y: -426.47869873046875
                z: 20.318603515625
                source: "meshes/roof_seal_noMS_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: roof_seal_2_noMS_exterior_black_matt_LRB
                objectName: "roof_seal_2_noMS_exterior_black_matt_LRB"
                x: 78.43862915039062
                y: -778.6087646484375
                z: 117.963623046875
                source: "meshes/roof_seal_2_noMS_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: side_window_trim_exterior_black_gloss_LRB
                objectName: "side_window_trim_exterior_black_gloss_LRB"
                x: 78.43870544433594
                y: -253.07870483398438
                z: 35.7236328125
                source: "meshes/side_window_trim_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: curve_side_window_trim_seal_noMS_exterior_black_matt_LRB
                objectName: "Curve_side_window_trim_seal_noMS_exterior_black_matt_LRB"
                x: 78.43870544433594
                y: -238.30877685546875
                z: 29.108642578125
                source: "meshes/curve_side_window_trim_seal_noMS_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: wheel_arm_exterior_black_matt_LRB
                objectName: "wheel_arm_exterior_black_matt_LRB"
                x: 78.43875885009766
                y: 108.54620361328125
                z: -788.7313232421875
                source: "meshes/wheel_arm_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: windshield_base_exterior_black_matt_LRB
                objectName: "windshield_base_exterior_black_matt_LRB"
                x: 78.43891143798828
                y: 1121.936279296875
                z: -235.57635498046875
                source: "meshes/windshield_base_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: windshield_wiper_1_noMS_exterior_black_matt_LRB
                objectName: "windshield_wiper_1_noMS_exterior_black_matt_LRB"
                x: -155.27108764648438
                y: 1188.2462158203125
                z: -233.601318359375
                source: "meshes/windshield_wiper_1_noMS_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: windshield_wiper_2_noMS_exterior_black_matt_LRB
                objectName: "windshield_wiper_2_noMS_exterior_black_matt_LRB"
                x: 421.6988830566406
                y: 1175.856201171875
                z: -241.4462890625
                source: "meshes/windshield_wiper_2_noMS_exterior_black_matt_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: frontLogo_center_exterior_chrome_rough_LRB
                objectName: "frontLogo_center_exterior_chrome_rough_LRB"
                x: 78.5490951538086
                y: 2350.70654296875
                z: -425.9263916015625
                source: "meshes/frontLogo_center_exterior_chrome_rough_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: text_asdf_exterior_chrome_rough2_LRB
                objectName: "Text_asdf_exterior_chrome_rough2_LRB"
                x: -328.60662841796875
                y: -2410.86865234375
                z: -437.57635498046875
                source: "meshes/text_asdf_exterior_chrome_rough2_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: text_SU7_exterior_chrome_rough2_LRB
                objectName: "Text_SU7_exterior_chrome_rough2_LRB"
                x: 462.7934265136719
                y: -2415.92333984375
                z: -437.4063720703125
                source: "meshes/text_SU7_exterior_chrome_rough2_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: text_SU7_exterior_chrome_rough2_RED_LRB
                objectName: "Text_SU7_exterior_chrome_rough2_RED_LRB"
                x: 545.1134033203125
                y: -2403.343994140625
                z: -436.2113037109375
                source: "meshes/text_SU7_exterior_chrome_rough2_RED_LRB_mesh.mesh"
                materials: [
                    red_material
                ]
            }
            Model {
                id: text_Xiaomi_exterior_chrome_rough2_LRB
                objectName: "Text_Xiaomi_exterior_chrome_rough2_LRB"
                x: 85.67837524414062
                y: -2365.30615234375
                z: -250.2713623046875
                source: "meshes/text_Xiaomi_exterior_chrome_rough2_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: xiaomi_logo_text_front_exterior_black_gloss_LRB
                objectName: "xiaomi_logo_text_front_exterior_black_gloss_LRB"
                x: 78.65909576416016
                y: 2351.1015625
                z: -424.7513427734375
                source: "meshes/xiaomi_logo_text_front_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: stitches_fseats_design_001_noMS_stitches_LRB
                objectName: "stitches_fseats_design_001_noMS_stitches_LRB"
                x: 78.43875122070312
                y: 35.66123962402344
                z: -300.47137451171875
                source: "meshes/stitches_fseats_design_001_noMS_stitches_LRB_mesh.mesh"
                materials: [
                    seam_material
                ]
            }
            Model {
                id: stitches_fseats_design_004_noMS_stitches_LRB
                objectName: "stitches_fseats_design_004_noMS_stitches_LRB"
                x: 78.4386215209961
                y: -806.6936645507812
                z: -608.6663208007812
                source: "meshes/stitches_fseats_design_004_noMS_stitches_LRB_mesh.mesh"
                materials: [
                    seam_material
                ]
            }
            Model {
                id: stitches_fseats_design_007_noMS_stitches_LRB
                objectName: "stitches_fseats_design_007_noMS_stitches_LRB"
                x: 78.43855285644531
                y: -1259.65380859375
                z: -100.4263916015625
                source: "meshes/stitches_fseats_design_007_noMS_stitches_LRB_mesh.mesh"
                materials: [
                    seam_material
                ]
            }
            Model {
                id: stitches_fseats_design_009_noMS_stitches_LRB
                objectName: "stitches_fseats_design_009_noMS_stitches_LRB"
                x: 78.4385986328125
                y: -953.5987548828125
                z: -324.94635009765625
                source: "meshes/stitches_fseats_design_009_noMS_stitches_LRB_mesh.mesh"
                materials: [
                    seam_material
                ]
            }
            Model {
                id: stitches_fseats_design_008_noMS_stitches_LRB
                objectName: "stitches_fseats_design_008_noMS_stitches_LRB"
                x: 77.99887084960938
                y: 869.9412841796875
                z: -189.81134033203125
                source: "meshes/stitches_fseats_design_008_noMS_stitches_LRB_mesh.mesh"
                materials: [
                    seam_material
                ]
            }
            Model {
                id: stitches_fseats_design_010_noMS_stitches_LRB
                objectName: "stitches_fseats_design_010_noMS_stitches_LRB"
                x: 78.62385559082031
                y: 773.271240234375
                z: -277.56134033203125
                source: "meshes/stitches_fseats_design_010_noMS_stitches_LRB_mesh.mesh"
                materials: [
                    seam_material
                ]
            }
            Model {
                id: stitches_steeringWheel_stitches_steering_wheel_LRB
                objectName: "stitches_steeringWheel_stitches_steering_wheel_LRB"
                x: -372.99615478515625
                y: 604.6513671875
                z: -284.1513671875
                source: "meshes/stitches_steeringWheel_stitches_steering_wheel_LRB_mesh.mesh"
                materials: [
                    seamB_material
                ]
            }
            Model {
                id: interior_12_LRB
                objectName: "interior_12_LRB"
                x: 78.43876647949219
                y: 173.30123901367188
                z: -651.786376953125
                source: "meshes/interior_12_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_13_LRB
                objectName: "interior_13_LRB"
                x: 78.43875885009766
                y: 120.43124389648438
                z: -747.861328125
                source: "meshes/interior_13_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_14_LRB
                objectName: "interior_14_LRB"
                x: 78.438720703125
                y: -137.12376403808594
                z: -281.46636962890625
                source: "meshes/interior_14_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_15_LRB
                objectName: "interior_15_LRB"
                x: 78.438720703125
                y: -167.57376098632812
                z: -324.7713623046875
                source: "meshes/interior_15_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: interior_64_LRB
                objectName: "interior_64_LRB"
                x: 78.4386978149414
                y: -283.9287414550781
                z: 0.5587158203125
                source: "meshes/interior_64_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_65_LRB
                objectName: "interior_65_LRB"
                x: 78.4386978149414
                y: -299.6037292480469
                z: 18.8135986328125
                source: "meshes/interior_65_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_66_LRB
                objectName: "interior_66_LRB"
                x: 78.43876647949219
                y: 164.9862518310547
                z: -718.891357421875
                source: "meshes/interior_66_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_18_LRB
                objectName: "interior_18_LRB"
                x: 78.43870544433594
                y: -247.45880126953125
                z: 70.398681640625
                source: "meshes/interior_18_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_23_LRB
                objectName: "interior_23_LRB"
                x: 78.43869018554688
                y: -331.7037048339844
                z: -15.5914306640625
                source: "meshes/interior_23_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: interior_24_LRB
                objectName: "interior_24_LRB"
                x: 78.43869018554688
                y: -331.70379638671875
                z: -15.5914306640625
                source: "meshes/interior_24_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_63_LRB
                objectName: "interior_63_LRB"
                x: 78.43870544433594
                y: -263.9937438964844
                z: 59.108642578125
                source: "meshes/interior_63_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_80_LRB
                objectName: "interior_80_LRB"
                x: 78.43877410888672
                y: 194.1912384033203
                z: -761.4313354492188
                source: "meshes/interior_80_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_81_LRB
                objectName: "interior_81_LRB"
                x: 78.43875885009766
                y: 122.71124267578125
                z: -770.4913330078125
                source: "meshes/interior_81_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_82_LRB
                objectName: "interior_82_LRB"
                x: 78.43875885009766
                y: 122.71623992919922
                z: -770.4913330078125
                source: "meshes/interior_82_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_83_LRB
                objectName: "interior_83_LRB"
                x: 78.43877410888672
                y: 181.1862335205078
                z: -768.5313720703125
                source: "meshes/interior_83_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_84_LRB
                objectName: "interior_84_LRB"
                x: 78.43878173828125
                y: 258.51123046875
                z: -775.4813232421875
                source: "meshes/interior_84_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_85_LRB
                objectName: "interior_85_LRB"
                x: 78.43878173828125
                y: 246.0712432861328
                z: -751.4563598632812
                source: "meshes/interior_85_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_67_LRB
                objectName: "interior_67_LRB"
                x: 78.43856811523438
                y: -1148.8037109375
                z: -288.31640625
                source: "meshes/interior_67_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_62_LRB
                objectName: "interior_62_LRB"
                x: 78.4386215209961
                y: -787.6688232421875
                z: -614.1263427734375
                source: "meshes/interior_62_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_68_LRB
                objectName: "interior_68_LRB"
                x: 78.4386215209961
                y: -799.2237548828125
                z: -607.2713623046875
                source: "meshes/interior_68_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_71_LRB
                objectName: "interior_71_LRB"
                x: 78.43862915039062
                y: -784.103759765625
                z: -623.286376953125
                source: "meshes/interior_71_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_72_LRB
                objectName: "interior_72_LRB"
                x: 78.43856048583984
                y: -1225.628662109375
                z: -298.02630615234375
                source: "meshes/interior_72_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_17_LRB
                objectName: "interior_17_LRB"
                x: 78.43853759765625
                y: -1340.853759765625
                z: -95.7313232421875
                source: "meshes/interior_17_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_16_LRB
                objectName: "interior_16_LRB"
                x: 78.43859100341797
                y: -1034.90869140625
                z: -577.88134765625
                source: "meshes/interior_16_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_69_LRB
                objectName: "interior_69_LRB"
                x: 78.43855285644531
                y: -1266.933837890625
                z: -44.5814208984375
                source: "meshes/interior_69_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_73_LRB
                objectName: "interior_73_LRB"
                x: 78.43855285644531
                y: -1274.40869140625
                z: -45.84130859375
                source: "meshes/interior_73_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_70_LRB
                objectName: "interior_70_LRB"
                x: 78.43855285644531
                y: -1278.933837890625
                z: -59.4364013671875
                source: "meshes/interior_70_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_20_LRB
                objectName: "interior_20_LRB"
                x: 78.43862915039062
                y: -751.0887451171875
                z: -784.21630859375
                source: "meshes/interior_20_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: torus_interior_black_leather_LRB
                objectName: "Torus_interior_black_leather_LRB"
                x: -372.99615478515625
                y: 602.67138671875
                z: -285.851318359375
                source: "meshes/torus_interior_black_leather_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: interior_10_LRB
                objectName: "interior_10_LRB"
                x: -372.99615478515625
                y: 570.1363525390625
                z: -302.911376953125
                source: "meshes/interior_10_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
                Model {
                    id: icons_noMS_icons001_LRB
                    objectName: "icons_noMS_icons001_LRB"
                    x: 448.2599182128906
                    y: -515.9301147460938
                    z: 159.125
                    source: "meshes/icons_noMS_icons001_LRB_mesh.mesh"
                    materials: [
                        iconsDark_material
                    ]
                }
            }
            Model {
                id: interior_26_LRB
                objectName: "interior_26_LRB"
                x: -372.99615478515625
                y: 602.13134765625
                z: -291.7213134765625
                source: "meshes/interior_26_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: cylinder_noMS_interior_black_plastic_LRB
                objectName: "Cylinder_noMS_interior_black_plastic_LRB"
                x: -372.99615478515625
                y: 593.3114013671875
                z: -296.9163818359375
                source: "meshes/cylinder_noMS_interior_black_plastic_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: cylinder_001_interior_black_plastic_LRB
                objectName: "Cylinder_001_interior_black_plastic_LRB"
                x: -372.99615478515625
                y: 594.1763916015625
                z: -297.0263671875
                source: "meshes/cylinder_001_interior_black_plastic_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_27_LRB
                objectName: "interior_27_LRB"
                x: -372.99615478515625
                y: 582.9013671875
                z: -365.00634765625
                source: "meshes/interior_27_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_28_LRB
                objectName: "interior_28_LRB"
                x: -274.62115478515625
                y: 573.0963745117188
                z: -364.83636474609375
                source: "meshes/interior_28_LRB_mesh.mesh"
                materials: [
                    red_material
                ]
            }
            Model {
                id: interior_29_LRB
                objectName: "interior_29_LRB"
                x: -372.99615478515625
                y: 558.916259765625
                z: -294.66632080078125
                source: "meshes/interior_29_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: circle_001_interior_black_gloss_LRB
                objectName: "Circle_001_interior_black_gloss_LRB"
                x: -372.99615478515625
                y: 573.2763671875
                z: -365.46630859375
                source: "meshes/circle_001_interior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: text_Xiaomi_001_interior_chrome_rough_LRB
                objectName: "Text_Xiaomi_001_interior_chrome_rough_LRB"
                x: -373.25115966796875
                y: 561.186279296875
                z: -290.25634765625
                source: "meshes/text_Xiaomi_001_interior_chrome_rough_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_31_LRB
                objectName: "interior_31_LRB"
                x: -372.99615478515625
                y: 608.79638671875
                z: -301.3463134765625
                source: "meshes/interior_31_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_30_LRB
                objectName: "interior_30_LRB"
                x: -372.99114990234375
                y: 595.0563354492188
                z: -312.5762939453125
                source: "meshes/interior_30_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_32_LRB
                objectName: "interior_32_LRB"
                x: -372.99114990234375
                y: 632.9263916015625
                z: -318.5762939453125
                source: "meshes/interior_32_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: interior_33_LRB
                objectName: "interior_33_LRB"
                x: -372.99114990234375
                y: 588.4513549804688
                z: -417.8763427734375
                source: "meshes/interior_33_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_34_LRB
                objectName: "interior_34_LRB"
                x: -372.99615478515625
                y: 561.5213623046875
                z: -442.3013916015625
                source: "meshes/interior_34_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: sphere_interior_black_plastic_LRB
                objectName: "Sphere_interior_black_plastic_LRB"
                x: -296.3111572265625
                y: 687.3214111328125
                z: -340.9713134765625
                source: "meshes/sphere_interior_black_plastic_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_40_LRB
                objectName: "interior_40_LRB"
                x: -372.99615478515625
                y: 744.6513671875
                z: -363.71136474609375
                source: "meshes/interior_40_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: interior_42_LRB
                objectName: "interior_42_LRB"
                x: -372.99114990234375
                y: 672.9363403320312
                z: -302.29132080078125
                source: "meshes/interior_42_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_43_LRB
                objectName: "interior_43_LRB"
                x: -372.99114990234375
                y: 671.2213134765625
                z: -281.68133544921875
                source: "meshes/interior_43_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: mesh_body_001_interior_black_leather_LRB
                objectName: "mesh_body_001_interior_black_leather_LRB"
                x: 79.31388854980469
                y: 948.0963745117188
                z: -186.28631591796875
                source: "meshes/mesh_body_001_interior_black_leather_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: plane_interior_white_leather_LRB
                objectName: "Plane_interior_white_leather_LRB"
                x: 78.44389343261719
                y: 959.9813842773438
                z: -456.476318359375
                source: "meshes/plane_interior_white_leather_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_00_LRB
                objectName: "interior_00_LRB"
                x: 78.43885803222656
                y: 763.76123046875
                z: -272.9713134765625
                source: "meshes/interior_00_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: interior_01_LRB
                objectName: "interior_01_LRB"
                x: 78.43885803222656
                y: 762.7161865234375
                z: -256.71636962890625
                source: "meshes/interior_01_LRB_mesh.mesh"
                materials: [
                    intD_material
                ]
            }
            Model {
                id: interior_08_LRB
                objectName: "interior_08_LRB"
                x: -348.5611572265625
                y: 896.911376953125
                z: -233.746337890625
                source: "meshes/interior_08_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: interior_09_LRB
                objectName: "interior_09_LRB"
                x: -377.34619140625
                y: 850.9263916015625
                z: -234.13134765625
                source: "meshes/interior_09_LRB_mesh.mesh"
                materials: [
                    intD_material
                ]
            }
            Model {
                id: interior_35_LRB
                objectName: "interior_35_LRB"
                x: 78.43885803222656
                y: 758.4862060546875
                z: -271.661376953125
                source: "meshes/interior_35_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_07_LRB
                objectName: "interior_07_LRB"
                x: 78.31887817382812
                y: 863.2113647460938
                z: -270.6463623046875
                source: "meshes/interior_07_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: interior_36_LRB
                objectName: "interior_36_LRB"
                x: -274.76116943359375
                y: 788.161376953125
                z: -317.5963134765625
                source: "meshes/interior_36_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_37_LRB
                objectName: "interior_37_LRB"
                x: 431.63885498046875
                y: 788.1612548828125
                z: -317.5963134765625
                source: "meshes/interior_37_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_38_LRB
                objectName: "interior_38_LRB"
                x: 78.4388656616211
                y: 797.5162353515625
                z: -316.06134033203125
                source: "meshes/interior_38_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_39_LRB
                objectName: "interior_39_LRB"
                x: 78.22883605957031
                y: 743.1112060546875
                z: -327.2213134765625
                source: "meshes/interior_39_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_41_LRB
                objectName: "interior_41_LRB"
                x: -375.27117919921875
                y: 854.9513549804688
                z: -405.2713623046875
                source: "meshes/interior_41_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_61_LRB
                objectName: "interior_61_LRB"
                x: 78.4388656616211
                y: 816.80126953125
                z: -225.361328125
                source: "meshes/interior_61_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_88_LRB
                objectName: "interior_88_LRB"
                x: 78.43885803222656
                y: 772.8162841796875
                z: -370.07635498046875
                source: "meshes/interior_88_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_92_LRB
                objectName: "interior_92_LRB"
                x: 78.4388656616211
                y: 793.9312744140625
                z: -304.56634521484375
                source: "meshes/interior_92_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: circle_interior_black_gloss_LRB
                objectName: "Circle_interior_black_gloss_LRB"
                x: 78.43885040283203
                y: 716.4862060546875
                z: -398.44635009765625
                source: "meshes/circle_interior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: circle_002_interior_chrome_rough_LRB
                objectName: "Circle_002_interior_chrome_rough_LRB"
                x: 78.43885040283203
                y: 716.4862060546875
                z: -398.44635009765625
                source: "meshes/circle_002_interior_chrome_rough_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: circle_003_interior_black_gloss_LRB
                objectName: "Circle_003_interior_black_gloss_LRB"
                x: 78.43885040283203
                y: 716.4412841796875
                z: -398.43133544921875
                source: "meshes/circle_003_interior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: circle_004_interior_black_gloss_LRB
                objectName: "Circle_004_interior_black_gloss_LRB"
                x: 78.4388656616211
                y: 809.5262451171875
                z: -106.3114013671875
                source: "meshes/circle_004_interior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: circle_005_interior_chrome_rough_LRB
                objectName: "Circle_005_interior_chrome_rough_LRB"
                x: 78.4388656616211
                y: 802.8712158203125
                z: -104.431396484375
                source: "meshes/circle_005_interior_chrome_rough_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: circle_006_interior_chrome_rough_LRB
                objectName: "Circle_006_interior_chrome_rough_LRB"
                x: 78.43885803222656
                y: 746.9912109375
                z: -257.6463623046875
                source: "meshes/circle_006_interior_chrome_rough_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_04_LRB
                objectName: "interior_04_LRB"
                x: 78.4388198852539
                y: 490.9362487792969
                z: -436.5213623046875
                source: "meshes/interior_04_LRB_mesh.mesh"
                materials: [
                    wood_material
                ]
            }
            Model {
                id: interior_25_LRB
                objectName: "interior_25_LRB"
                x: 120.83879852294922
                y: 389.8912658691406
                z: -464.2213134765625
                source: "meshes/interior_25_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_44_LRB
                objectName: "interior_44_LRB"
                x: 120.83879852294922
                y: 389.8962707519531
                z: -429.6962890625
                source: "meshes/interior_44_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_45_LRB
                objectName: "interior_45_LRB"
                x: 120.7938003540039
                y: 389.93121337890625
                z: -474.7713623046875
                source: "meshes/interior_45_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_48_LRB
                objectName: "interior_48_LRB"
                x: 20.2838134765625
                y: 389.8912658691406
                z: -423.66632080078125
                source: "meshes/interior_48_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_47_LRB
                objectName: "interior_47_LRB"
                x: 20.2838134765625
                y: 471.0262756347656
                z: -421.2012939453125
                source: "meshes/interior_47_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_49_LRB
                objectName: "interior_49_LRB"
                x: 20.968795776367188
                y: 361.1112060546875
                z: -426.43133544921875
                source: "meshes/interior_49_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: interior_50_LRB
                objectName: "interior_50_LRB"
                x: 23.56878662109375
                y: 361.1162109375
                z: -421.8363037109375
                source: "meshes/interior_50_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_46_LRB
                objectName: "interior_46_LRB"
                x: 78.4388198852539
                y: 489.106201171875
                z: -447.5113525390625
                source: "meshes/interior_46_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_02_LRB
                objectName: "interior_02_LRB"
                x: 78.43873596191406
                y: -51.383758544921875
                z: -483.1962890625
                source: "meshes/interior_02_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_21_LRB
                objectName: "interior_21_LRB"
                x: 78.4386978149414
                y: -302.3687438964844
                z: -494.7313232421875
                source: "meshes/interior_21_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_51_LRB
                objectName: "interior_51_LRB"
                x: 78.43882751464844
                y: 574.166259765625
                z: -503.31634521484375
                source: "meshes/interior_51_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: interior_52_LRB
                objectName: "interior_52_LRB"
                x: 78.43876647949219
                y: 167.58624267578125
                z: -440.9613037109375
                source: "meshes/interior_52_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_53_LRB
                objectName: "interior_53_LRB"
                x: 78.4386978149414
                y: -320.7737121582031
                z: -485.08636474609375
                source: "meshes/interior_53_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: interior_54_LRB
                objectName: "interior_54_LRB"
                x: 78.4386978149414
                y: -298.9887390136719
                z: -491.5263671875
                source: "meshes/interior_54_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_55_LRB
                objectName: "interior_55_LRB"
                x: 78.4386978149414
                y: -323.4837341308594
                z: -484.496337890625
                source: "meshes/interior_55_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_56_LRB
                objectName: "interior_56_LRB"
                x: 78.4386978149414
                y: -318.5387268066406
                z: -487.411376953125
                source: "meshes/interior_56_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_58_LRB
                objectName: "interior_58_LRB"
                x: 78.4386978149414
                y: -320.8887023925781
                z: -487.0013427734375
                source: "meshes/interior_58_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_57_LRB
                objectName: "interior_57_LRB"
                x: 78.43869018554688
                y: -335.0487365722656
                z: -482.516357421875
                source: "meshes/interior_57_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: interior_59_LRB
                objectName: "interior_59_LRB"
                x: 78.11869812011719
                y: -292.2337341308594
                z: -490.8763427734375
                source: "meshes/interior_59_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_06_LRB
                objectName: "interior_06_LRB"
                x: 78.43878173828125
                y: 268.6212158203125
                z: -680.0513305664062
                source: "meshes/interior_06_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_05_LRB
                objectName: "interior_05_LRB"
                x: 78.4386978149414
                y: -324.7637939453125
                z: -553.0763549804688
                source: "meshes/interior_05_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: interior_60_LRB
                objectName: "interior_60_LRB"
                x: 78.43881225585938
                y: 472.8312683105469
                z: -739.13134765625
                source: "meshes/interior_60_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_22_LRB
                objectName: "interior_22_LRB"
                x: 78.4386978149414
                y: -294.82379150390625
                z: -777.9013671875
                source: "meshes/interior_22_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_93_LRB
                objectName: "interior_93_LRB"
                x: 78.43885040283203
                y: 719.376220703125
                z: -400.0113525390625
                source: "meshes/interior_93_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: seatbelt_part_004_interior_black_plastic_LRB
                objectName: "seatbelt_part_004_interior_black_plastic_LRB"
                x: 86.33358001708984
                y: -1066.388671875
                z: -591.266357421875
                source: "meshes/seatbelt_part_004_interior_black_plastic_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: seatbelt_part_004_interior_plastic_red_LRB
                objectName: "seatbelt_part_004_interior_plastic_red_LRB"
                x: 86.33859252929688
                y: -1009.558837890625
                z: -553.5513305664062
                source: "meshes/seatbelt_part_004_interior_plastic_red_LRB_mesh.mesh"
                materials: [
                    red_material
                ]
            }
            Model {
                id: seatbelt_part_003_interior_black_plastic_LRB
                objectName: "seatbelt_part_003_interior_black_plastic_LRB"
                x: -61.75139617919922
                y: -998.7237548828125
                z: -504.3262939453125
                source: "meshes/seatbelt_part_003_interior_black_plastic_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: seatbelt_part_003_interior_chrome_rough_LRB
                objectName: "seatbelt_part_003_interior_chrome_rough_LRB"
                x: -60.51140594482422
                y: -995.09375
                z: -534.5613403320312
                source: "meshes/seatbelt_part_003_interior_chrome_rough_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: seatbelt_part_002_interior_black_plastic_LRB
                objectName: "seatbelt_part_002_interior_black_plastic_LRB"
                x: 78.22872924804688
                y: -148.42874145507812
                z: -368.9163818359375
                source: "meshes/seatbelt_part_002_interior_black_plastic_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: seatbelt_part_002_interior_chrome_rough_LRB
                objectName: "seatbelt_part_002_interior_chrome_rough_LRB"
                x: 78.22372436523438
                y: -146.64877319335938
                z: -396.236328125
                source: "meshes/seatbelt_part_002_interior_chrome_rough_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: seatbelt_part_001_interior_black_plastic_LRB
                objectName: "seatbelt_part_001_interior_black_plastic_LRB"
                x: 78.22856903076172
                y: -989.2337646484375
                z: -497.2313232421875
                source: "meshes/seatbelt_part_001_interior_black_plastic_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: seatbelt_part_001_cupra_interior_chrome_LRB
                objectName: "seatbelt_part_001_cupra_interior_chrome_LRB"
                x: 78.22860717773438
                y: -980.5238037109375
                z: -526.9463500976562
                source: "meshes/seatbelt_part_001_cupra_interior_chrome_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: seatbelt_part_interior_black_plastic_LRB
                objectName: "seatbelt_part_interior_black_plastic_LRB"
                x: 78.2237548828125
                y: 48.831241607666016
                z: -632.746337890625
                source: "meshes/seatbelt_part_interior_black_plastic_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: seatbelt_part_interior_plastic_red_LRB
                objectName: "seatbelt_part_interior_plastic_red_LRB"
                x: 78.22374725341797
                y: 54.23624038696289
                z: -555.891357421875
                source: "meshes/seatbelt_part_interior_plastic_red_LRB_mesh.mesh"
                materials: [
                    red_material
                ]
            }
            Model {
                id: seatbelt_f_002_seatbelt_LRB
                objectName: "seatbelt_f_002_seatbelt_LRB"
                x: -63.53643035888672
                y: -1210.048828125
                z: -305.681396484375
                source: "meshes/seatbelt_f_002_seatbelt_LRB_mesh.mesh"
                materials: [
                    seatbelt_material
                ]
            }
            Model {
                id: seatbelt_f_seatbelt_LRB
                objectName: "seatbelt_f_seatbelt_LRB"
                x: 78.22371673583984
                y: -179.13876342773438
                z: -412.51629638671875
                source: "meshes/seatbelt_f_seatbelt_LRB_mesh.mesh"
                materials: [
                    seatbelt_material
                ]
            }
            Model {
                id: plasticInt_interiorRearMirror_001_interior_black_plastic_LRB
                objectName: "plasticInt_interiorRearMirror_001_interior_black_plastic_LRB"
                x: 78.22881317138672
                y: 452.4362487792969
                z: 143.99365234375
                source: "meshes/plasticInt_interiorRearMirror_001_interior_black_plastic_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: plasticInt_interiorRearMirror_interior_black_plastic_LRB
                objectName: "plasticInt_interiorRearMirror_interior_black_plastic_LRB"
                x: 74.268798828125
                y: 381.1912536621094
                z: 94.7236328125
                source: "meshes/plasticInt_interiorRearMirror_interior_black_plastic_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: chrome_interiorRearMirror_interior_chrome_rough_LRB
                objectName: "chrome_interiorRearMirror_interior_chrome_rough_LRB"
                x: 73.2637939453125
                y: 353.1412658691406
                z: 95.753662109375
                source: "meshes/chrome_interiorRearMirror_interior_chrome_rough_LRB_mesh.mesh"
                materials: [
                    reflect_material
                ]
            }
            Model {
                id: seatbelt_f_001_seatbelt_LRB
                objectName: "seatbelt_f_001_seatbelt_LRB"
                x: 78.22356414794922
                y: -1193.52880859375
                z: -296.7213134765625
                source: "meshes/seatbelt_f_001_seatbelt_LRB_mesh.mesh"
                materials: [
                    seatbelt_material
                ]
            }
            Model {
                id: interior_86_LRB
                objectName: "interior_86_LRB"
                x: 78.43881225585938
                y: 446.5312805175781
                z: 108.3536376953125
                source: "meshes/interior_86_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: headlamp_interior_black_plastic_LRB
                objectName: "headlamp_interior_black_plastic_LRB"
                x: 78.68878173828125
                y: 264.271240234375
                z: 164.013671875
                source: "meshes/headlamp_interior_black_plastic_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: headlamp_buttons_interior_black_plastic_LRB
                objectName: "headlamp_buttons_interior_black_plastic_LRB"
                x: 78.68878173828125
                y: 264.021240234375
                z: 160.7635498046875
                source: "meshes/headlamp_buttons_interior_black_plastic_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: headlamp_glass_exterior_glass_clear_LRB
                objectName: "headlamp_glass_exterior_glass_clear_LRB"
                x: 78.68878173828125
                y: 263.83123779296875
                z: 159.9686279296875
                source: "meshes/headlamp_glass_exterior_glass_clear_LRB_mesh.mesh"
                materials: [
                    glass_clear_material
                ]
            }
            Model {
                id: headlamp_001_interior_chrome_rough_LRB
                objectName: "headlamp_001_interior_chrome_rough_LRB"
                x: 78.68878173828125
                y: 263.83624267578125
                z: 162.2037353515625
                source: "meshes/headlamp_001_interior_chrome_rough_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_03_LRB
                objectName: "interior_03_LRB"
                x: 78.43877410888672
                y: 186.42620849609375
                z: -723.4513549804688
                source: "meshes/interior_03_LRB_mesh.mesh"
                materials: [
                    carpet_material
                ]
            }
            Model {
                id: interior_19_LRB
                objectName: "interior_19_LRB"
                x: 78.4385757446289
                y: -1090.503662109375
                z: -315.0213623046875
                source: "meshes/interior_19_LRB_mesh.mesh"
                materials: [
                    leatherB_material
                ]
            }
            Model {
                id: mesh_body_005_interior_black_leather_LRB
                objectName: "mesh_body_005_interior_black_leather_LRB"
                x: 78.43855285644531
                y: -1257.36865234375
                z: -95.4063720703125
                source: "meshes/mesh_body_005_interior_black_leather_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: interior_75_LRB
                objectName: "interior_75_LRB"
                x: 78.43849182128906
                y: -1664.53369140625
                z: -100.7813720703125
                source: "meshes/interior_75_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: roof_glass_frame_001_interior_black_leather_LRB
                objectName: "roof_glass_frame_001_interior_black_leather_LRB"
                x: 78.43850708007812
                y: -1568.128662109375
                z: -5.6363525390625
                source: "meshes/roof_glass_frame_001_interior_black_leather_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: interior_76_LRB
                objectName: "interior_76_LRB"
                x: 78.43858337402344
                y: -1079.8387451171875
                z: 14.5836181640625
                source: "meshes/interior_76_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: roof_glass_frame_002_interior_black_leather_LRB
                objectName: "roof_glass_frame_002_interior_black_leather_LRB"
                x: 78.4387435913086
                y: 4.90625
                z: -355.58135986328125
                source: "meshes/roof_glass_frame_002_interior_black_leather_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: roof_glass_frame_002_interior_black_leather_001_LRB
                objectName: "roof_glass_frame_002_interior_black_leather_001_LRB"
                x: 78.43891143798828
                y: 1122.436279296875
                z: -554.476318359375
                source: "meshes/roof_glass_frame_002_interior_black_leather_001_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_11_LRB
                objectName: "interior_11_LRB"
                x: -298.8260803222656
                y: 1101.826171875
                z: -741.5663452148438
                source: "meshes/interior_11_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_74_LRB
                objectName: "interior_74_LRB"
                x: -590.1910400390625
                y: 1112.7862548828125
                z: -769.861328125
                source: "meshes/interior_74_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_77_LRB
                objectName: "interior_77_LRB"
                x: -297.8360900878906
                y: 1096.581298828125
                z: -736.5463256835938
                source: "meshes/interior_77_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_78_LRB
                objectName: "interior_78_LRB"
                x: -352.486083984375
                y: 1150.9761962890625
                z: -634.736328125
                source: "meshes/interior_78_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: interior_79_LRB
                objectName: "interior_79_LRB"
                x: -195.03610229492188
                y: 1073.09130859375
                z: -808.2413330078125
                source: "meshes/interior_79_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: seat_rail_interior_black_plastic_LRB
                objectName: "seat_rail_interior_black_plastic_LRB"
                x: 78.43875885009766
                y: 123.76624298095703
                z: -866.121337890625
                source: "meshes/seat_rail_interior_black_plastic_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: roof_glass_frame_003_interior_black_leather_LRB
                objectName: "roof_glass_frame_003_interior_black_leather_LRB"
                x: 78.43878173828125
                y: 269.4162292480469
                z: 206.4385986328125
                source: "meshes/roof_glass_frame_003_interior_black_leather_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: interior_87_LRB
                objectName: "interior_87_LRB"
                x: 78.43873596191406
                y: -44.758758544921875
                z: 218.9437255859375
                source: "meshes/interior_87_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: interior_89_LRB
                objectName: "interior_89_LRB"
                x: 78.43873596191406
                y: -44.633758544921875
                z: 219.0235595703125
                source: "meshes/interior_89_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: interior_90_LRB
                objectName: "interior_90_LRB"
                x: 78.43859100341797
                y: -1033.0037841796875
                z: 150.878662109375
                source: "meshes/interior_90_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: interior_91_LRB
                objectName: "interior_91_LRB"
                x: 78.43859100341797
                y: -1032.5037841796875
                z: 150.9786376953125
                source: "meshes/interior_91_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: roof_glass_frame_004_interior_black_leather_LRB
                objectName: "roof_glass_frame_004_interior_black_leather_LRB"
                x: 78.43870544433594
                y: -232.79873657226562
                z: 25.8536376953125
                source: "meshes/roof_glass_frame_004_interior_black_leather_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: body_frame_exterior_carpaint_LRB
                objectName: "body_frame_exterior_carpaint_LRB"
                x: 78.43871307373047
                y: -196.85873413085938
                z: -325.18133544921875
                source: "meshes/body_frame_exterior_carpaint_LRB_mesh.mesh"
                materials: [
                    carpaint_material
                ]
            }
            Model {
                id: carPaint_doors_r_003_Curve_001_noMS_interior_black_leather_LRB
                objectName: "carPaint_doors_r_003_Curve_001_noMS_interior_black_leather_LRB"
                x: 78.22869110107422
                y: -226.04873657226562
                z: -302.67633056640625
                source: "meshes/carPaint_doors_r_003_Curve_001_noMS_interior_black_leather_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: roof_glass_frame_interior_LRB
                objectName: "roof_glass_frame_interior_LRB"
                x: 78.43870544433594
                y: -257.1087646484375
                z: 56.888671875
                source: "meshes/roof_glass_frame_interior_LRB_mesh.mesh"
                materials: [
                    leatherA_material
                ]
            }
            Model {
                id: side_window_pillars_exterior_black_gloss_LRB
                objectName: "side_window_pillars_exterior_black_gloss_LRB"
                x: 78.43865203857422
                y: -596.6336059570312
                z: 37.1885986328125
                source: "meshes/side_window_pillars_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    plasticGlossy_material
                ]
            }
            Model {
                id: door_strike_plate_exterior_chrome_rough_LRB
                objectName: "door_strike_plate_exterior_chrome_rough_LRB"
                x: 78.22866821289062
                y: -536.6486206054688
                z: -453.9713134765625
                source: "meshes/door_strike_plate_exterior_chrome_rough_LRB_mesh.mesh"
                materials: [
                    silver_material
                ]
            }
            Model {
                id: roof_glass_002_exterior_black_gloss_LRB
                objectName: "roof_glass_002_exterior_black_gloss_LRB"
                x: 78.43885803222656
                y: 766.4913940429688
                z: -16.7723388671875
                source: "meshes/roof_glass_002_exterior_black_gloss_LRB_mesh.mesh"
                materials: [
                    black_material
                ]
            }
            Model {
                id: hinge_bolts_001_exterior_carpaint_LRB
                objectName: "hinge_bolts_001_exterior_carpaint_LRB"
                x: 78.43888092041016
                y: 920.8163452148438
                z: -557.351318359375
                source: "meshes/hinge_bolts_001_exterior_carpaint_LRB_mesh.mesh"
                materials: [
                    carpaint_material
                ]
            }
            Model {
                id: hinge_001_exterior_carpaint_LRB
                objectName: "hinge_001_exterior_carpaint_LRB"
                x: 78.43888092041016
                y: 918.92626953125
                z: -553.5813598632812
                source: "meshes/hinge_001_exterior_carpaint_LRB_mesh.mesh"
                materials: [
                    carpaint_material
                ]
            }
            Model {
                id: hinge_bolts_2_002_exterior_carpaint_LRB
                objectName: "hinge_bolts_2_002_exterior_carpaint_LRB"
                x: 78.43871307373047
                y: -227.84872436523438
                z: -554.4063110351562
                source: "meshes/hinge_bolts_2_002_exterior_carpaint_LRB_mesh.mesh"
                materials: [
                    carpaint_material
                ]
            }
            Model {
                id: hinge_bolts_002_exterior_carpaint_LRB
                objectName: "hinge_bolts_002_exterior_carpaint_LRB"
                x: 78.43871307373047
                y: -205.80874633789062
                z: -557.351318359375
                source: "meshes/hinge_bolts_002_exterior_carpaint_LRB_mesh.mesh"
                materials: [
                    carpaint_material
                ]
            }
            Model {
                id: hinge_2_002_exterior_carpaint_LRB
                objectName: "hinge_2_002_exterior_carpaint_LRB"
                x: 78.43871307373047
                y: -225.50375366210938
                z: -554.0713500976562
                source: "meshes/hinge_2_002_exterior_carpaint_LRB_mesh.mesh"
                materials: [
                    carpaint_material
                ]
            }
            Model {
                id: hinge_002_exterior_carpaint_LRB
                objectName: "hinge_002_exterior_carpaint_LRB"
                x: 78.43871307373047
                y: -207.748779296875
                z: -554.141357421875
                source: "meshes/hinge_002_exterior_carpaint_LRB_mesh.mesh"
                materials: [
                    carpaint_material
                ]
            }
            Model {
                id: icons_noMS_icons_LRB
                objectName: "icons_noMS_icons_LRB"
                x: 75.26376342773438
                y: 54.20623779296875
                z: -143.786376953125
                source: "meshes/icons_noMS_icons_LRB_mesh.mesh"
                materials: [
                    icons_material
                ]
            }
            Model {
                id: window_rs_LRB
                objectName: "window_rs_LRB"
                x: 78.4386978149414
                y: -303.2536926269531
                z: 31.3236083984375
                source: "meshes/window_rs_LRB_mesh.mesh"
                materials: [
                    glass_darkB_material
                ]
            }
            Model {
                id: curve_side_window_trim_seal_noMS_exterior_black_matt001_LRB
                objectName: "Curve_side_window_trim_seal_noMS_exterior_black_matt001_LRB"
                x: 78.43870544433594
                y: -238.30877685546875
                z: 29.108642578125
                source: "meshes/curve_side_window_trim_seal_noMS_exterior_black_matt001_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: seal_LRB
                objectName: "seal_LRB"
                x: 78.43870544433594
                y: -241.84872436523438
                z: 28.5587158203125
                source: "meshes/seal_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: black_roof_glass_frame_interior_LRB
                objectName: "black_roof_glass_frame_interior_LRB"
                x: 78.43870544433594
                y: -257.1087646484375
                z: 56.888671875
                source: "meshes/black_roof_glass_frame_interior_LRB_mesh.mesh"
                materials: [
                    black_material
                ]
            }
            Model {
                id: bumper_r_LRB
                objectName: "bumper_r_LRB"
                x: 78.43875122070312
                y: 48.7412109375
                z: -794.5013427734375
                source: "meshes/bumper_r_LRB_mesh.mesh"
                materials: [
                    carpaint_material
                ]
            }
            Model {
                id: tire_002_LRW
                objectName: "tire_002_LRW"
                x: 911.9509887695312
                y: -1404.45361328125
                z: -811.9376220703125
                source: "meshes/tire_002_LRW_mesh.mesh"
                materials: [
                    tire_material
                ]
            }
            Model {
                id: tire_003_LRW
                objectName: "tire_003_LRW"
                x: 908.1531372070312
                y: 1623.76806640625
                z: -810.4058837890625
                source: "meshes/tire_003_LRW_mesh.mesh"
                materials: [
                    tire_material
                ]
            }
            Model {
                id: brake_disk_002_LRW
                objectName: "brake_disk_002_LRW"
                x: 924.5481567382812
                y: 1623.7733154296875
                z: -810.4058837890625
                source: "meshes/brake_disk_002_LRW_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: brake_caliper_front_brake_hub001_LRW
                objectName: "brake_caliper_front_brake_hub001_LRW"
                x: 903.7688598632812
                y: 1472.586181640625
                z: -810.4058837890625
                source: "meshes/brake_caliper_front_brake_hub001_LRW_mesh.mesh"
                materials: [
                    brakeCaliper_material
                ]
            }
            Model {
                id: brake_disk_covers_front_exterior_chrome_rough2_003_LRW
                objectName: "brake_disk_covers_front_exterior_chrome_rough2_003_LRW"
                x: 889.3110961914062
                y: 1677.264404296875
                z: -810.400390625
                source: "meshes/brake_disk_covers_front_exterior_chrome_rough2_003_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: brake_caliper_bolt_exterior_black_matt001_LRW
                objectName: "brake_caliper_bolt_exterior_black_matt001_LRW"
                x: 938.4839477539062
                y: 1481.0166015625
                z: -810.4058837890625
                source: "meshes/brake_caliper_bolt_exterior_black_matt001_LRW_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: brake_caliper_nut_noMS_exterior_chrome_rough003_LRW
                objectName: "brake_caliper_nut_noMS_exterior_chrome_rough003_LRW"
                x: 938.7061157226562
                y: 1480.85009765625
                z: -810.4058837890625
                source: "meshes/brake_caliper_nut_noMS_exterior_chrome_rough003_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: rimDark_002_LRW
                objectName: "rimDark_002_LRW"
                x: 1012.5098266601562
                y: 1623.76806640625
                z: -810.4058837890625
                source: "meshes/rimDark_002_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: rimBright_002_LRW
                objectName: "rimBright_002_LRW"
                x: 1019.6914672851562
                y: 1623.7734375
                z: -812.2762451171875
                source: "meshes/rimBright_002_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: logo_wheel_002_LRW
                objectName: "logo_wheel_002_LRW"
                x: 990.8203735351562
                y: 1623.7734375
                z: -810.4058837890625
                source: "meshes/logo_wheel_002_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: logo_wheel_000_silver002_LRW
                objectName: "logo_wheel_000_silver002_LRW"
                x: 991.0315551757812
                y: 1623.76806640625
                z: -810.400390625
                source: "meshes/logo_wheel_000_silver002_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: logo_wheel_000_rimDark002_LRW
                objectName: "logo_wheel_000_rimDark002_LRW"
                x: 992.2691040039062
                y: 1623.8348388671875
                z: -810.3614501953125
                source: "meshes/logo_wheel_000_rimDark002_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: rimDarkIn_002_LRW
                objectName: "rimDarkIn_002_LRW"
                x: 891.6531372070312
                y: 1623.7679443359375
                z: -810.4058837890625
                source: "meshes/rimDarkIn_002_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: bolts_002_LRW
                objectName: "bolts_002_LRW"
                x: 987.6179809570312
                y: 1623.8402099609375
                z: -816.1334228515625
                source: "meshes/bolts_002_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: vavle_noMS_002_LRW
                objectName: "vavle_noMS_002_LRW"
                x: 999.3897094726562
                y: 1623.7625732421875
                z: -1066.4383544921875
                source: "meshes/vavle_noMS_002_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: brake_disk_003_LRW
                objectName: "brake_disk_003_LRW"
                x: 928.3460083007812
                y: -1404.4537353515625
                z: -811.9375
                source: "meshes/brake_disk_003_LRW_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: brake_disk_covers_front_exterior_chrome_rough2_004_LRW
                objectName: "brake_disk_covers_front_exterior_chrome_rough2_004_LRW"
                x: 893.1091918945312
                y: -1420.654052734375
                z: -811.9320068359375
                source: "meshes/brake_disk_covers_front_exterior_chrome_rough2_004_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: brake_caliper_r001_LRW
                objectName: "brake_caliper_r001_LRW"
                x: 896.9387817382812
                y: -1238.4307861328125
                z: -809.0570068359375
                source: "meshes/brake_caliper_r001_LRW_mesh.mesh"
                materials: [
                    brakeCaliper_material
                ]
            }
            Model {
                id: brake_pad_r001_LRW
                objectName: "brake_pad_r001_LRW"
                x: 928.4348754882812
                y: -1229.21240234375
                z: -809.323486328125
                source: "meshes/brake_pad_r001_LRW_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: rimDark_003_LRW
                objectName: "rimDark_003_LRW"
                x: 1016.3076782226562
                y: -1404.45361328125
                z: -811.9376220703125
                source: "meshes/rimDark_003_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: rimBright_003_LRW
                objectName: "rimBright_003_LRW"
                x: 1023.4893188476562
                y: -1404.4482421875
                z: -813.807861328125
                source: "meshes/rimBright_003_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: logo_wheel_003_LRW
                objectName: "logo_wheel_003_LRW"
                x: 994.6182250976562
                y: -1404.4482421875
                z: -811.9376220703125
                source: "meshes/logo_wheel_003_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: logo_wheel_000_silver003_LRW
                objectName: "logo_wheel_000_silver003_LRW"
                x: 994.8294067382812
                y: -1404.45361328125
                z: -811.93212890625
                source: "meshes/logo_wheel_000_silver003_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: logo_wheel_000_rimDark003_LRW
                objectName: "logo_wheel_000_rimDark003_LRW"
                x: 996.0669555664062
                y: -1404.386962890625
                z: -811.8931884765625
                source: "meshes/logo_wheel_000_rimDark003_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: rimDarkIn_003_LRW
                objectName: "rimDarkIn_003_LRW"
                x: 895.4509887695312
                y: -1404.453857421875
                z: -811.9376220703125
                source: "meshes/rimDarkIn_003_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: bolts_003_LRW
                objectName: "bolts_003_LRW"
                x: 991.4160766601562
                y: -1404.381591796875
                z: -817.6651611328125
                source: "meshes/bolts_003_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: vavle_noMS_003_LRW
                objectName: "vavle_noMS_003_LRW"
                x: 1003.1875610351562
                y: -1404.458984375
                z: -1067.9700927734375
                source: "meshes/vavle_noMS_003_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: tire_000_LRW
                objectName: "tire_000_LRW"
                x: -751.2750854492188
                y: 1623.76806640625
                z: -810.4058837890625
                source: "meshes/tire_000_LRW_mesh.mesh"
                materials: [
                    tire_material
                ]
            }
            Model {
                id: brake_disk_000_LRW
                objectName: "brake_disk_000_LRW"
                x: -767.6701049804688
                y: 1623.7733154296875
                z: -810.4058837890625
                source: "meshes/brake_disk_000_LRW_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: brake_caliper_front_brake_hub_LRW
                objectName: "brake_caliper_front_brake_hub_LRW"
                x: -746.8908081054688
                y: 1472.586181640625
                z: -810.4058837890625
                source: "meshes/brake_caliper_front_brake_hub_LRW_mesh.mesh"
                materials: [
                    brakeCaliper_material
                ]
            }
            Model {
                id: brake_disk_covers_front_exterior_chrome_rough2_001_LRW
                objectName: "brake_disk_covers_front_exterior_chrome_rough2_001_LRW"
                x: -732.4330444335938
                y: 1677.264404296875
                z: -810.400390625
                source: "meshes/brake_disk_covers_front_exterior_chrome_rough2_001_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: brake_caliper_bolt_exterior_black_matt_LRW
                objectName: "brake_caliper_bolt_exterior_black_matt_LRW"
                x: -781.6058959960938
                y: 1481.0166015625
                z: -810.4058837890625
                source: "meshes/brake_caliper_bolt_exterior_black_matt_LRW_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: brake_caliper_nut_noMS_exterior_chrome_rough2_LRW
                objectName: "brake_caliper_nut_noMS_exterior_chrome_rough2_LRW"
                x: -781.8280639648438
                y: 1480.85009765625
                z: -810.4058837890625
                source: "meshes/brake_caliper_nut_noMS_exterior_chrome_rough2_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: rimDark_000_LRW
                objectName: "rimDark_000_LRW"
                x: -855.6317749023438
                y: 1623.76806640625
                z: -810.4058837890625
                source: "meshes/rimDark_000_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: rimBright_000_LRW
                objectName: "rimBright_000_LRW"
                x: -862.8134155273438
                y: 1623.7734375
                z: -812.2762451171875
                source: "meshes/rimBright_000_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: logo_wheel_000_LRW
                objectName: "logo_wheel_000_LRW"
                x: -833.9423217773438
                y: 1623.7734375
                z: -810.4058837890625
                source: "meshes/logo_wheel_000_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: logo_wheel_000_silver_LRW
                objectName: "logo_wheel_000_silver_LRW"
                x: -834.1535034179688
                y: 1623.76806640625
                z: -810.400390625
                source: "meshes/logo_wheel_000_silver_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: logo_wheel_000_rimDark_LRW
                objectName: "logo_wheel_000_rimDark_LRW"
                x: -835.3910522460938
                y: 1623.8348388671875
                z: -810.3614501953125
                source: "meshes/logo_wheel_000_rimDark_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: rimDarkIn_000_LRW
                objectName: "rimDarkIn_000_LRW"
                x: -734.7750854492188
                y: 1623.7679443359375
                z: -810.4058837890625
                source: "meshes/rimDarkIn_000_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: bolts_000_LRW
                objectName: "bolts_000_LRW"
                x: -830.7399291992188
                y: 1623.8402099609375
                z: -816.1334228515625
                source: "meshes/bolts_000_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: vavle_noMS_000_LRW
                objectName: "vavle_noMS_000_LRW"
                x: -842.5116577148438
                y: 1623.7625732421875
                z: -1066.4383544921875
                source: "meshes/vavle_noMS_000_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: tire_001_LRW
                objectName: "tire_001_LRW"
                x: -755.0729370117188
                y: -1404.45361328125
                z: -811.9376220703125
                source: "meshes/tire_001_LRW_mesh.mesh"
                materials: [
                    tire_material
                ]
            }
            Model {
                id: brake_disk_001_LRW
                objectName: "brake_disk_001_LRW"
                x: -771.4679565429688
                y: -1404.4537353515625
                z: -811.9375
                source: "meshes/brake_disk_001_LRW_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: brake_disk_covers_front_exterior_chrome_rough2_002_LRW
                objectName: "brake_disk_covers_front_exterior_chrome_rough2_002_LRW"
                x: -736.2311401367188
                y: -1420.654052734375
                z: -811.9320068359375
                source: "meshes/brake_disk_covers_front_exterior_chrome_rough2_002_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: brake_caliper_r_LRW
                objectName: "brake_caliper_r_LRW"
                x: -740.0607299804688
                y: -1238.4307861328125
                z: -809.0570068359375
                source: "meshes/brake_caliper_r_LRW_mesh.mesh"
                materials: [
                    brakeCaliper_material
                ]
            }
            Model {
                id: brake_pad_r_LRW
                objectName: "brake_pad_r_LRW"
                x: -771.5568237304688
                y: -1229.21240234375
                z: -809.323486328125
                source: "meshes/brake_pad_r_LRW_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: rimDark_001_LRW
                objectName: "rimDark_001_LRW"
                x: -859.4296264648438
                y: -1404.45361328125
                z: -811.9376220703125
                source: "meshes/rimDark_001_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: rimBright_001_LRW
                objectName: "rimBright_001_LRW"
                x: -866.6112670898438
                y: -1404.4482421875
                z: -813.807861328125
                source: "meshes/rimBright_001_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: logo_wheel_001_LRW
                objectName: "logo_wheel_001_LRW"
                x: -837.7401733398438
                y: -1404.4482421875
                z: -811.9376220703125
                source: "meshes/logo_wheel_001_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: logo_wheel_000_silver001_LRW
                objectName: "logo_wheel_000_silver001_LRW"
                x: -837.9513549804688
                y: -1404.45361328125
                z: -811.93212890625
                source: "meshes/logo_wheel_000_silver001_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: logo_wheel_000_rimDark001_LRW
                objectName: "logo_wheel_000_rimDark001_LRW"
                x: -839.1889038085938
                y: -1404.386962890625
                z: -811.8931884765625
                source: "meshes/logo_wheel_000_rimDark001_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: rimDarkIn_001_LRW
                objectName: "rimDarkIn_001_LRW"
                x: -738.5729370117188
                y: -1404.453857421875
                z: -811.9376220703125
                source: "meshes/rimDarkIn_001_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: bolts_001_LRW
                objectName: "bolts_001_LRW"
                x: -834.5380249023438
                y: -1404.381591796875
                z: -817.6651611328125
                source: "meshes/bolts_001_LRW_mesh.mesh"
                materials: [
                    rimDark_material
                ]
            }
            Model {
                id: vavle_noMS_001_LRW
                objectName: "vavle_noMS_001_LRW"
                x: -846.3095092773438
                y: -1404.458984375
                z: -1067.9700927734375
                source: "meshes/vavle_noMS_001_LRW_mesh.mesh"
                materials: [
                    rimBright_material
                ]
            }
            Model {
                id: black_fender_f_LRB
                objectName: "black_fender_f_LRB"
                x: 78.43890380859375
                y: 1018.8213500976562
                z: -624.5413818359375
                source: "meshes/black_fender_f_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: nPlate_r_LRB
                objectName: "nPlate_r_LRB"
                x: 78.4388198852539
                y: -2400.177978515625
                z: -698.024169921875
                source: "meshes/nPlate_r_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: nPlate_f_LRB
                objectName: "nPlate_f_LRB"
                x: 78.4383544921875
                y: 2552.9111328125
                z: -638.8594970703125
                source: "meshes/nPlate_f_LRB_mesh.mesh"
                materials: [
                    plasticblack_material
                ]
            }
            Model {
                id: seats_f_perf_LRB
                objectName: "seats_f_perf_LRB"
                x: 78.43876647949219
                y: 173.30123901367188
                z: -651.786376953125
                source: "meshes/seats_f_perf_LRB_mesh.mesh"
                materials: [
                    leatherB_perf_material
                ]
            }
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: glass_darkB_material
            objectName: "glass_darkB"
            baseColor: "#ff000000"
            metalness: 0
            roughness: 0.04
            opacity: 0.57
        }

        PrincipledMaterial {
            id: plasticblack_material
            objectName: "plasticblack"
            baseColor: "#ff202020"
            roughness: 0.472
        }

        PrincipledMaterial {
            id: plasticGlossy_material
            objectName: "plasticGlossy"
            baseColor: "#ff161616"
            metalness: 0.527
            roughness: 0.03
        }

        PrincipledMaterial {
            id: seam_material
            objectName: "seam"
            baseColorMap: seam_png_texture
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: leatherB_material
            objectName: "leatherB"
            baseColor: "#ffd25e5e"
            roughness: 0.4
        }

        PrincipledMaterial {
            id: leatherA_material
            objectName: "leatherA"
            baseColor: "#ff313131"
            roughness: 0.41
        }

        PrincipledMaterial {
            id: wood_material
            objectName: "wood"
            baseColor: "#ff2a2a2a"
            baseColorMap: wood_png_texture
            roughness: 0.9
        }

        PrincipledMaterial {
            id: silver_material
            objectName: "silver"
            baseColor: "#ff757575"
            roughness: 0.267
            metalness: 0.81
        }

        PrincipledMaterial {
            id: icons_material
            objectName: "icons"
            baseColorMap: icons_xiaomi_png_texture
            roughness: 0.911
            emissiveMap: icons_xiaomi_png_texture
        }

        PrincipledMaterial {
            id: glass_dark_material
            objectName: "glass_dark"
            baseColor: "#ff363636"
            opacity: 0.3
            roughness: 0.04
        }

        PrincipledMaterial {
            id: reflect_material
            objectName: "reflect"
            baseColor: "#ffffff"
            metalness: 0.959
            roughness: 0.026
        }

        PrincipledMaterial {
            id: chrome_material
            objectName: "chrome"
            baseColor: "#ff4f4f4f"
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: glass_clear_material
            opacity: 0.3
            metalness: 0.8
            objectName: "glass_clear"
            roughness: 0.1
        }

        PrincipledMaterial {
            id: glass_red_material
            objectName: "glass_red"
            baseColor: "#ff990000"
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: led_material
            objectName: "led"
            baseColor: "#ffd7d7d7"
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: red_illum_material
            objectName: "red_illum"
            baseColor: "#ffff0000"
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: reflectBumpB_material
            objectName: "reflectBumpB"
            baseColor: "#ff2d2d2d"
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: red_material
            objectName: "red"
            baseColor: "#ffff0000"
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: seamB_material
            objectName: "seamB"
            baseColor: "#ff0a0a0a"
            baseColorMap: seamB_png_texture
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: iconsDark_material
            objectName: "iconsDark"
            baseColor: "#ff000000"
            roughness: 0.91
            emissiveMap: icons_xiaomi_png_texture
        }

        PrincipledMaterial {
            id: intD_material
            objectName: "intD"
            baseColor: "#ffffff"
            baseColorMap: intD_png_texture
            roughness: 0.0
            metalness: 0.75
            emissiveMap: intD_png_texture
        }

        PrincipledMaterial {
            id: carpaint_material
            objectName: "carpaint"
            baseColor: carbodyColor
            //baseColor: "#ff7c7c7c"
            // baseColor: "#ff6A8A11"
            roughness: 0.1
            metalness: 0.8
        }

        PrincipledMaterial {
            id: seatbelt_material
            objectName: "seatbelt"
            baseColor: "#ffffffff"
            baseColorMap: seatbelt_png_texture
            metalness: 0
            roughness: 1
        }

        PrincipledMaterial {
            id: carpet_material
            objectName: "carpet"
            baseColor: "#ff1e1e1e"
            baseColorMap: carpet_png_texture
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: black_material
            objectName: "black"
            baseColor: "#ff000000"
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: tire_material
            objectName: "tire"
            baseColor: "#ff222222"
            roughness: 0.8585786819458008
            baseColorMap: sidewall_png_texture
        }

        PrincipledMaterial {
            id: brakeCaliper_material
            objectName: "brakeCaliper"
            baseColor: "#ffefc419"
            roughness: 0.8585786819458008

        }

        PrincipledMaterial {
            id: rimBright_material
            objectName: "rimBright"
            baseColor: "#ff929292"
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: rimDark_material
            objectName: "rimDark"
            baseColor: "#ff3c3c3c"
            roughness: 0.131
            metalness: 0.514
        }

        PrincipledMaterial {
            id: leatherB_perf_material
            objectName: "leatherB_perf"
            baseColor: "#ffcb746e"
            roughness: 0.9
            normalMap: leatherB_normal_png_texture
        }
    }

    // Animations:
}



/*##^##
Designer {
    D{i:0;cameraSpeed3d:25;cameraSpeed3dMultiplier:1;matPrevEnvDoc:"SkyBox";matPrevEnvValueDoc:"preview_studio";matPrevModelDoc:"#Sphere"}
}
##^##*/
