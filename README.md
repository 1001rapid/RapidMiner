# RapidMiner #
Fast multipool and multialgo windows miner

English version of description in [README_en.md](https://github.com/1001rapid/RapidMiner/blob/master/README_en.md)

**Поддержка на форумах:** [bits.media](https://forum.bits.media/index.php?/topic/78638-rapidminer-консольный-аналог-nicehash/)

Консольный аналог Nicehash

Не совсем аналог, хотя, если программу использовать только на Найсе, то вполне себе аналог, плюс есть возможность использовать новые майнеры. В общем, программа для работы с мультипулами. Выбирает где копать, основываясь на данный с WTM.

## Немного истории ##
Во время отключения Найса, долго искал что-то похожее и случайно (по ссылке на одном из мультипулов) набрёл на замечательную программу [Megaminer от Tutulino](https://github.com/tutulino/Megaminer), основное её отличие от других подобных программ было то, что можно было создавать группы видеокарт, что было очень полезно не только с винегретом из них, а даже, когда все одинаковые, потому что та, которая предполагается системой для вывода изображения была намного нестабильнее остальных и для неё желательно было исключить некоторые алгоритмы, которые приводили к выносу драйверов и прочим радостям. И делало это маленькое свойств эту программу очень похожей на NiceHashMiner, в котором тоже есть замечательная возможность настроить каждую карточку отдельно.

И всё бы ничего, но автор начал вводить новые функции и переработал механизм работы так, что каждый новый цикл работы майнеров начинал занимать всё больше и больше времени. От 5 до 20 минут. Это стало так раздражать, что я решил запилить свою программу.

За основу взял [Megaminer версии 5.0b2](https://github.com/tutulino/Megaminer/releases/tag/5.0-beta2), в котором ещё присутствовал лог-файл, по сути являющийся скриншотом осноного окна программы. Это очень удобно для мониторинга ферм в локальной сети - можно не заходить не компы через программы удалённого доступа, а любым консольным файловым менеджером открыть лог-файл, прокрутить в конец и наблюдать в реальном времени окно программы через текстовый файл.

**Пример мониторинга двух компов:**
https://www.youtube.com/watch?v=5tKwqa1eUIw

Но так как новые возможности тоже хочется, то добавляю по возможности.

## Системные требования ##
- Железо:
	- CPU - минимум .) я использую старые материнки со всякими двух ядерными Intel и AMD
	- HDD - от 60 Гб (оптимально 80 и больше), программа: 500 Мб + система + файл подкачки от 32 Гб
	- RAM - 2 Гб
- Операционка: Я везде использую Windows 7 sp1 x64, Tutulino обкатывает на 10-ке

- Софт:	
	- PowerShell v5.0
	- CUDA 9 (некоторые майнеры его требуют, можно их исключить, если не хотите ставить последние дрова (CUDA 9 начинается в версии 387 и выше), потому что с ними обычно начинаются проблемы, к примеру, у 1050 Ti перестала отображаться текущая мощность (по моим данным, последняя стабильная версия дров для неё - 384.94))

- Что я ставлю на голую 7-ку, что бы гарантированно всё работало:
	 - CCleaner (помогает при маленьких дисках)
	 - ESET Smart Security (Firewall) - включаю только защиту узла и Firewall (первый день - режим обучения)
	 - SP1 (KB976932)
	 - D3DComplier - need for NET Framework install (KB4019990)
	 - Microsoft.NET Framework 4.7 - web install (KB3186500)
	 - Microsoft Visual C++ 2005-2017 (VCredist)
	 - Update for Universal C Runtime (KB2999226)
	 - Windows Support Tools (??? какой-то майнер запрашивал)
	 - Windows Management Framework 5.0 includes updates to Windows PowerShell (KB3134760)	
- Windows Defender выключен, обновления выклчены.
		
## Установка и настройка ##

1. Скачивайте последний релиз
2. Редактируете файл `CONFIG.TXT`
3. Запускаете батник. Самый простой вариант, используемый мною (все монеты в автоматическом режиме и на выбранных пулах) `_RapidMiner.bat` (только пулы выберете, какие нужно). !!!Названия пулов должны быть написаны так же, как называются соответствующие файлы в папке Pools. Так же присутствуют примеры батников для соломайнинга и для добычи нескольких монет. Можно всё делать в ручном режиме, запустив `START.bat`
4. При первом запуске происходит скачивание (всё качается с GitHub) и установка майнеров
5. При первом же запуске майнеры тестируются. Процесс долгий. Результат пишется в папку `Stats` отдельно по группам GPU, если Вы их сконфигурировали в п.2. Рекомендую этот пункт проходить для каждой группы в отдельности (т.е. активировать по одной группе), так будет легче вычислить нестабильный майнер, для исключения которого правится файл с результатами тестов, где ставиться заведомо низкая цифра. 
6. Дольнейшая настройка:
	- майнер можно исключить совсем, удалив (а лучше переместив в папку `\Additional Miners`) файл из папки `\Miners`;
	- так же можно исключить пул, удалив его файл из папки `\Pools`, но лучше всё же, удалить его из запускающего батника);
	- перед запуском майнера можно добавить запуск каких либо программ (тех же настроек), добавив командную строку в поле
	  `PrelaunchCommand` соответствующего майнера (не всегда срабатывает, но вдруг кому то пригодится)).

------

Сразу скажу, что делаю для себя, тут решил поделиться с коллегами, вдруг кому тоже понравится, поэтому поддержка в формате "используем что есть" ), но вопросы можете задавать, по возможности, подскажу. 

На подходе версия 1.2 улучшенная и доработанная, пока на обкатке
