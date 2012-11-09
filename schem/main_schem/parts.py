# Digikey BOM builder,
# Brock Anderson 2012

import csv
data = csv.reader(open('main_schem.csv'), delimiter=';')

fields = data.next()
print fields

parts = {}
for row in data:
    items = zip(fields, row)
    item = {}

    for (name, value) in items:
        print name
        print value
        item[name] = value.strip()

    print item["P/N"]

    if (parts.has_key(item['P/N'])):
       parts[item['P/N']]['count'] += 1
       parts[item['P/N']]['ref'] += ';' + item['ref']
    else:
       parts[item['P/N']] = {}
       parts[item['P/N']]['count'] = 1
       parts[item['P/N']]['ref'] = item['ref']


f = open("digikey_export.csv", "w")
csv_file = csv.writer(f, delimiter=',',quotechar='"', quoting=csv.QUOTE_MINIMAL)
#csv_file.writerow(["a", "b", "c"])


for part in parts:
    print part + ',' + str(parts[part]['count']) + ',"' + parts[part]['ref'] + '"'
    csv_file.writerow([part," ", " ", parts[part]['ref'], str(parts[part]['count']), str(3 * parts[part]['count']), str(10 * parts[part]['count'])])
       
f.close()    
print 'done'
