## CSVP
A csv preprocessing tool. 

### Install and Setup
clone the repo and move to it:  
```bash
git clone https://github.com/aokpower/csvp.git; cd csvp
```

build and install:  
```bash
gem build *.gemspec && gem install *.gem
```

### Quick Start
Just type in ```csvp``` to get a list of commands and brief descriptions.

Use ```csvp help <command_name>``` to get option descriptions.

### Examples

brand
```bash
csvp brand products.csv -o brand_corrected_products.csv
```

diff
```bash
# using default compare header of 'sku'
csvp diff store_a_inv.csv store_b_inv.csv -o inv_that_store_a_has_which_b_doesnt.csv

# using custom compare header of 'name'
csvp diff a.csv c.csv name -o out.csv
```

intersect
```bash
# using default compare header of 'sku'
csvp intersect in_store_makita_products.csv updated_all_makita_products.csv -o updated_in_store_makita_products.csv

# using custom compare header of 'name'
csvp intersect a.csv b.csv name -o out.csv
```
