# Форма для регистрации

Ruby version 3.0.1 

Rails version 6.1.3.2

Проект представляет собой простую форму регистрации, где пользователь
вводит email, ФИО и пароль с подтверждением.
После успешной регистрации он попадает на страницу где отображаются
данные которые он ввел на форме и к этим данным добавляется вывод его
пола, который был определен по ФИО, использую сервис https://dadata.ru/
Админ может просматривать список всех
зарегистрированных пользователей.

Установка

git clone git@github.com:Solyannik/form_registration.git

Перед запуском выполнить

bundle install
bundle exec rails webpacker:install
yarn add bootstrap@5 jquery popper.js
bundle exec rails db:migrate

Использовались rspec, devise, bootstrap.
