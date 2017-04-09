artist = obj {
	nam = 'Художник';
	dsc = [[
		За их спинами {художник} рисует с натуры обнажённую женщину
		с необычными ярко-жёлтыми волосами.
	]];
	act = function()
		walk 'artist_dlg'
	end;
}

artist_dlg = dlg {
	nam = 'Стаража';
	hideinv = true;
	entered = [[
		-- Доброе утро. Что-то я тебя не узнаю, братан. Как ты прошёл
		мимо стражи?
	]];
	phr = {
		{
			true;
			'У меня к тебе деловое предложение';
			[[
				-- Ну-ка.
				^
				Ты демонстрируешь работу свитка.
				^
				-- Охуеть, дайте две! Что хочешь взамен?
				^
				-- Да вообще ничего, он твой. Дай только портрет забрать.
				^
				-- Говно вопрос, братан, бери, я теперь ещё сто таких
				наштампую.
			]];
			function()
				event 'photographed the princess'
			end;
		};
		{
			always = true;
			'Я пойду.';
			'-- Ну-ну.';
			function()
				back()
			end;
		};
	};
}