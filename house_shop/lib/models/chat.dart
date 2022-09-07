class Chat {
  final String name, lastMessage, messageTime;
  final bool isActive;

  Chat({
    this.messageTime = '',
    this.name = '',
    this.lastMessage = '',
    this.isActive = false,
  });
}

List chatsData = [
  Chat(
    name: "Adam Smith",
    lastMessage: "Good night Mr Bale",
    isActive: false,
    messageTime: '3m ago',
  ),
  Chat(
    name: "Luis Albara",
    lastMessage: "Hello, How are you?",
    isActive: true,
    messageTime: '15m ago',
  ),
  Chat(
    name: "Homeowner",
    lastMessage: "Did you like the house?",
    isActive: false,
    messageTime: '1d ago',
  ),
  Chat(
    name: "Matt Damon",
    lastMessage: "You’re welcome :)",
    isActive: true,
    messageTime: '1d ago',
  ),
  Chat(
    name: "Scarlett Johansson",
    lastMessage: "I'm sure of that.",
    isActive: false,
    messageTime: '3d ago',
  ),
  Chat(
    name: "Contt Wine",
    lastMessage: "This is a great house! Is not it?",
    isActive: true,
    messageTime: '1m ago',
  ),
  Chat(
    name: "Sergio Hally",
    lastMessage: "I will call you.",
    isActive: true,
    messageTime: '1m ago',
  ),
  Chat(
    name: "Edic Samu",
    lastMessage: "This looks great man!",
    isActive: false,
    messageTime: '1y ago',
  ),
];
