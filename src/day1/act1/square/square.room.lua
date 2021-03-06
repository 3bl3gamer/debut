square_to_forest_edge = vroom('Край леса', 'forest_edge');
square_to_forest_edge:disable();

square = room {
	nam = 'Центральная площадь';
	dsc = [[
		Ты стоишь на центральной площади деревни. Ещё совсем светло, и людей почти
		нет.
	]];
	obj = {
		'well';
		'elder';
		'blacksmith';
		'holy_sign';
	};
	way = {
		'home';
		square_to_forest_edge;
		'fields';
	};
}

on_event('got new bow', function()
	square_to_forest_edge:enable();
end);
