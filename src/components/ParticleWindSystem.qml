import QtQuick
import QtQuick.Controls
import QtQuick.Particles

ParticleSystem
{
	id: root

	property int moveX: 0
	property int moveY: 0
	property color color: "white"
	property int offsetX: 0
	property int offsetY: 0
	property int emitterWidth: 0
	property int emitterHeight: 0
	property int value: 0
	property string source: ""

	ImageParticle
	{
		groups: ["fog"]
		source: root.source
		opacity: 0.03
		rotationVariation: 0
		color: root.color
		colorVariation: 0
	}

	Emitter
	{
		group: "fog"
		anchors.horizontalCenter: parent.horizontalCenter
		emitRate: 500 * value
		lifeSpan: 1000
		lifeSpanVariation: 1
		width: emitterWidth
		height: emitterHeight

		size: 50
		endSize: -1
		sizeVariation: 0
		velocity: TargetDirection
		{
			targetX: root.moveX * 4 - offsetX
			targetY: root.moveY * 4 - offsetY
			targetVariation: 100
			magnitude: 200 * value * 0.5
		}
	}

	Turbulence
	{
		groups: ["fog"]
		width: parent.width
		height: parent.height
		strength: 50
	}

}
