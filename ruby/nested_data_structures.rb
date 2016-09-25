#Edited and reviewd for Week 5 repeat - Chipmunks 2016

vg_companies = {
  sony: {
	console: 'Playstation 4',
	price: 399.99,
	release_date: '11/15/2013',
	specs: {
	  colors: 'black',
	  cpu: 'Single-chip x86 AMD "Jaguar" processor, 8 cores',
	  gpu: 'AMD Radeon Graphics Core Next engine w/ 1152 shaders',
	  ram: '8GB GDDR5'
	},
	games: [
	  'Grand Theft Auto V',
	  'The Last of Us Remastered',
	  'Metal Gear Solid V: The Phantom Pain'
	]
  },
	
  microsoft: {
	console: 'Xbox One',
	price: 349.99,
	release_date: '11/22/2013',
	specs: {
	  colors: 'black',
	  cpu: '8 Core Microsoft custom CPU',
	  gpu: '853 MHz AMD Radeon GPU w/ 768 shaders',
	  ram: '8GB DDR3'
	},
	top_games: [
	  'Grand Theft Auto V',
	  'Metal Gear Solid V: The Phantom Pain',
	  'Inside'
	]
  },
    
  nintendo: {
	console: 'Wii U',
	price: 349.99,
	release_date: '11/18/2012',
	specs: {
	  colors: [
		'black',
		'white'
	  ],
	  cpu: 'Tri-Core PowerPC "Espresso" CPU',
	  gpu: 'AMD "Latte" 550 MHz GPU w/ 320 shaders' ,
	  ram: '2GB DDR3'
	},
	top_games: [
	  "Super Mario 3D World",
	  "Super Smash Bros.",
	  "Rayman Legends"
	]
  }
}

#print the specs of the PS4
p vg_companies[:sony][:specs]

#print the colors of the Wii U. Colors is under specs. 'colors' is a symbol, but is also represented as an array since it has more than two string values.
p vg_companies[:nintendo][:specs][:colors]

#print the top Xbox game 'GTA 5'. Because, top_games is an array, I need to access the [0] index.
p vg_companies[:microsoft][:top_games][0]

#print the price of the Wii (Note: float value doesn't seem to matter for 'p', but note that if you use 'print' or 'puts' you need to convert with to_s)
p vg_companies[:nintendo][:price]

