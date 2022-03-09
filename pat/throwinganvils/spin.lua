require "/scripts/vec2.lua"

function init()
	rotationSpeed = config.getParameter("rotationSpeed", 10)
end

function update(dt)
	local velocity = mcontroller.velocity()
	local dir = velocity[1] > 0 and 1 or -1
	local rotation = (vec2.mag(velocity) / 180 * math.pi) * -dir * dt * rotationSpeed
	mcontroller.setRotation(mcontroller.rotation() + rotation)
end