meta.defineType 'inv.name:NAME';
meta.defineType 'inv.qty:INT';
meta.defineType 'inv.partNumber:SHORT';


meta.defineEntity 'inv.Vendor',
    'name'
;

meta.defineEntity 'inv.Equipment',
    'name;partNumber',
    'Vendor'
;

meta.defineEntity 'inv.Profile',
    'name'
;

meta.defineEntity 'inv.ProfileEquipment',
    'qty',
    'Profile,,cascade;Equipment,,cascade'
;

meta.createTable 'inv.Vendor';
meta.createTable 'inv.Equipment';
meta.createTable 'inv.Profile';
meta.createTable 'inv.ProfileEquipment';

alter table inv.ProfileEquipment add unique (profile,equipment);