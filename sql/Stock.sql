meta.defineType 'inv.serialNumber:MEDIUM';
meta.defineType 'inv.isValid:BOOL,1';

meta.defineType 'inv.dateB:DATE';
meta.defineType 'inv.dateE:DATE';

meta.defineEntity 'inv.Article',
    'name',
    'Equipment'
;

meta.defineEntity 'inv.Stock',
    'qty',
    'Location;Article'
;

meta.defineEntity 'inv.Device',
    'serialNumber;isValid',
    'Article'
;

meta.defineEntity 'inv.DeviceLocation',
    'dateB;dateE',
    'Device;Location'
;