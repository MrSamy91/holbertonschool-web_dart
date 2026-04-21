int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int calcScore(Map<String, int> team) {
    var ft = team['Free throws'] ?? 0;
    var twoPt = team['2 pointers'] ?? 0;
    var threePt = team['3 pointers'] ?? 0;
    return ft + twoPt * 2 + threePt * 3;
  }

  var pointsA = calcScore(teamA);
  var pointsB = calcScore(teamB);

  if (pointsA > pointsB) return 1;
  if (pointsA < pointsB) return 2;
  return 0;
}
