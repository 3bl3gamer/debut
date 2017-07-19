prison_guards_room = room {
	nam = 'Комната стражи';
	dsc = [[
		Ты в комнате стражи. Обстановка здесь довольно спартанская:
		стол, два стула и спящий стражник в углу.
	]];
	obj = {
		'prison_chest';
	};
	way = {
		'prison_hall';
	};
	entered = function()
		if _guard_just_died then
			_guard_just_died = false
			event 'guard body is hidden'
			return [[
				Ты втаскиваешь труп за дверь и оборачиваешься лишь за тем, чтобы
				наделать в штаны, потому что за дверью сидит ещё один стражник.
				Впрочем, при ближайшем рассмотрении тот оказывается спящим.
			]]
		end
	end;
}

prison_chest = obj {
	nam = 'Сундук';
	dsc = [[
		В углу стоит тяжёлый кованый {сундук} с увесистым замком.
	]];
	used = function(self, what)
		if what == rat then
			event 'got his stuff back'
			return [[
				Ты объясняешь крысе, что содержимое этого сундука очень дорого
				для тебя как память. Крыса проникается и вскрывает замок
				заклинанием. Ты находишь там свои вещи, кокаин,
				метамфетамин, кинжал, охотничий рог, ксарказ орка
				(что бы это ни значило) и немного субстрата магии.
				^
				Пора сваливать. Кажется, в коридоре была лестница.
			]]
		end
	end;
}
