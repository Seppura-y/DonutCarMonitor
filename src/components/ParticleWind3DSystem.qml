import QtQuick
import QtQuick3D
import QtQuick3D.Particles3D

Node
{
	id: rootItem

	readonly property int eulerX: ((percentX - 50) * 1.8)
	readonly property int eulerY: ((percentArray[percentY - 1] - 50) * 1.8)

	readonly property var percentArray: [100,99,98,97,96,95,94,93,92,91,90,89,88,87,86,85,84,83,82,81,80,
										 79,78,77,76,75,74,73,72,71,70,69,68,67,66,65,64,63,62,61,60,
										 59,58,57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,
										 39,38,37,36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,
										 19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]

	property real level: 5
	property int percentX: 50
	property int percentY: 90
	property color windColor: "#FFFFFF"
	property url source: ""

	property real particleSize: 1
	property real particleSizeVariation: 0.5
	property real directionYVariation: 50


		ParticleSystem3D
		{
			SpriteParticle3D
			{
				id: smokeParticle
				sprite: Texture
				{
					source: rootItem.source
				}
				maxAmount: 50000
				color: rootItem.windColor
				colorVariation: Qt.vector3d(0.01, 0.01, 0.01)
				//colorVariation: Qt.vector3d(0, 0, 0)
				particleScale: 2
			} // SpriteParticle3D

			ParticleEmitter3D
			{
				id: emitter1
				particle: smokeParticle
				x: 0
				y: 100
				
				particleScale: rootItem.particleSize
				particleScaleVariation: rootItem.particleSizeVariation
				particleEndScale: particleScale * 0.5
				particleEndScaleVariation: particleScale * 0.5

				velocity: VectorDirection3D
				{
					direction:	Qt.vector3d(rootItem.eulerX * rootItem.getVelocity(), 0, rootItem.eulerY * rootItem.getVelocity())
					directionVariation: Qt.vector3d(20, rootItem.directionYVariation, 20)
				}

				emitRate: rootItem.getEmitRate()

				lifeSpan: 2000
				lifeSpanVariation: 500
			} // ParticleEmitter3D

			ParticleEmitter3D
			{
				id: emitter2
				particle: smokeParticle
				x: 12
				y: 100
				
				particleScale: rootItem.particleSize
				particleScaleVariation: rootItem.particleSizeVariation
				particleEndScale: particleScale * 0.5
				particleEndScaleVariation: particleScale * 0.5
			
				velocity: VectorDirection3D
				{
					direction:	Qt.vector3d(rootItem.eulerX * rootItem.getVelocity(), 0, rootItem.eulerY * rootItem.getVelocity())
					directionVariation: Qt.vector3d(20, rootItem.directionYVariation, 20)
				}
			
				emitRate: rootItem.getEmitRate()
			
				lifeSpan: 2000
				lifeSpanVariation: 500
			} // ParticleEmitter3D

			ParticleEmitter3D
			{
				id: emitter3
				particle: smokeParticle
				x: 24
				y: 100
				
				particleScale: rootItem.particleSize
				particleScaleVariation: rootItem.particleSizeVariation
				particleEndScale: particleScale * 0.5
				particleEndScaleVariation: particleScale * 0.5
			
				velocity: VectorDirection3D
				{
					direction:	Qt.vector3d(rootItem.eulerX * rootItem.getVelocity(), 0, rootItem.eulerY * rootItem.getVelocity())
					directionVariation: Qt.vector3d(20, rootItem.directionYVariation, 20)
				}
			
				emitRate: rootItem.getEmitRate()
			
				lifeSpan: 2000
				lifeSpanVariation: 500
			} // ParticleEmitter3D

			ParticleEmitter3D
			{
				id: emitter4
				particle: smokeParticle
				x: 36
				y: 100
				
				particleScale: rootItem.particleSize
				particleScaleVariation: rootItem.particleSizeVariation
				particleEndScale: particleScale * 0.5
				particleEndScaleVariation: particleScale * 0.5
			
				velocity: VectorDirection3D
				{
					direction:	Qt.vector3d(rootItem.eulerX * rootItem.getVelocity(), 0, rootItem.eulerY * rootItem.getVelocity())
					directionVariation: Qt.vector3d(20, rootItem.directionYVariation, 20)
				}
			
				emitRate: rootItem.getEmitRate()
			
				lifeSpan: 2000
				lifeSpanVariation: 500
			} // ParticleEmitter3D

			ParticleEmitter3D
			{
				id: emitter5
				particle: smokeParticle
				x: 48
				y: 100
				
				particleScale: rootItem.particleSize
				particleScaleVariation: rootItem.particleSizeVariation
				particleEndScale: particleScale * 0.5
				particleEndScaleVariation: particleScale * 0.5
			
				velocity: VectorDirection3D
				{
					direction:	Qt.vector3d(rootItem.eulerX * rootItem.getVelocity(), 0, rootItem.eulerY * rootItem.getVelocity())
					directionVariation: Qt.vector3d(20, rootItem.directionYVariation, 20)
				}
			
				emitRate: rootItem.getEmitRate()
			
				lifeSpan: 2000
				lifeSpanVariation: 500
			} // ParticleEmitter3D

			ParticleEmitter3D
			{
				id: emitter6
				particle: smokeParticle
				x: 60
				y: 100
				
				particleScale: rootItem.particleSize
				particleScaleVariation: rootItem.particleSizeVariation
				particleEndScale: particleScale * 0.5
				particleEndScaleVariation: particleScale * 0.5
			
				velocity: VectorDirection3D
				{
					direction:	Qt.vector3d(rootItem.eulerX * rootItem.getVelocity(), 0, rootItem.eulerY * rootItem.getVelocity())
					directionVariation: Qt.vector3d(20, rootItem.directionYVariation, 20)
				}
			
				emitRate: rootItem.getEmitRate()
			
				lifeSpan: 2000
				lifeSpanVariation: 500
			} // ParticleEmitter3D

			ParticleEmitter3D
			{
				id: emitter7
				particle: smokeParticle
				x: 72
				y: 100
				
				particleScale: rootItem.particleSize
				particleScaleVariation: rootItem.particleSizeVariation
				particleEndScale: particleScale * 0.5
				particleEndScaleVariation: particleScale * 0.5
			
				velocity: VectorDirection3D
				{
					direction:	Qt.vector3d(rootItem.eulerX * rootItem.getVelocity(), 0, rootItem.eulerY * rootItem.getVelocity())
					directionVariation: Qt.vector3d(20, rootItem.directionYVariation, 20)
				}
			
				emitRate: rootItem.getEmitRate()
			
				lifeSpan: 2000
				lifeSpanVariation: 500
			} // ParticleEmitter3D

			ParticleEmitter3D
			{
				id: emitter8
				particle: smokeParticle
				x: 84
				y: 100
				
				particleScale: rootItem.particleSize
				particleScaleVariation: rootItem.particleSizeVariation
				particleEndScale: particleScale * 0.5
				particleEndScaleVariation: particleScale * 0.5
			
				velocity: VectorDirection3D
				{
					direction:	Qt.vector3d(rootItem.eulerX * rootItem.getVelocity(), 0, rootItem.eulerY * rootItem.getVelocity())
					directionVariation: Qt.vector3d(20, rootItem.directionYVariation, 20)
				}
			
				emitRate: rootItem.getEmitRate()
			
				lifeSpan: 2000
				lifeSpanVariation: 500
			} // ParticleEmitter3D
		}


	function getVelocity()
	{
		if(level < 1)
		{
			return 0
		}
		else if(level == 1)
		{
			return level * 0.7
		}
		else if(level > 5)
		{
			return 5 * 0.6
		}
		else
		{
			return level * 0.6
		}
	}// function getVelocity

	function getEmitRate()
	{
		if(level < 1)
		{
			return 0
		}
		else if(level >= 5)
		{
			return 5 * 900
		}
		else
		{
			switch(level)
			{
				case 1: return level * 200
				case 2: return level * 300
				case 3: return level * 400
				case 4: return level * 500
				case 5: return level * 600
			}
		}
	} // function getEmitRate
} // Item