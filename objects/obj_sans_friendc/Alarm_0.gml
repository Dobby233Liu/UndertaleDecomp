myinteract = 3
global.msc = 0
global.typer = 17
global.facechoice = 3
global.faceemotion = 0
if (FL_SansPacifistConvoCounter == 0)
{
    if (FL_TorielFlirtedCount > 0)
    {
        global.msg[0] = scr_gettext("obj_sans_friendc_75")
        scr_torface(1, 2)
        global.msg[2] = scr_gettext("obj_sans_friendc_77")
        if (FL_CalledTorielMom > false)
            global.msg[3] = scr_gettext("obj_sans_friendc_79")
        if (FL_CalledTorielMom == false)
            global.msg[3] = scr_gettext("obj_sans_friendc_81")
        scr_sansface(4, 1)
        global.msg[5] = scr_gettext("obj_sans_friendc_83")
        scr_papface(6, 3)
        global.msg[7] = scr_gettext("obj_sans_friendc_85")
        global.msg[8] = scr_gettext("obj_sans_friendc_86")
        scr_sansface(9, 2)
        global.msg[10] = scr_gettext("obj_sans_friendc_88")
        scr_torface(11, 0)
        global.msg[12] = scr_gettext("obj_sans_friendc_90")
        global.msg[13] = scr_gettext("obj_sans_friendc_91")
        global.msg[14] = scr_gettext("obj_sans_friendc_92")
        scr_alface(15, 0)
        global.msg[16] = scr_gettext("obj_sans_friendc_94")
        global.msg[17] = scr_gettext("obj_sans_friendc_95")
        global.msg[18] = scr_gettext("obj_sans_friendc_96")
        global.msg[19] = scr_gettext("obj_sans_friendc_97")
    }
    if (FL_TorielFlirtedCount == 0 && FL_CalledTorielMom > false)
    {
        global.msg[0] = scr_gettext("obj_sans_friendc_102")
        global.msg[1] = scr_gettext("obj_sans_friendc_103")
        global.msg[2] = scr_gettext("obj_sans_friendc_104")
        scr_torface(3, 1)
        global.msg[4] = scr_gettext("obj_sans_friendc_106")
        global.msg[5] = scr_gettext("obj_sans_friendc_107")
        scr_sansface(6, 1)
        global.msg[7] = scr_gettext("obj_sans_friendc_109")
        global.msg[8] = scr_gettext("obj_sans_friendc_110")
        scr_papface(9, 3)
        global.msg[10] = scr_gettext("obj_sans_friendc_112")
        scr_undface(11, 9)
        global.msg[12] = scr_gettext("obj_sans_friendc_114")
        scr_papface(13, 4)
        global.msg[14] = scr_gettext("obj_sans_friendc_116")
        scr_undface(15, 1)
        global.msg[16] = scr_gettext("obj_sans_friendc_118")
        global.msg[17] = scr_gettext("obj_sans_friendc_119")
        scr_papface(18, 5)
        global.msg[19] = scr_gettext("obj_sans_friendc_121")
        scr_undface(20, 1)
        global.msg[21] = scr_gettext("obj_sans_friendc_123")
        scr_papface(22, 7)
        global.msg[23] = scr_gettext("obj_sans_friendc_125")
    }
    if (FL_TorielFlirtedCount == 0 && FL_CalledTorielMom == false)
    {
        global.msg[0] = scr_gettext("obj_sans_friendc_131")
        scr_torface(1, 0)
        global.msg[2] = scr_gettext("obj_sans_friendc_133")
        scr_asgface(3, 0)
        global.msg[4] = scr_gettext("obj_sans_friendc_135")
        scr_alface(5, 3)
        global.msg[6] = scr_gettext("obj_sans_friendc_137")
        scr_papface(7, 3)
        global.msg[8] = scr_gettext("obj_sans_friendc_139")
        global.msg[9] = scr_gettext("obj_sans_friendc_140")
        scr_undface(10, 1)
        global.msg[11] = scr_gettext("obj_sans_friendc_142")
        global.msg[12] = scr_gettext("obj_sans_friendc_143")
        scr_torface(13, 0)
        global.msg[14] = scr_gettext("obj_sans_friendc_145")
        scr_alface(15, 9)
        global.msg[16] = scr_gettext("obj_sans_friendc_147")
    }
}
if (FL_SansPacifistConvoCounter >= 1)
{
    global.msg[0] = scr_gettext("obj_sans_friendc_154")
    global.msg[1] = scr_gettext("obj_sans_friendc_155")
    scr_papface(2, 4)
    global.msg[3] = scr_gettext("obj_sans_friendc_157")
    scr_sansface(4, 2)
    global.msg[5] = scr_gettext("obj_sans_friendc_159")
}
FL_SansPacifistConvoCounter += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
