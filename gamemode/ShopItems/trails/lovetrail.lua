ITEM.Name = 'Love Trail'
ITEM.Price = 300
ITEM.Material = 'trails/love.vmt'
ITEM.Desc = 'A trail of Hearts.'
ITEM.Grade = 'Consumer'

function ITEM:OnEquip(ply, modifications)
	ply.LoveTrail = util.SpriteTrail(ply, 0, modifications.color, false, 15, 1, 4, 0.125, self.Material)
end

function ITEM:OnHolster(ply)
	SafeRemoveEntity(ply.LoveTrail)
end

function ITEM:Modify(modifications)
	PS:ShowColorChooser(self, modifications)
end

function ITEM:OnModify(ply, modifications)
	SafeRemoveEntity(ply.LoveTrail)
	self:OnEquip(ply, modifications)
end
