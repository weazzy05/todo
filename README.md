# Done!

Yandex TODO project

## Структура проекта

2 Блока 1 initazalization_bloc отвечает за главный экран, сохраняет, фильтрует удаляет, берет задачи, , BlocListener в main_screen показывает snackBar
второй блок отвечает за второй экран edit_add_task_sreen,

В Модельках хранится OnlyTaskModel это обычная таска, RequestTaskModel/ResponseTaskModel - то что приходит сервера или
отправляет на сервер(1 таска), RequestTasksModel/ResponseTasksModel то что приходит сервера или
отправляет на сервер(список тасок)

Для запросов не используется dio, а написан общий абстрактный клсс и миксины для запросов, для хранения локальный данных
в папке repository есть task_repository с абстракным классом task_api, local_task_api наследуется от task_api и реализует
интерфейс todo_api

Так же есть еще NavigationService отвечает за навигацию

Темная тема есть, но на нее не обращайте внимание, пока недоработана до конца,


## Фаза 2
- Была добавлена темная тема
- Поддержаны два флейвора для запуска Dev нужно выполнить flutter run --flavor dev -t main_dev.dart, для prod flutter run --flavor prod -t main_prod.dart
- Поддержан CI при каждом пуше запускаются анализатор, и тесты, при мердже в master запускается отправка релиза  в Firebase App Distribution
- Навигация переписана на навигатор 2.0
- Есть интеграционный тест проверяющий сценарий добавления дела и выполнение дела, также есть юнит тесты
- Поддержаны диплинки по схеме http://myapptodo.ru{адрес страницы} (поддерживаются две ссылки /main, /edit_add_tasks)

## Главный экран
<img alt="alt text" height="740" src="https://i.imgur.com/5RVYSB2.jpg" width="350"/>

## Свайп вправо

<img alt="alt text" height="740" src="https://i.imgur.com/xk4VYUr.jpg" width="350"/>

## Свайп влево
<img alt="alt text" height="740" src="https://i.imgur.com/6y68QS8.jpg" width="350"/>

## Скролл вниз
<img alt="alt text" height="740" src="https://i.imgur.com/QGpK0l9.jpg" width="350"/>

## Скрыты выполненные задачи
<img alt="alt text" height="740" src="https://i.imgur.com/MylWm7C.jpg" width="350"/>

## Новая задача

<img alt="alt text" height="740" src="https://i.imgur.com/rp5Oksi.jpg" width="350"/>

## Выбор даты

<img alt="alt text" height="740" src="https://i.imgur.com/qFyyHRL.jpg" width="350"/>

## Редактирование задачи

<img alt="alt text" height="740" src="https://i.imgur.com/JOBTORB.jpg" width="350"/>