RoofDescription.destroy_all
RoofDescription.create!([
{ options: 'Aluminum Roof' },
{ options: 'Bahama Roof' },
{ options: 'Barrel Roof' },
{ options: 'Built-Up Roof' },
{ options: 'Composition Roll' },
{ options: 'Concrete Roof' },
{ options: 'Fiberglass Roof' },
{ options: 'Flat Tile Roof' },
{ options: 'Flat Roof With Facade Front' },
{ options: 'Manufactured/Mobile Home' },
{ options: 'Metal Roof' },
{ options: 'Other Roof' },
{ options: 'Roof Over' },
{ options: 'Curved/S-Tile Roof' },
{ options: 'Wood Shake Roof' },
{ options: 'Comp Shingle Roof' },
{ options: 'Slate Roof' },
{ options: 'Tar & Gravel Roof' },
{ options: 'Wood Shingle Roof' }])
p "Created #{RoofDescription.count} RoofDescription options"
