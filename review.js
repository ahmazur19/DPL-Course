person1 = {
	id:1,
	name: "Adam",
	favoriteThings: ['Tacos', 'Forging'],
	};

	let person2 = {
end		id:2,
		name:"Tony",
		favoriteThings: ["Pasta", "Scarface"],
	}

people.each do |person|
	puts person[:name]
end