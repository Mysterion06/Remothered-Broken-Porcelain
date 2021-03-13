//Credits Mysterion_06_ (Not my proudest work)
state("Remothered2-Win64-Shipping")
{
    byte LRT: 0x033F3790, 0x48, 0x9B8, 0x3F4;
    float IGT: 0x033F6D50, 0x30, 0x36C;
    byte LRT2: 0x0341D598, 0x8, 0x230, 0x908;
    byte LRT4: 0x0333C850, 0x30, 0x140;
    byte LRT5: 0x03345A10, 0x30, 0x140;
}

start
{
    if(current.LRT == 0 && old.LRT == 246){
        return true;
    }
}

isLoading
{
    if(current.LRT == 246 && current.LRT2 == 0 && current.LRT4 != 1){
        return true;
    } else{
        return false;
    }
}
