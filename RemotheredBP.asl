state("Remothered2-Win64-Shipping")
{
    byte LRT: 0x033F3790, 0x48, 0x9B8, 0x3F4;
    float IGT: 0x033F6D50, 0x30, 0x36C;
    int LRT2: 0x0341E5F0, 0xDF0, 0x2D0, 0x908;
    int LRT4: 0x0333C850, 0x30, 0x140;
    int LRT5: 0x03345A10, 0x30, 0x140;
}

init
{
    vars.split = 0;
}

start
{
    if(current.LRT == 0 && old.LRT == 246){
        vars.split = 0;
        return true;
    }
}

isLoading
{
    if(current.LRT == 246 && current.LRT4 != 1|| current.LRT != 246 && current.LRT != 0 && current.IGT == old.IGT){
        return true;
    }
    else{
        return false;
    }
}
update{
    print("Current LRTR: " + current.LRT2);
}