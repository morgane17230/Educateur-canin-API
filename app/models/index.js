const User = require("./user");
const Animal = require("./animal");
const Event = require("./event");
const Cat = require("./cat");
const Dog = require("./dog");
const Report = require("./report");
const Message = require("./message");
const Presta = require("./presta");
const Conversation = require("./conversation");
const conversationHasUser = require("./conversation_has_user");


User.hasMany(Event, {
  as: "events",
  foreignKey: "user_id",
});

Event.belongsTo(User, {
    as: "user",
    foreignKey: "user_id",
});

Presta.hasMany(Event, {
  as: "events",
  foreignKey: "presta_id",
});

Event.belongsTo(Presta, {
  as: "presta",
  foreignKey: "presta_id",
});

Event.hasMany(Report, {
    as: "reports",
    foreignKey: "event_id",
});

Report.belongsTo(Event, {
    as: "event",
    foreignKey: "event_id",
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
    as: "cats",
    foreignKey: "cat_id",
});

Animal.belongsTo(Cat, {
    as: "cat",
    foreignKey: "cat_id",
});

Dog.hasMany(Animal, {
    as: "dogs",
    foreignKey: "dog_id",
});

Animal.belongsTo(Dog, {
    as: "dog",
    foreignKey: "dog_id",
});

User.hasMany(Message, {
    as: "messages",
    foreignKey: "user_id"
});

Message.belongsTo(User, {
    as: "user",
    foreignKey: 'user_id'
});

Conversation.hasMany(Message, {
    as: "messages",
    foreignKey: "conversation_id"
});

Message.belongsTo(Conversation, {
    as: "conversations",
    foreignKey: "conversation_id"
});

Conversation.belongsToMany(User, {
    as: "users",
    through: conversationHasUser,
    foreignKey: "conversation_id",
    otherKey: "user_id"
});

User.belongsToMany(Conversation, {
    as: "conversations",
    through: conversationHasUser,
    foreignKey: "user_id",
    otherKey: "conversation_id",
});

module.exports = { User, Animal, Cat, Dog, Message, Event, Report, Presta, Conversation};