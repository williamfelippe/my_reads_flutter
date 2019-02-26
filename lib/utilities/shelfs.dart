String getShelfName(shelf) {
  switch (shelf) {
    case "wantToRead":
      return "Want to read";

    case "read":
      return "Read";

    case "currentlyReading":
      return "Reading";

    default:
      return "None";
  }
}