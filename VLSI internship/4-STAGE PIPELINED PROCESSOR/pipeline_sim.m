instructions = ["ADD","SUB","LOAD"];

for cycle = 1:6
    fprintf("Cycle %d\n",cycle);

    if cycle <= length(instructions)
        fprintf("IF  : %s\n",instructions(cycle));
    end
    if cycle-1 > 0 && cycle-1 <= length(instructions)
        fprintf("ID  : %s\n",instructions(cycle-1));
    end
    if cycle-2 > 0 && cycle-2 <= length(instructions)
        fprintf("EX  : %s\n",instructions(cycle-2));
    end
    if cycle-3 > 0 && cycle-3 <= length(instructions)
        fprintf("WB  : %s\n",instructions(cycle-3));
    end
    fprintf("\n");
end
