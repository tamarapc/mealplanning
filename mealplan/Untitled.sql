drop database if exists MealPlanning;
create database MealPlanning;
use MealPlanning;

create table Meals(
Id int primary key auto_increment,
MealName varchar(100) not null,
Servings decimal(5,2) not null,
Carbs int not null,
Fat int not null,
Protein int not null,
Instructions varchar(1000) not null);

create table Ingredients(
Id int primary key auto_increment,
IngName varchar(50) not null,
Price decimal(5,2) not null
);

create table MealIngs(
MealId int not null,
IngId int not null,

primary key(MealId, IngId),
foreign key fk_MealIngs_Meals (MealId)
references Meals(Id),
foreign key fk_MealIngs_Ingredients (IngId)
references Ingredients(Id)
);

