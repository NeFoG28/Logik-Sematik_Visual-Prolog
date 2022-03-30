% Copyright

implement main
    open core

clauses
    run() :-
        CP = commandLineParser::new(),
        CP:acceptEmpty := true,
        CP:addOption_help("-help"),
        % define command line options here
        if ErrorMessage = CP:parse():isSome() then
            stdio::errorStream:write(ErrorMessage)
        else
            stdio::write("Halo Dunia, Tidur Bang!!!")
        end if.

end implement main

goal
    console::runUtf8(main::run).
