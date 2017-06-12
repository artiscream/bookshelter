<h1>Технічне завдання<h1>

Метою реалізації даного проекту є створення веб-сайту для складу магазину книг. Який би містив наступні функціональні елементи:

1)авторизація та реєстрація користувачів використовуючи gem 'devise'

2)має бути створена сторінка адміністратора, де відображатиметься вся  потрібна інформація з бази даних та можна бути редагувати записи з потрібної таблиці бази даних. Тут використовувався gem 'activeadmin'

3)користувачі повинні мати змогу залишати коментарі до тих чи інших книг.

4)самі книги мають мати рейтинг, згідно оцінок користувачів. Використовувався gem 'act_as_votable'

5)треба було створити підписку на книги, яких поки нема на складі.

6)дизайнерська частина, базована на boostrap

7)наповнення сайту контентом

Для додання зображень до книг через сторінку адміністратора також використовується gem 'paperclip'. А для інформування юзера про те, що книга яка є в його листі очікування з'явилась в наявності на сайті використовується також mailer.
