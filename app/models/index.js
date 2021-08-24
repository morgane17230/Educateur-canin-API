const User = require("./user");
const Animal = require("./animal");
const Event = require("./event");
const Cat = require("./cat");
const Dog = require("./dog");
const Report = require("./report");
const Message = require("./message");
const Presta = require("./presta");
const Content = require("./content");
const messageHasUser = require("./message_has_user");


User.hasMany(Event, {
  as: "events",
  foreignKey: "user_id",
});

Event.belongsTo(User, {
    as: "user",
    foreignKey: "user_id",
});

Report.hasOne(Event, {
    as: "event",
    foreignKey: "event_id",
});

Event.belongsTo(Report, {
    as: "report",
    foreignKey: "event_id",
});

Presta.hasMany(Event, {
    as: "events",
    foreignKey: "presta_id",
});

Event.belongsTo(Presta, {
    as: "presta",
    foreignKey: "presta_id",
});

User.hasMany(Animal, {
    as: "animals",
    foreignKey: "user_id",
});

Animal.belongsTo(User, {
    as: "user",
    foreignKey: "user_id",
});

Cat.hasMany(Animal, {
    as: "animal",
    foreignKey: "cat_id",
});

Animal.belongsTo(Cat, {
    as: "cat_race",
    foreignKey: "cat_id",
});

Dog.hasMany(Animal, {
    as: "animal",
    foreignKey: "animal",
});

Animal.belongsTo(Dog, {
    as: "dog_race",
    foreignKey: "dog_id",
});

Message.belongsToMany(User, {
    as: "users",
    through: messageHasUser,
    foreignKey: "message_id",
    otherKey: "user_id"
});

User.belongsToMany(Message, {
    as: "messages",
    through: messageHasUser,
    foreignKey: "user_id",
    otherKey: "message_id",
});

module.exports = { User, Animal, Cat, Dog, Message, Event, Content, Report, Presta};