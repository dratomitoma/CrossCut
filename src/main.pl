:- consult('board.pl').


% prompt_board_size(-Rows, -Columns)
% Prompts the user for the board size
prompt_board_size(Rows, Columns) :-
    write('Please insert the board size: '), nl,
    write('Rows: '),
    read_number(Rows),
    write('Columns: '),
    read_number(Columns).

% Predicate to start the game
play :-
    prompt_board_size(Rows, Columns),
    create_board(Rows, Columns, Board),
    write(' '),
    Columns1 is Columns * 3 + Columns-1,
    draw_horizontal_line(Columns1),
    display_board(0, Rows, Columns, Board).
    %get_piece(Board, 1, 1, Element),
    %write(Element), nl.