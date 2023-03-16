enum BoxNumber {
  boxOne('todo dia', 1, 1, 2),
  boxTwo('dia sim, dia não', 2, 1, 3),
  boxThree('1x por semana', 3, 2, 4),
  boxFour('semana sim, semana não', 4, 3, 5),
  boxFive('1x por mês', 5, 4, 5);

  final String description;
  final int number;
  final int prevBox;
  final int nextBox;

  const BoxNumber(
    this.description,
    this.number,
    this.prevBox,
    this.nextBox,
  );
}
