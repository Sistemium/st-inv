meta.defineEntity 'inv.Location',
    'name'
;

meta.defineEntity 'inv.LocationProfile',
    'qty',
    'Location,,cascade;Profile,,cascade'
;

meta.createTable 'inv.Location';
meta.createTable 'inv.LocationProfile';

alter table inv.LocationProfile add unique (location,profile);
