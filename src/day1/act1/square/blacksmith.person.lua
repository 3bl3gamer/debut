blacksmith = obj {
	nam = 'Кузнец';
	dsc = [[
		Около тебя стоит {кузнец}. Он выглядит усталым.
	]];
	act = function()
		walk 'blacksmith_dlg'
	end;
}

blacksmith_dlg = dlg {
	nam = 'Кузнец';
	hideinv = true;
	entered = [[
		-- Доброе утро, -- хмуро приветствует тебя кузнец.
	]];
	phr = {
		{
			'Мне нужен новый лук!';
			[[
				-- Лук сделать -- дело несложное. Только есть одна проблема.
				Уоррен, скотина, отобрал у меня молот за долги.
			]];
			function()
				_warren_conflict = true
			end;
		};
		{
			always = true;
			'Я пойду.';
			'Кузнец погружён в свои мысли и ничего тебе не отвечает.';
			function()
				back()
			end;
		};
	};
}