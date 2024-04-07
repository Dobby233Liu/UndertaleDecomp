global.entrance = 19
instance_create(0, 0, obj_persistentfader)
if (room == room_water12)
    room_goto(room_water_bird)
if (room == room_water_bird)
    room_goto(room_water_friendlyhub)
if (room == room_tundra_sanshouse)
    room_goto(room_tundra_town)
if (room == room_water_blookyard)
    room_goto(room_water_farm)
if (room == room_water_farm)
    room_goto(room_water_blookyard)
if (room == room_water_friendlyhub)
    room_goto(room_water_bird)
if (room == room_water_bird)
    room_goto(room_water_friendlyhub)
if (room == room_water14)
    room_goto(room_water_statue)
if (room == room_water_statue)
    room_goto(room_water14)
if (room == room_fire_elevator_r1)
    room_goto(room_fire_elevator)
if (room == room_fire_elevator_r2)
    room_goto(room_fire_elevator)
if (room == room_fire_elevator_r3)
    room_goto(room_fire_elevator)
if (room == room_fire_elevator_l1)
    room_goto(room_fire_elevator)
if (room == room_fire_elevator_l2)
    room_goto(room_fire_elevator)
if (room == room_fire_elevator_l3)
    room_goto(room_fire_elevator)
if (room == room_fire_elevator)
{
    if (FL_CurrentElevatorFloor == CurrentElevatorFloor.L1)
        room_goto(room_fire_elevator_l1)
    if (FL_CurrentElevatorFloor == CurrentElevatorFloor.R1)
        room_goto(room_fire_elevator_r1)
    if (FL_CurrentElevatorFloor == CurrentElevatorFloor.R2)
        room_goto(room_fire_elevator_r2)
    if (FL_CurrentElevatorFloor == CurrentElevatorFloor.L2)
        room_goto(room_fire_elevator_l2)
    if (FL_CurrentElevatorFloor == CurrentElevatorFloor.L3)
        room_goto(room_fire_elevator_l3)
    if (FL_CurrentElevatorFloor == CurrentElevatorFloor.R3)
        room_goto(room_fire_elevator_r3)
}
if (room == room_fire_core_final)
{
	FL_ElevatorFinalFloor = 1
    room_goto(room_fire_finalelevator)
}
if (room == room_castle_elevatorout)
{
	FL_ElevatorFinalFloor = 0
    room_goto(room_fire_finalelevator)
}
if (room == room_fire_finalelevator)
{
    if (FL_ElevatorFinalFloor == 0)
        room_goto(room_fire_core_final)
    if (FL_ElevatorFinalFloor == 1)
        room_goto(room_castle_elevatorout)
}
if (room == room_castle_finalshoehorn)
    room_goto(room_castle_throneroom)
if (room == room_castle_throneroom)
    room_goto(room_castle_finalshoehorn)
if (room == room_fire_lab1)
    room_goto(room_fire_labelevator)
if (room == room_fire_labelevator)
    room_goto(room_fire_lab1)
if (room == room_truelab_hub)
    room_goto(room_truelab_castle_elevator)
if (room == room_truelab_castle_elevator)
    room_goto(room_truelab_hub)
if (room == room_ruinsexit)
    room_goto(room_tundra1)
if (room == room_tundra1)
    room_goto(room_ruinsexit)
if (room == room_fire_hotellobby)
    room_goto(room_shop4)
if (room == room_tundra_sansbasement)
    room_goto(room_tundra_town)
if (room == room_tundra_town)
    room_goto(room_tundra_sansbasement)
if (room == room_castle_precastle)
    room_goto(room_lastruins_corridor)
if (room == room_lastruins_corridor)
    room_goto(room_castle_precastle)
if (room == room_mysteryman)
    room_goto(room_water_fakehallway)
