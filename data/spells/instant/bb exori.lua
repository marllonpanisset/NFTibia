area = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

attackType = ATTACK_FIRE
needDirection = false
areaEffect = NM_ME_MAGIC_BLOOD
animationEffect = NM_ANI_NONE

hitEffect = NM_ME_MAGIC_BLOOD
damageEffect = NM_ME_MAGIC_BLOOD
animationColor = RED
offensive = true
drawblood = false

BoneBeastBezerk = MagicDamageObject(attackType, animationEffect, hitEffect, damageEffect, animationColor, offensive, drawblood, 0, 0)

function onCast(cid, creaturePos, level, maglv, var)
centerpos = {x=creaturePos.x, y=creaturePos.y, z=creaturePos.z}
n = tonumber(var)   -- try to convert it to a number
if n ~= nil then
	-- bugged
	-- BoneBeastBezerk.minDmg = var+0
	-- BoneBeastBezerk.maxDmg = var+0

	BoneBeastBezerk.minDmg = 0
	BoneBeastBezerk.maxDmg = 0 
else
	BoneBeastBezerk.minDmg = 40
	BoneBeastBezerk.maxDmg = 70
end 

return doAreaMagic(cid, centerpos, needDirection, areaEffect, area, BoneBeastBezerk:ordered())
end  
