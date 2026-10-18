-- Silent Aim target sync for King Legacy Auto Bounty.
-- Default: track the target selected by getgenv().UAI_KingLegacySilentAim_v1.
-- Run UAI bridge -> Silent Aim (enable it) -> this file.
-- Tracking suspends attacks when Silent Aim is absent/disabled/has no eligible target.
-- Manual and Auto modes remain available in the mobile target picker.
-- e1.txt: recovered Lua source.
-- NTT decoder and VM dispatch have been removed from the payload.
-- Recovered: 34 boolean programs, 25 CFrames, 49 property assignments,
--            3 argument permutations, and the virtualized button constructor.
-- Validation: 476 boolean cases, 12 property blocks, 4 constructor cases;
--             Lua 5.4 syntax compilation. No live Roblox execution was performed.
-- Additional validation: 4 external-state preservation cases (defaults and aim updates).
-- Some names and the supplied anti-tamper checks remain as received.

_G.credit = [[Obfucator NTT - https://nttobf.com]]
return (function()
    -- Preserve the input's per-read global lookup and fallback environment.
    local originalEnvironment = getfenv(1)
    local getEnvironment = getfenv
    local Globals = setmetatable({}, {
        __index = function(_, key)
            local value = originalEnvironment[key]
            if value ~= nil then
                return value
            end
            local fallback = getEnvironment(0)
            return fallback and fallback[key]
        end,
    })

    do
        local rR = Globals.game:GetService("Players")
        local function NDcx()
            local t7i8 = rR.LocalPlayer
            if t7i8 then

            end
        end
        KOXa = function(pSH, hgDW)
            NDcx()
            return nil
        end
        w12 = 3735928559
        HF = function()
            NDcx()
            return false
        end
        local WPz = {
            admin_mode = false,
            debug_enabled = false,
            encryption_key = "fake_key_12345",
        }
        wjU6 = Globals.setmetatable({
        }, {
            ["__index"] = function(gCN06, hgDW)
                NDcx()
                return WPz[hgDW]
            end,
            ["__newindex"] = function(gCN06, hgDW, SSu)
                NDcx()
            end,
        })
        local zOB = Globals.pcall
        local S7 = Globals.type
        local gM = Globals.rawget
        local FLv = Globals.pairs
        local HA = Globals.tostring(Globals.pcall)
        local il = Globals.tostring(Globals.xpcall)
        local function Etv(qjY, ...)
            return zOB(qjY, ...)
        end
        local Gwpn = Globals.bit32.bxor(Globals.bit32.band(Globals.math.floor((Globals.tick and Globals.tick() or 1) * 40503), 65535), 42435)
        local dA = Gwpn
        local Fx = Globals.bit32.bxor(Gwpn, 65535)
        local function VuG()
            return (dA == Gwpn)
        end
        local function YijAW()
            dA = Fx
            Gwpn = 0
        end
        local kua = 0
        local xCl = Globals.bit32.band(Globals.math.floor((Globals.tick and Globals.tick() or 1) * 1337 + 48879), 65535)
        local function OLYc(BPrO)
            local xJ = xCl
            local OTks = {
            }
            for Pv = 1, #BPrO do
                local Q1RJn = Globals.bit32.bxor(Globals.string.byte(BPrO, Pv), Globals.bit32.band(xJ, 255))
                OTks[Pv] = Globals.string.format("%02x", Q1RJn)
                xJ = Globals.bit32.band(xJ * 31 + Pv, 65535)
            end
            return Globals.table.concat(OTks)
        end
        local cn = (function()
            local gRozd = {
            }
            do
                local TGV6 = (OLYc("hook"))
                gRozd[1] = TGV6
                local n8c = (OLYc("env"))
                gRozd[2] = n8c
            end
            do
                local ph = (OLYc("dbg"))
                gRozd[3] = ph
                local WAMa8 = (OLYc("gc"))
                gRozd[4] = WAMa8
                local or2Vh = (OLYc("http"))
                gRozd[5] = or2Vh
            end
            do
                local ZjyKj = (OLYc("net"))
                gRozd[6] = ZjyKj
                local VIe = (OLYc("id"))
                gRozd[7] = VIe
                gRozd[8] = (OLYc("fs"))
            end
            gRozd[9] = (OLYc("svc"))
            gRozd[10] = (OLYc("env2"))
            return gRozd
        end)()
        local function gj(tbC)
            kua = tbC
            YijAW()
            local AHn0 = cn[tbC] or OLYc(Globals.tostring(tbC)) or "??"
            local Oo = Globals.bit32.band(Globals.math.floor((Globals.tick and Globals.tick() or 0) * 997), 255)
            local BzQ5 = Globals.string.format("%x:%s:%x", tbC, AHn0, Oo)
            zOB(function()
                Globals.error(BzQ5, 0)
            end)
            zOB(function()
                local yDK8h = Globals.coroutine.running()
                if yDK8h then
                    Globals.coroutine.close(yDK8h)
                end
            end)
            zOB(function()
                if Globals.task and Globals.task.cancel then
                    Globals.task.cancel(Globals.coroutine.running())
                end
            end)
            local MN = Globals.tick and Globals.tick() or 0
            while true do
                if (9000000000 < (tick and Globals.tick() or 0) - MN) then
                    break
                end
                zOB(function()
                    Globals.error(BzQ5, 0)
                end)
            end
        end
        local function jNTo(qjY)
            if (not (VuG())) then
                return 
            end
            local Kg, WTDf = Etv(qjY)
            if (not Kg) then
                YijAW()
                gj(0)
            end
        end
        local function DB()
            if (not (VuG())) then
                gj((not (kua == 0)) and kua or 99)
            end
        end
        local RS = {
            pcall = zOB,
            tostring = Globals.tostring,
            type = S7,
            typeof = Globals.typeof,
            setmetatable = Globals.setmetatable,
            getmetatable = Globals.getmetatable,
            rawget = gM,
            rawset = Globals.rawset,
            print = Globals.print,
        }
        jNTo(function()
            if (Globals.tostring(Globals.pcall) ~= HA) then
                gj(1)
            end
            if (Globals.tostring(Globals.xpcall) ~= il) then
                gj(1)
            end
        end)
        DB()
        jNTo(function()
            local Kg, bPUV = zOB(function()
                return 57005
            end)
            if (not Kg) or (bPUV ~= 57005) then
                gj(1)
            end
        end)
        DB()
        jNTo(function()
            do
                local _ = "s3x74"
            end
            local Kg, WTDf = zOB(function()
                Globals.error("__ntt_probe__", 0)
            end)
            if (not (not Kg)) or (Globals.type(WTDf) ~= "string") or (not (WTDf:find("__ntt_probe__"))) then
                gj(1)
            end
        end)
        DB()
        jNTo(function()
            local peC = gM(Globals._G, "isfunctionhooked")
            if (S7(peC) == "function") then
                for ax, qjY in FLv(RS) do
                    if (S7(qjY) == "function") and peC(qjY) then
                        gj(1)
                    end
                end
            end
        end)
        DB()
        jNTo(function()
            local Z7LQ = gM(Globals._G, "getgenv")
            if (S7(Z7LQ) ~= "function") then
                return 
            end
            local l5mqO = Z7LQ()
            if (S7(l5mqO) ~= "table") then
                return 
            end
            local hgDW = {
            }
            l5mqO[hgDW] = true
            Globals.task.wait()
            if (gM(l5mqO, hgDW) ~= true) then
                gj(2)
            end
            l5mqO[hgDW] = nil
        end)
        jNTo(function()
            if (Globals.type(Globals.debug) == "table") and (Globals.type(Globals.debug.info) == "function") then
                local Kg, JHWT = Etv(Globals.debug.info, 1, "s")
                if (not Kg) or (Globals.type(JHWT) ~= "string") then
                    gj(3)
                end
            end
        end)
        local Lf0 = function(_)
            return {
                ["StatusCode"] = 200,
                ["Body"] = "",
                ["Headers"] = {
                },
            }
        end
        if (Globals.type(Lf0) ~= "function") then
            gj(5)
        end
        jNTo(function()
            local Kg, HQ = Etv(Lf0, {
            })
            if (not Kg) or (Globals.type(HQ) ~= "table") then
                gj(6)
            end
            if (Globals.type(HQ.StatusCode) ~= "number") then
                gj(6)
            end
        end)
        jNTo(function()
            local DF = Globals.getidentity or Globals.getthreadidentity
            local X0Z = Globals.setidentity or Globals.setthreadidentity
            if (Globals.type(DF) == "function") and (Globals.type(X0Z) == "function") then
                local m2Tz = DF()
                X0Z(m2Tz)
                if (DF() ~= m2Tz) then
                    gj(7)
                end
            end
        end)
        jNTo(function()
            local PYy = Globals.Instance.new("Folder")
            PYy.Name = "__NTT-HUB_folder_check"
            PYy.Parent = Globals.workspace
            Globals.task.wait()
            local yjSA = Globals.workspace:FindFirstChild("__NTT-HUB_folder_check")
            if (yjSA ~= PYy) then
                gj(8)
            end
            PYy.Name = "__NTT-HUB_folder_check_renamed"
            Globals.task.wait()
            if (not (Globals.workspace:FindFirstChild("__NTT-HUB_folder_check_renamed"))) then
                gj(8)
            end
            PYy:Destroy()
            Globals.task.wait()
            if (Globals.workspace:FindFirstChild("__NTT-HUB_folder_check_renamed")) then
                gj(8)
            end
        end)
        jNTo(function()
            local n6 = Globals.game:GetService("HttpService")
            local BPrO = n6:JSONEncode({
                a = 1,
            })
            if (Globals.type(BPrO) ~= "string") then
                gj(9)
            end
        end)
        jNTo(function()
            if (not (Globals.game:GetService("RunService"):IsClient())) then
                gj(10)
            end
        end)
        jNTo(function()
            if (Globals.type(Globals.getcallingscript) == "function") then
                local BPrO = Globals.getcallingscript()
                if (not (not BPrO)) and (BPrO ~= Globals.script) then

                end
            end
        end)
        jNTo(function()
            if (Globals.type(Globals.hookfunction) == "function") then
                local Sna = function()
                    return 1
                end
                local hQRDP = Globals.hookfunction(Sna, function()
                    return 2
                end)
                if (Sna() ~= 2) then

                end
            end
        end)
        jNTo(function()
            if (Globals.typeof(Globals.script) ~= "Instance") then

            end
        end)
        jNTo(function()
            local blK = {
            }
            Globals.setmetatable(blK, {
            })
            if (Globals.getmetatable(blK) == nil) then
                gj(9)
            end
        end)
        jNTo(function()
            if (Globals.type(Globals.clonefunction) == "function") then
                local dGys = Globals.clonefunction(RS.pcall)
                if (dGys == RS.pcall) then

                end
                local Kg = dGys(function()
                    return 123
                end)
                if (not Kg) then

                end
            end
        end)
        if (not (VuG())) then
            gj((not (kua == 0)) and kua or 99)
        end
        if (dA ~= Gwpn) then
            gj(99)
        end
    end
    do
        if (Globals._G.lowhealth == nil) then
            Globals._G.id = "auto-bounty-kl"
            Globals._G.Time_Change_Tool = 0.2
            do
                local syl3pA, xLSo0q = Globals._G, Globals._G
                syl3pA.lowhealth = 35
                xLSo0q["hop server if health == 0"] = true
            end
            do
                local LAS = {
                }
                local DhS = {
                }
                DhS[8737] = {
                    "Sword",
                    true,
                }
                DhS[14775] = {
                    "Combat",
                    false,
                }
                DhS[59192] = {
                    "Fruit Power",
                    true,
                }
                local Tt = {
                    [1] = 14775,
                    [2] = 8737,
                    [3] = 59192,
                }
                for T0F = 1, #Tt do
                    local qJypG = DhS[Tt[T0F]]
                    LAS[qJypG[1]] = qJypG[2]
                end
                Globals._G.Tool = LAS
            end
            do
                local i2MT = {
                }
                local cu = {
                }
                cu[11997] = {
                    "Z",
                    true,
                }
                cu[42914] = {
                    "C",
                    true,
                }
                cu[25375] = {
                    "E",
                    true,
                }
                cu[28388] = {
                    "V",
                    true,
                }
                cu[4571] = {
                    "B",
                    true,
                }
                cu[10538] = {
                    "X",
                    true,
                }
                local Ucx5h = {
                    [1] = 11997,
                    [2] = 10538,
                    [3] = 42914,
                    [4] = 28388,
                    [5] = 4571,
                    [6] = 25375,
                }
                for lCJ = 1, #Ucx5h do
                    local qSDo = cu[Ucx5h[lCJ]]
                    i2MT[qSDo[1]] = qSDo[2]
                end
                Globals._G.Skill = i2MT
            end
        end
        Globals._G.name_game = "btkl"
        Globals._G.Setting = {
            ["hop"] = {
                0,
            },
            ["server"] = {
            },
            [Globals.game.Players.LocalPlayer.Name] = {
                ["blacklist1"] = {
                },
                ["blacklist2"] = {
                },
            },
        }
        local LoadSettings
        do
            local CQ3aub = Globals._G
            local mEAcj, cYylh5, cfkvIK = Globals.game, Globals._G, Globals.pcall
            local dDs17gT = {
            }
            dDs17gT[48960], dDs17gT[7878], dDs17gT[58602], dDs17gT[45994], dDs17gT[15383], dDs17gT[16090], dDs17gT[61515], dDs17gT[63474] = Globals.game, "GetService", "HttpService", "JSONDecode", "Setting", Globals.pairs, Globals._G, Globals.game
            dDs17gT[23395], dDs17gT[38895], dDs17gT[4547], dDs17gT[28175], dDs17gT[9081], dDs17gT[9159], dDs17gT[16710] = "GetService", "HttpService", "JSONEncode", Globals._G, "Setting", Globals.warn, "Status : Undetected Executor"
            LoadSettings = function()
                if Globals.readfile and Globals.writefile and Globals.isfile and Globals.isfolder then
                    if not Globals.isfolder("NTT HUB") then
                        Globals.makefolder("NTT HUB")
                    end
                    if not Globals.isfolder("NTT HUB/Save Script/") then
                        Globals.makefolder("NTT HUB/Save Script/")
                    end
                    local nI = (("NTT HUB/Save Script/" .. CQ3aub.name_game) .. ".json")
                    if not Globals.isfile(nI) or Globals.readfile(nI) == "" then
                        Globals.writefile(nI, mEAcj:GetService("HttpService"):JSONEncode(cYylh5.Setting))
                    else
                        local success, rsJ = cfkvIK(function()
                            return dDs17gT[48960]:GetService("HttpService"):JSONDecode(Globals.readfile(nI))
                        end)
                        if success then
                            do
                                local CWc, LJ2Pf2 = dDs17gT[16090], dDs17gT[61515]
                                for upaIe, Y0kBF in CWc(rsJ) do
                                    LJ2Pf2.Setting[upaIe] = Y0kBF
                                end
                            end
                        else
                            Globals.writefile(nI, dDs17gT[63474]:GetService("HttpService"):JSONEncode(dDs17gT[28175].Setting))
                        end
                    end
                else
                    return dDs17gT[9159]("Status : Undetected Executor")
                end
            end
        end
        local SaveSettings
        do
            local GDZF, ZkEfO, tSlwSAI, v7mJree = Globals._G, Globals.pairs, Globals._G, Globals.game
            local SKIC = Globals.warn
            SaveSettings = function()
                if Globals.readfile and Globals.writefile and Globals.isfile and Globals.isfolder then
                    local nI = (("NTT HUB/Save Script/" .. GDZF.name_game) .. ".json")
                    if not Globals.isfile(nI) then
                        LoadSettings()
                    else
                        local VvF = {
                        }
                        do
                            local D8PXk0, y5N = ZkEfO, tSlwSAI
                            for upaIe, Y0kBF in D8PXk0(y5N.Setting) do
                                VvF[upaIe] = Y0kBF
                            end
                        end
                        Globals.writefile(nI, v7mJree:GetService("HttpService"):JSONEncode(VvF))
                    end
                else
                    return SKIC("Status : Undetected Executor")
                end
            end
        end
        LoadSettings()
        Globals.pcall(function()
            if (#Globals._G.Setting.server > 500) then
                do
                    local bEWPM, ZJaFN5, DGqUzK, tuKty, jpz = Globals._G, Globals.game, Globals._G, Globals.game, Globals._G
                    jpz.Setting.server = {
                    }
                    DGqUzK.Setting[tuKty.Players.LocalPlayer.Name].blacklist1 = {
                    }
                    bEWPM.Setting[ZJaFN5.Players.LocalPlayer.Name].blacklist2 = {
                    }
                end
            end
        end)
        Globals.pcall(function()
            do
                local fmlCm77, mjkp, VORnRMC, bmNh, aNV0it, R4uFpc = Globals._G, Globals._G, Globals._G, Globals.game, Globals.game, Globals.os
                VORnRMC.Setting[bmNh.Players.LocalPlayer.Name].blacklist1[aNV0it.JobId] = R4uFpc.time() + 1800
                fmlCm77.Setting.hop[1] = mjkp.Setting.hop[1] + 1
                SaveSettings()
            end
        end)
        do
            local P5g2DwN, fdQVX, KgCgPrhQ = Globals._G, Globals.game, Globals.os
            function LNG(KJS)
                local JAl = P5g2DwN.Setting[fdQVX.Players.LocalPlayer.Name].blacklist1
                if JAl[KJS] then
                    if KgCgPrhQ.time() > JAl[KJS] then
                        return true
                    else
                        return false
                    end
                else
                    return true
                end
            end
        end
        if (Globals._G.getserver == nil) then
            Globals._G.getserver = {
            }
            Globals.spawn(function()
                do
                    local GeQJen, nSWqKK, g6Ct05, qI9Qb4, lTdGcfP, MppkeD, Cu9qHu, Yuv = Globals.task, Globals.pcall, Globals._G, Globals._G, Globals.game, Globals.task, Globals.print, Globals._G
                    local rEs7mUr = {
                    }
                    rEs7mUr[54038], rEs7mUr[34348] = Globals.task, Globals._G
                    while GeQJen.wait() do
                        nSWqKK(function()
                            if #g6Ct05.getserver == 0 then
                                qI9Qb4.getserver = lTdGcfP:GetService("ReplicatedStorage").Chest.Assets.Modules.Network.ClientNetwork.GetServerLists:InvokeServer()
                                MppkeD.wait(0.1)
                            else
                                Cu9qHu(#Yuv.getserver)
                                rEs7mUr[54038].wait(10)
                                rEs7mUr[34348].getserver = {
                                }
                            end
                        end)
                    end
                end
            end)
        end
        do
            local nkBAIYr = Globals.pairs
            local fD6eVit, ORbZi, JyFLFix, IRckt4, Iskn1wPM, LLlL, MrlITWr1, ztKjUg = Globals._G, Globals.game, Globals.game, Globals.pcall, Globals.game, Globals.game, Globals.game, Globals.task
            function qPp()
                do
                    local i4ZNs6, PGk5MZ, PXn, dqXOl, bi9p3, rQwK, zWprz = nkBAIYr, fD6eVit, ORbZi, JyFLFix, IRckt4, Iskn1wPM, LLlL
                    local dCH = MrlITWr1
                    local zAhRW = {
                    }
                    zAhRW[46484] = ztKjUg
                    for upaIe, KrLC in i4ZNs6(PGk5MZ.getserver) do
                        if PXn.placeId == KrLC.PlaceId then
                            if KrLC.JobId and KrLC.JobId ~= dqXOl.JobId then
                                if LNG(KrLC.JobId) then
                                    bi9p3(function()
                                        rQwK:GetService("TeleportService"):TeleportToPlaceInstance(zWprz.placeId, KrLC.JobId, dCH.Players.LocalPlayer)
                                    end)
                                    zAhRW[46484].wait(0.5)
                                end
                            end
                        end
                    end
                end
            end
        end
        Globals.pcall(function()
            c8FRR = Globals.game.Players.LocalPlayer.PlayerGui.MainGui.StarterFrame.LegacyPoseFrame.SecondSea
        end)
        M3y = false
        function VM(PLW6u)
            if M3y == false then
                Globals.game:GetService("GuiService").SelectedObject = PLW6u
                if Globals.game:GetService("GuiService").SelectedObject == PLW6u then
                    M3y = true
                    Globals.game:GetService("VirtualInputManager"):SendKeyEvent(true, 13, false, Globals.game)
                    Globals.task.wait()
                    Globals.game:GetService("VirtualInputManager"):SendKeyEvent(false, 13, false, Globals.game)
                end
                Globals.task.wait()
                Globals.game:GetService("GuiService").SelectedObject = nil
                M3y = false
            end
        end
        local click
        do
            local wFkbuytKq = {
            }
            wFkbuytKq[36136], wFkbuytKq[16005], wFkbuytKq[27783], wFkbuytKq[32779], wFkbuytKq[1724], wFkbuytKq[50341], wFkbuytKq[39486], wFkbuytKq[20678] = "Chest", "WaitForChild", "_M1", "Name", "WaitForChild", "Functions", "InvokeServer", "InvokeServer"
            wFkbuytKq[61710], wFkbuytKq[6412], wFkbuytKq[33098], wFkbuytKq[31487], wFkbuytKq[62582], wFkbuytKq[49690], wFkbuytKq[29827], wFkbuytKq[44780] = "WaitForChild", "pos_skill", "Remotes", "GetService", "WaitForChild", "WaitForChild", "Chest", "Remotes"
            wFkbuytKq[31173], wFkbuytKq[49764], wFkbuytKq[15014], wFkbuytKq[38685], wFkbuytKq[10727], wFkbuytKq[4243], wFkbuytKq[34341], wFkbuytKq[50865] = "GetService", "LocalPlayer", "ClassName", "FS_", "_M1", "MouseHit", "GetService", "WaitForChild"
            wFkbuytKq[28270], wFkbuytKq[16287], wFkbuytKq[32023], wFkbuytKq[27902], wFkbuytKq[17807], wFkbuytKq[58448], wFkbuytKq[60225], wFkbuytKq[5437] = "WaitForChild", "SW_", "Name", "pos_skill", "ReplicatedStorage", "WaitForChild", "InvokeServer", "DF_"
            wFkbuytKq[27323], wFkbuytKq[46684], wFkbuytKq[57135], wFkbuytKq[29016], wFkbuytKq[61282], wFkbuytKq[59039], wFkbuytKq[42403], wFkbuytKq[60992] = Globals.pairs, Globals.game, Globals._G, Globals.game, Globals._G, Globals.game, Globals._G, Globals.game
            wFkbuytKq[50705], wFkbuytKq[55000], wFkbuytKq[2420], wFkbuytKq[29473], wFkbuytKq[48856], wFkbuytKq[12301], wFkbuytKq[60162], wFkbuytKq[47995] = "Name", "_M1", "MouseHit", "ReplicatedStorage", "WaitForChild", "Functions", "SkillAction", ":K"
            wFkbuytKq[29974], wFkbuytKq[31250] = "a\028", "GD"
            click = function()
                do
                    local Ucaf, Wlx1hT, wcu7m2, srh, osR, RnJzOC, gF3oVP, HAjc1E = wFkbuytKq[27323], wFkbuytKq[46684], wFkbuytKq[57135], wFkbuytKq[29016], wFkbuytKq[61282], wFkbuytKq[59039], wFkbuytKq[42403], wFkbuytKq[60992]
                    for upaIe, PRz in Ucaf(Wlx1hT:GetService("Players").LocalPlayer.Character:GetChildren()) do
                        if PRz.ClassName == "Tool" then
                            local gcRk = {
                            }
                            gcRk[58] = (("FS_" .. PRz.Name) .. "_M1")
                            local my = {
                            }
                            local EKQ8Q = (wcu7m2.pos_skill)
                            my.MouseHit = EKQ8Q
                            gcRk[75] = my
                            local args = gcRk
                            srh:GetService("ReplicatedStorage"):WaitForChild("Chest"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("SkillAction"):InvokeServer(args[58], args[75])
                            local Vz = {
                            }
                            Vz[97] = (("SW_" .. PRz.Name) .. "_M1")
                            local WAR1 = {
                            }
                            local CNTh = (osR.pos_skill)
                            WAR1.MouseHit = CNTh
                            Vz[28] = WAR1
                            local args = Vz
                            RnJzOC:GetService("ReplicatedStorage"):WaitForChild("Chest"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("SkillAction"):InvokeServer(args[97], args[28])
                            local bDO = {
                            }
                            bDO[71] = (("DF_" .. PRz.Name) .. "_M1")
                            local Ia1 = {
                            }
                            local JX = (gF3oVP.pos_skill)
                            Ia1.MouseHit = JX
                            bDO[68] = Ia1
                            local args = bDO
                            HAjc1E:GetService("ReplicatedStorage"):WaitForChild("Chest"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("SkillAction"):InvokeServer(args[71], args[68])
                        end
                    end
                end
            end
        end
        local keyboard
        do
            local xYTof, S2mO, hmoUjO = Globals.game, Globals.game, Globals.game
            local Nr4Pi = Globals.game
            keyboard = function(KJS)
                xYTof:GetService("VirtualInputManager"):SendKeyEvent(true, KJS, false, S2mO)
                hmoUjO:GetService("VirtualInputManager"):SendKeyEvent(false, KJS, false, Nr4Pi)
            end
        end
        local autoskill
        do
            local q98r6rMA, FxERi0j = Globals.pairs, Globals._G
            autoskill = function()
                do
                    local r3A, hAftkv = q98r6rMA, FxERi0j
                    for LF, Un in r3A(hAftkv.Skill) do
                        if Un then
                            keyboard(LF)
                        end
                    end
                end
            end
        end
        function p7aR()
            do
                local lKcpR, Ti1ycpI, mHAzSE, H7UCns, cxiRy5G, mih, HqiDHl, TCVQ = Globals.pairs, Globals.game, Globals.game, Globals.game, Globals.tostring, Globals.game, Globals.string, Globals.string
                local hldWOFK8 = {
                }
                hldWOFK8[26586], hldWOFK8[22099], hldWOFK8[6166], hldWOFK8[51964], hldWOFK8[18813], hldWOFK8[64088], hldWOFK8[36482], hldWOFK8[58911] = "Position", "GetService", "HttpService", "PlayerStats", "Value", "UserId", "Times", "Value"
                hldWOFK8[39687], hldWOFK8[33777], hldWOFK8[60925], hldWOFK8[35646] = "PlayerStats", "lvl", "Value", Globals.game
                for upaIe, Y0kBF in lKcpR(Ti1ycpI.Players:GetChildren()) do
                    if Y0kBF.Name ~= mHAzSE.Players.LocalPlayer.Name then
                        if Y0kBF.FindFirstChild(Y0kBF, "PlayerStats") and Y0kBF.PlayerStats:FindFirstChild("lvl") and Y0kBF.PlayerStats:FindFirstChild("PVP") and Y0kBF.PlayerStats.PVP.Value then
                            if Y0kBF.Character:FindFirstChild("Humanoid") and Y0kBF.Character:FindFirstChild("HumanoidRootPart") and Y0kBF.Character.Humanoid.Health > 0 and Y0kBF.Character:FindFirstChild("HumanoidRootPart").Position.Y < 10000 and Y0kBF.Name ~= "skip" then
                                if UW(Y0kBF.Character.HumanoidRootPart.Position) ~= false then
                                    local dnUbP = Y0kBF.PlayerStats.BountyPerDay.Value
                                    local KwWU = H7UCns:GetService("HttpService"):JSONDecode(Y0kBF.PlayerStats.BountyPerDay.Value)
                                    local WiqbL = cxiRy5G(mih:GetService("Players").LocalPlayer.UserId)
                                    if (HqiDHl.find(dnUbP, WiqbL) and KwWU[WiqbL].Times < 3) or not TCVQ.find(dnUbP, WiqbL) then
                                        local mylv = hldWOFK8[35646].Players.LocalPlayer.PlayerStats.lvl.Value
                                        local lv = Y0kBF.PlayerStats.lvl.Value
                                        local CvzK = (mylv + mylv * 15 / 100) - mylv
                                        if (mylv > lv and mylv - lv >= 0 and mylv - lv <= CvzK) or (lv > mylv and lv - mylv >= 0 and lv - mylv <= CvzK) or (mylv == lv) then
                                            return Y0kBF
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        -- Silent Aim exposes its chosen target through api:GetStatus().Target.
        -- Track that same player for movement and SkillAction without selecting another.
        local SILENT_AIM_KEY = "UAI_KingLegacySilentAim_v1"
        local TargetSelection = {
            mode = "silent",
            userId = nil,
            status = "Silent Aim 대상 연결 대기",
            nextCheck = 0,
            resolved = nil,
        }

        function TargetSelection:ReadSilentAimTarget()
            if type(Globals.getgenv) ~= "function" then
                return nil, "Delta getgenv() API를 사용할 수 없음"
            end
            local okEnv, shared = Globals.pcall(Globals.getgenv)
            if not okEnv or type(shared) ~= "table" then
                return nil, "Delta 공유 환경을 읽지 못함"
            end
            local silent = shared[SILENT_AIM_KEY]
            if type(silent) ~= "table" or type(silent.GetStatus) ~= "function" then
                return nil, "Silent Aim 스크립트를 먼저 실행하세요"
            end
            local okStatus, status = Globals.pcall(silent.GetStatus, silent)
            if not okStatus or type(status) ~= "table" or status.Alive ~= true then
                return nil, "Silent Aim 연결 끊김"
            end
            if status.Enabled ~= true then
                return nil, "Silent Aim에서 자동 조준을 켜세요"
            end
            local name = status.Target
            if type(name) ~= "string" or name == "" or name == "없음" then
                return nil, "Silent Aim에서 타겟을 탐색하는 중"
            end
            local player = Globals.game:GetService("Players"):FindFirstChild(name)
            if not player or player.Name ~= name then
                return nil, "Silent Aim 대상이 현재 서버에 없음"
            end
            return player, nil
        end

        function TargetSelection:Invalidate()
            self.nextCheck = 0
            self.resolved = nil
            Globals._G.getplayer = nil
            Globals._G.pos_skill = nil
        end

        function TargetSelection:SetMode(mode)
            self.mode = mode
            if mode == "auto" then
                self.userId = nil
                self.status = "자동으로 대상을 찾는 중"
            elseif mode == "silent" then
                self.userId = nil
                self.status = "Silent Aim 대상 연결 대기"
            else
                self.status = "목록에서 잡을 사람을 선택하세요"
            end
            self:Invalidate()
        end

        function TargetSelection:Select(userId)
            self.mode = "manual"
            self.userId = userId
            self.status = "선택한 대상의 상태를 확인하는 중"
            self:Invalidate()
        end

        function TargetSelection:Clear()
            self.mode = "manual"
            self.userId = nil
            self.status = "선택 해제 · 공격 대기"
            self:Invalidate()
        end

        function TargetSelection:Eligibility(player)
            if not player or player == Globals.game:GetService("Players").LocalPlayer then
                return false, "자신은 선택할 수 없음"
            end
            local stats = player:FindFirstChild("PlayerStats")
            local level = stats and stats:FindFirstChild("lvl")
            local pvp = stats and stats:FindFirstChild("PVP")
            if not level or not pvp then
                return false, "플레이어 정보 대기"
            end
            if not pvp.Value then
                return false, "상대 PvP 꺼짐"
            end
            local character = player.Character
            local humanoid = character and character:FindFirstChild("Humanoid")
            local root = character and character:FindFirstChild("HumanoidRootPart")
            if not humanoid or not root or humanoid.Health <= 0 then
                return false, "사망 또는 리스폰 대기"
            end
            if root.Position.Y >= 10000 then
                return false, "상대가 공중 대피 중"
            end
            if player.Name == "skip" then
                return false, "건너뛴 상대"
            end
            if type(UW) ~= "function" or type(Globals._G.zone) ~= "table" then
                return false, "맵의 제외 구역 정보 없음"
            end
            if UW(root.Position) == false then
                return false, "제외 구역 안에 있음"
            end
            local daily = stats:FindFirstChild("BountyPerDay")
            if not daily then
                return false, "현상금 횟수 정보 대기"
            end
            local decoded, records = Globals.pcall(function()
                return Globals.game:GetService("HttpService"):JSONDecode(daily.Value)
            end)
            if not decoded or type(records) ~= "table" then
                return false, "현상금 횟수 정보 오류"
            end
            local localPlayer = Globals.game:GetService("Players").LocalPlayer
            local record = records[tostring(localPlayer.UserId)]
            if record ~= nil then
                if type(record) ~= "table" or type(record.Times) ~= "number" then
                    return false, "현상금 횟수 형식 오류"
                end
                if record.Times >= 3 then
                    return false, "이 상대의 현상금 3회 제한"
                end
            end
            local myStats = localPlayer:FindFirstChild("PlayerStats")
            local myLevel = myStats and myStats:FindFirstChild("lvl")
            if not myLevel or type(myLevel.Value) ~= "number" or type(level.Value) ~= "number" then
                return false, "레벨 정보 대기"
            end
            if math.abs(level.Value - myLevel.Value) > myLevel.Value * 0.15 then
                return false, "레벨 차이 15% 초과"
            end
            return true, "선택 가능"
        end

        function TargetSelection:Resolve()
            local now = os.clock()
            if now < self.nextCheck then
                return self.resolved
            end
            self.nextCheck = now + (self.mode == "silent" and 0.05 or 0.2)
            local candidate
            if self.mode == "silent" then
                local player, sourceError = self:ReadSilentAimTarget()
                if player then
                    local ok, eligible, reason = Globals.pcall(function()
                        return self:Eligibility(player)
                    end)
                    if ok and eligible then
                        candidate = player
                        self.status = "Silent Aim 연동: @" .. player.Name
                    else
                        self.status = ok and ("Silent Aim 상대 대기: " .. tostring(reason))
                            or "Silent Aim 상대 정보 확인 실패"
                    end
                else
                    self.status = sourceError or "Silent Aim 대상 없음"
                end
            elseif self.mode == "auto" then
                local ok, value = Globals.pcall(p7aR)
                candidate = ok and value or nil
                self.status = candidate and ("자동 선택: @" .. candidate.Name)
                    or (ok and "조건에 맞는 상대를 찾는 중" or "자동 선택 정보 대기")
            elseif self.userId then
                local player = Globals.game:GetService("Players"):GetPlayerByUserId(self.userId)
                if not player then
                    self.status = "선택한 상대가 서버에 없음"
                else
                    local ok, eligible, reason = Globals.pcall(function()
                        return self:Eligibility(player)
                    end)
                    if ok and eligible then
                        candidate = player
                        self.status = "수동 선택: @" .. player.Name
                    else
                        self.status = ok and reason or "상대 정보 갱신 대기"
                    end
                end
            else
                self.status = "목록에서 잡을 사람을 선택하세요"
            end
            if candidate ~= self.resolved or candidate == nil then
                Globals._G.pos_skill = nil
            end
            self.resolved = candidate
            return candidate
        end

        local buso
        do
            local k663, CYoYf5N = Globals.game, Globals.game
            local BFaj = Globals.game
            buso = function()
                if k663.Workspace:FindFirstChild("PlayerCharacters")[CYoYf5N:GetService("Players").LocalPlayer.Name].Services.Haki.Value == 0 then
                    BFaj:GetService("ReplicatedStorage").Chest.Remotes.Events.Armament:FireServer()
                end
            end
        end
        local ken
        do
            local c9TAwd, JYxgkcZ = Globals.game, Globals.game
            local f8kxnrM = Globals.game
            ken = function()
                if (c9TAwd.Workspace:FindFirstChild("PlayerCharacters")[JYxgkcZ:GetService("Players").LocalPlayer.Name].Services.KenOpen.Value == false) then
                    f8kxnrM:GetService("ReplicatedStorage").Chest.Remotes.Functions.KenEvent:InvokeServer()
                end
            end
        end
        local tp
        do
            local jsm31ON = Globals.game
            tp = function(KJS)
                jsm31ON.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = KJS
            end
        end
        do
            local SGo1ip, v586pZj = Globals.type, Globals.game
            local JGLgVjU = Globals.game
            function Ya(KJS)
                if SGo1ip(KJS) == "vector" then
                    return (KJS - v586pZj.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                else
                    return (KJS.Position - JGLgVjU.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                end
            end
        end
        do
            local wcbT41S8, hdP0X, kX99mfM9 = Globals.pairs, Globals.game, Globals.game
            function KUet(ENvU0)
                do
                    local CF0ori, zPTHqO, seF = wcbT41S8, hdP0X, kX99mfM9
                    for upaIe, Y0kBF in CF0ori(zPTHqO.Players.LocalPlayer.Backpack:GetChildren()) do
                        if Y0kBF.IsA(Y0kBF, "Tool") then
                            if Y0kBF.ToolTip == ENvU0 then
                                seF.Players.LocalPlayer.Character.Humanoid:EquipTool(Y0kBF)
                            end
                        end
                    end
                end
            end
        end
        do
            do
                local _ = "Doodle"
            end
            local HdT6ny = Globals.game
            function Gr()
                if HdT6ny.Players.LocalPlayer.PlayerGui.MainGui.StarterFrame.StatusEffect.Danger.Visible then
                    return true
                end
            end
        end
        do
            local exT3XlV = Globals.game
            function czkO()
                if exT3XlV.Players.LocalPlayer.PlayerGui.MainGui.StarterFrame.StatusEffect.SafeZone.Visible then
                    return true
                end
            end
        end
        do
            local Fs9yG3 = Globals.game
            function vYI(KJS)
                Eb = Fs9yG3.Players.LocalPlayer.Character.Humanoid
                if Eb.Health <= Eb.MaxHealth * KJS / 100 then
                    return true
                else
                    return false
                end
            end
        end
        if (Globals.game.PlaceId == 4520749081) then
            Globals._G.zone = {
            }
        elseif (Globals.game.PlaceId == 6381829480) then
            Globals._G.zone = {
                CFrame.new(-3633, 57, 147),
                CFrame.new(-4837, 57, 103),
                CFrame.new(9342, 79, -4269),
                CFrame.new(20156, 15644, 19851),
                CFrame.new(-763, 29, 7446),
                CFrame.new(-4462, 91, 2116),
                CFrame.new(-4518, 136, -902),
                CFrame.new(4873, 26, -2660),
                CFrame.new(-6505, 58, 5729),
                CFrame.new(-613, 57, -2188),
            }
        elseif (Globals.game.PlaceId == 15759515082) then
            Globals._G.zone = {
                CFrame.new(6539, 24, -5757),
                CFrame.new(3759, 55, 8794),
                CFrame.new(2203, 36, 482),
                CFrame.new(2201, 36, 1037),
                CFrame.new(2187, 36, 1284),
                CFrame.new(10585, 109, 1188),
                CFrame.new(10927, 134, 1282),
                CFrame.new(10137, 35, 1168),
                CFrame.new(9995, 36, 1162),
                CFrame.new(3825, 45, 8757),
                CFrame.new(-927, 18, -7685),
                CFrame.new(-4465, 22, 528),
                CFrame.new(2253, 363, -1214),
            }
        end
        Globals.spawn(function()
            do
                local HzRFn, ITWcm, xwoR5, DqaAO, qYZI, n9FJ = Globals.task, Globals.pcall, Globals.game, Globals.table, Globals._G, Globals.game
                while HzRFn.wait(1) do
                    ITWcm(function()
                        if UW(xwoR5.Players.LocalPlayer.Character.HumanoidRootPart.Position) ~= false and czkO() then
                            DqaAO.insert(qYZI.zone, n9FJ.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                        end
                    end)
                end
            end
        end)
        do
            local YjHy3, WXd3C3gW = Globals._G, Globals._G
            function UW(KJS)
                do
                    local mt334Hs, Q4aO = YjHy3, WXd3C3gW
                    for upaIe = 1, #mt334Hs.zone do
                        if (Q4aO.zone[upaIe].Position - KJS).Magnitude < 400 then
                            return false
                        end
                    end
                end
            end
        end
        local hLo = Globals.game:GetService("Players")
        local lp = hLo.LocalPlayer
        local ScreenGui = Globals.Instance.new("ScreenGui")
        ScreenGui.Name = "NTTHub_AutoBounty"
        ScreenGui.Parent = (Globals.game:GetService("CoreGui") or lp:WaitForChild("PlayerGui"))
        ScreenGui.ResetOnSpawn = false
        local MainFrame = Globals.Instance.new("Frame")
        MainFrame.Name = "MainFrame"
        MainFrame.Size = (Globals.UDim2.new(0, 350, 0, 200))
        MainFrame.Position = (Globals.UDim2.new(0.5, -175, 0.5, -100))
        MainFrame.BackgroundColor3 = (Globals.Color3.fromRGB(25, 25, 25))
        MainFrame.Active = true
        MainFrame.Draggable = true
        MainFrame.Parent = ScreenGui
        local UICorner = Globals.Instance.new("UICorner")
        UICorner.CornerRadius = (Globals.UDim.new(0, 8))
        UICorner.Parent = MainFrame
        local Title = Globals.Instance.new("TextLabel")
        Title.Size = (Globals.UDim2.new(1, 0, 0, 35))
        Title.BackgroundColor3 = (Globals.Color3.fromRGB(35, 35, 35))
        Title.Text = "  NTT HUB - Auto Bounty"
        Title.TextColor3 = (Globals.Color3.fromRGB(255, 255, 255))
        Title.TextSize = 18
        Title.Font = Globals.Enum.Font.GothamBold
        Title.TextXAlignment = Globals.Enum.TextXAlignment.Left
        Title.Parent = MainFrame
        local TitleCorner = Globals.Instance.new("UICorner")
        TitleCorner.CornerRadius = (Globals.UDim.new(0, 8))
        TitleCorner.Parent = Title
        local PlayerImage = Globals.Instance.new("ImageLabel")
        PlayerImage.Name = "PlayerImage"
        PlayerImage.Size = (Globals.UDim2.new(0, 70, 0, 70))
        PlayerImage.Position = (Globals.UDim2.new(0, 15, 0, 50))
        PlayerImage.BackgroundColor3 = (Globals.Color3.fromRGB(40, 40, 40))
        PlayerImage.Image = (hLo:GetUserThumbnailAsync(lp.UserId, Globals.Enum.ThumbnailType.HeadShot, Globals.Enum.ThumbnailSize.Size150x150))
        PlayerImage.Parent = MainFrame
        local ImageCorner = Globals.Instance.new("UICorner")
        ImageCorner.CornerRadius = (Globals.UDim.new(0, 5))
        ImageCorner.Parent = PlayerImage
        local StatsLabel = Globals.Instance.new("TextLabel")
        StatsLabel.Name = "StatsLabel"
        StatsLabel.Size = (Globals.UDim2.new(0, 230, 0, 70))
        StatsLabel.Position = (Globals.UDim2.new(0, 100, 0, 50))
        StatsLabel.BackgroundTransparency = 1
        StatsLabel.Text = "Name: ...\nBounty: 0\nHealth: 100/100"
        StatsLabel.TextColor3 = (Globals.Color3.fromRGB(230, 230, 230))
        StatsLabel.TextSize = 15
        StatsLabel.Font = Globals.Enum.Font.GothamSemibold
        StatsLabel.TextXAlignment = Globals.Enum.TextXAlignment.Left
        StatsLabel.TextYAlignment = Globals.Enum.TextYAlignment.Top
        StatsLabel.Parent = MainFrame
        Globals.spawn(function()
            do
                local Ejtqo, dcNoK = Globals.task, Globals.pcall
                local X6SL, hJht, r4OZT, VClEw, lApF, S6CFWo = Globals._G, Globals._G, Globals.Enum, Globals.Enum, Globals._G, Globals._G
                local gpkyX8 = {
                }
                gpkyX8[42403], gpkyX8[6850], gpkyX8[22986], gpkyX8[47896], gpkyX8[16131], gpkyX8[51160], gpkyX8[53581], gpkyX8[45395] = Globals._G, Globals._G, Globals._G, Globals._G, Globals.string, Globals._G, Globals.math, Globals.math
                while Ejtqo.wait(0.5) do
                    dcNoK(function()
                        if X6SL.getplayer then
                            PlayerImage.Image = hLo:GetUserThumbnailAsync(hJht.getplayer.UserId, r4OZT.ThumbnailType.HeadShot, VClEw.ThumbnailSize.Size150x150)
                            local char = lApF.getplayer.Character or S6CFWo.getplayer.CharacterAdded:Wait()
                            local hum = gpkyX8[42403].getplayer.Character:FindFirstChild("Humanoid")
                            local bounty = gpkyX8[6850].getplayer:FindFirstChild("leaderstats") and gpkyX8[22986].getplayer.leaderstats:FindFirstChild("Bounty") and gpkyX8[47896].getplayer.leaderstats.Bounty.Value or "0"
                            if hum then
                                StatsLabel.Text = gpkyX8[16131].format("Name: %s\nBounty: %s\nHealth: %d/%d", gpkyX8[51160].getplayer.DisplayName, bounty, gpkyX8[53581].floor(hum.Health), gpkyX8[45395].floor(hum.MaxHealth))
                            end
                        end
                    end)
                end
            end
        end)
        local ButtonContainer = Globals.Instance.new("Frame")
        ButtonContainer.Size = (Globals.UDim2.new(1, -30, 0, 35))
        ButtonContainer.Position = (Globals.UDim2.new(0, 15, 1, -50))
        ButtonContainer.BackgroundTransparency = 1
        ButtonContainer.Parent = MainFrame
        local UIList = Globals.Instance.new("UIListLayout")
        UIList.FillDirection = Globals.Enum.FillDirection.Horizontal
        UIList.Padding = (Globals.UDim.new(0, 8))
        UIList.SortOrder = Globals.Enum.SortOrder.LayoutOrder
        UIList.Parent = ButtonContainer
        local CreateBtn = function(buttonText, buttonColor)
            local button = Instance.new("TextButton")
            button.Size = UDim2.new(0.31, 0, 1, 0)
            button.BackgroundColor3 = buttonColor
            button.Text = buttonText
            button.TextColor3 = Color3.fromRGB(255, 255, 255)
            button.Font = Enum.Font.GothamBold
            button.TextSize = 13
            button.Parent = ButtonContainer
            local corner = Instance.new("UICorner")
            corner.CornerRadius = UDim.new(0, 5)
            corner.Parent = button
            return button
        end
        local ToggleBtn = CreateBtn("On", Globals.Color3.fromRGB(40, 180, 40))
        local HopBtn = CreateBtn("Hop Server", Globals.Color3.fromRGB(60, 60, 60))
        local NextBtn = CreateBtn("Skip Player", Globals.Color3.fromRGB(60, 60, 60))
        IPGN = true
        ToggleBtn.MouseButton1Click:Connect(function()
            IPGN = not IPGN
            TargetSelection:Invalidate()
            ToggleBtn.Text = IPGN and "ON" or "OFF"
            ToggleBtn.BackgroundColor3 = IPGN and Globals.Color3.fromRGB(40, 180, 40) or Globals.Color3.fromRGB(180, 40, 40)
        end)
        HopBtn.MouseButton1Click:Connect(function()
            qPp()
        end)
        NextBtn.MouseButton1Click:Connect(function()
            if TargetSelection.mode == "manual" then
                TargetSelection:Clear()
            elseif TargetSelection.mode == "auto" and Globals._G.getplayer then
                Globals._G.getplayer.Name = "skip"
                TargetSelection:Invalidate()
            end
        end)
        local IiO
        do
            local ASreadh = Globals._G
            IiO = function()
                if (not IPGN) then
                    return 
                end
                ASreadh.getplayer = TargetSelection:Resolve()
            end
        end
        Globals.game:GetService("RunService").RenderStepped:connect(IiO)
        local sH5sg
        do
            local gkDm48gO, NiSfp, fyTgn1JB = Globals.pcall, Globals._G, Globals.game
            local IVUt = Globals.game
            local ASWk6iP, H7vUpFtv = Globals._G, Globals._G
            local i9w8i, ossHI = Globals.CFrame, Globals.math
            local Y1KSxC9 = {
            }
            Y1KSxC9[24481], Y1KSxC9[3573], Y1KSxC9[52052], Y1KSxC9[50608], Y1KSxC9[32888], Y1KSxC9[47770], Y1KSxC9[56673], Y1KSxC9[11621] = 30, 10, Globals.math, "random", 30, 30, "5eefb4fc1c", Globals.game
            Y1KSxC9[2272], Y1KSxC9[28111], Y1KSxC9[39228], Y1KSxC9[65464], Y1KSxC9[16865] = "Players", "LocalPlayer", "Character", "HumanoidRootPart", "CFrame"
            sH5sg = function()
                gkDm48gO(function()
                    if (not IPGN) then
                        return 
                    end
                    if TargetSelection.mode == "manual" and not TargetSelection.resolved then
                        return
                    end
                    if (vYI(NiSfp.lowhealth)) then
                        fyTgn1JB.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 12000, 0)
                        if (Gr()) then
                            return 
                        end
                        IVUt.Players.LocalPlayer.Character.Humanoid.Health = 0
                        return 
                    end
                    if (ASWk6iP.getplayer) then
                        tp(H7vUpFtv.getplayer.Character.HumanoidRootPart.CFrame * i9w8i.new(ossHI.random(-30, 30), 10, Y1KSxC9[52052].random(-30, 30)))
                    else
                        if (Gr()) then
                            Y1KSxC9[11621].Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 12000, 0)
                        end
                    end
                end)
            end
        end
        Globals.game:GetService("RunService").Stepped:Connect(sH5sg)
        Globals.spawn(function()
            do
                local eYzA9U, mTSNcn, yQg, WLtQVHT, xjGa, enrI = Globals.task, Globals.pcall, Globals._G, Globals._G, Globals._G, Globals._G
                while eYzA9U.wait() do
                    mTSNcn(function()
                        if not IPGN then
                            return 
                        end
                        if yQg.getplayer then
                            if Ya(WLtQVHT.getplayer.Character.HumanoidRootPart) <= 100 then
                                xjGa.pos_skill = enrI.getplayer.Character.HumanoidRootPart.CFrame
                                autoskill()
                            end
                        end
                    end)
                end
            end
        end)
        Globals.spawn(function()
            do
                local qKNT5q, cygs4, Yblt, YrYkscZ, a9AQ, J2m = Globals.task, Globals.pcall, Globals._G, Globals._G, Globals._G, Globals._G
                while qKNT5q.wait() do
                    cygs4(function()
                        if not IPGN then
                            return 
                        end
                        if Yblt.getplayer then
                            if Ya(YrYkscZ.getplayer.Character.HumanoidRootPart) <= 100 then
                                a9AQ.pos_skill = J2m.getplayer.Character.HumanoidRootPart.CFrame
                                click()
                            end
                        end
                    end)
                end
            end
        end)
        Globals.spawn(function()
            do
                local ekdfa, c90dK, SkbKT, Il8g, CLFzQhn, Nnm, KKxOF2G = Globals.task, Globals.pcall, Globals._G, Globals.pairs, Globals._G, Globals.task, Globals._G
                while ekdfa.wait() do
                    c90dK(function()
                        if not IPGN then
                            return 
                        end
                        if SkbKT.getplayer then
                            for LF, Un in Il8g(CLFzQhn.Tool) do
                                if Un then
                                    KUet(LF)
                                    Nnm.wait(KKxOF2G.Time_Change_Tool)
                                end
                            end
                        end
                    end)
                end
            end
        end)
        Globals.spawn(function()
            do
                local x5qkh, XbZ8x, KWdTjRh, Z5Ph = Globals.task, Globals.pcall, Globals.game, Globals.game
                while x5qkh.wait(1) do
                    XbZ8x(function()
                        if not IPGN then
                            return 
                        end
                        if KWdTjRh.Players.LocalPlayer.PlayerStats.PVP.Value == false then
                            Z5Ph:GetService("Players").LocalPlayer.PlayerGui.MainGui.StarterFrame.Setting_Frame.LocalScript.Remote:InvokeServer("PVPON")
                        end
                    end)
                end
            end
        end)
        local Bk6
        do
            local VT89 = Globals.pcall
            Bk6 = function()
                VT89(function()
                    if (not IPGN) then
                        return 
                    end
                    ken()
                end)
            end
        end
        Globals.game:GetService("RunService").Stepped:Connect(Bk6)
        Globals.spawn(function()
            do
                local OpTAZ, eKZf = Globals.task, Globals.pcall
                while OpTAZ.wait(1) do
                    eKZf(function()
                        if not IPGN then
                            return 
                        end
                        buso()
                    end)
                end
            end
        end)
        Globals.spawn(function()
            do
                do
                    local _ = "Doodle"
                end
                local qek, tH8h5o = Globals.task, Globals.pcall
                while qek.wait(1) do
                    tH8h5o(function()
                        if not IPGN or (TargetSelection.mode == "manual" and not Globals._G.getplayer) then
                            return 
                        end
                        keyboard("R")
                    end)
                end
            end
        end)
        Globals.spawn(function()
            do
                local Isjfpir, tnMN, XB7, SMEEEkt = Globals.task, Globals.pcall, Globals._G, Globals._G
                while Isjfpir.wait(1) do
                    tnMN(function()
                        if not IPGN then
                            return 
                        end
                        if TargetSelection.mode == "auto" and ((not Gr() and XB7.getplayer == nil) or (SMEEEkt["hop server if health == 0"] and vYI(0))) then
                            qPp()
                        end
                    end)
                end
            end
        end)
        Globals.pcall(function()
            Globals.loadstring([[
            local target = game:GetService("ReplicatedStorage").Chest.Remotes.Functions.SkillAction
            local old
            old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
                local method = getnamecallmethod()
                local args = {...}

                if method == "InvokeServer" and rawequal(self, target) and _G.pos_skill then
                    for _,v in pairs(args) do
                        if typeof(v) == "table" and (v.Type == "Down" or v.Type == "Up") then
                            v.MouseHit = _G.pos_skill
                        end
                    end

                    return old(self, unpack(args))
                end

                return old(self, ...)
            end))
            ]])()
        end)
        Globals._G.noclip = true
        Globals.spawn(function()
            Globals.pcall(function()
                Globals.game:GetService("RunService").Stepped:Connect(function()
                    if (not (not IPGN)) and (not (not (Globals._G.getplayer))) and (not (not (Globals._G.noclip))) then
                        Globals.game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").PlatformStand = true
                        if (Globals.game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip")) then
                            Globals.game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                        end
                        if (not (Globals.game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"))) then
                            local xSs = Globals.Instance.new("BodyVelocity")
                            xSs.Name = "BodyClip"
                            xSs.Parent = Globals.game.Players.LocalPlayer.Character.HumanoidRootPart
                            xSs.MaxForce = (Globals.Vector3.new(100000, 100000, 100000))
                            xSs.Velocity = (Globals.Vector3.new(0, 0, 0))
                        end
                        if (not (Globals._G.index_key)) then
                            return 
                        end
                    else
                        Globals.game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").PlatformStand = false
                        if (Globals.game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip")) then
                            Globals.game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                        end
                    end
                end)
            end)
        end)
        yG = 0
        local uG6k
        do
            local MSZBVdU = Globals.game
            local TtGxLR = Globals.game
            local sfKsBUV, OY7u = Globals.game, Globals.game
            uG6k = function(_, X39)
                yG = X39 + yG
                if (yG >= 0.1) then
                    M3y = false
                    if (not (not (MSZBVdU.Players.LocalPlayer.PlayerGui:FindFirstChild("LoadingGUI")))) and (not (not (TtGxLR.Players.LocalPlayer.PlayerGui.LoadingGUI:FindFirstChild("Play")))) then
                        if (sfKsBUV.Players.LocalPlayer.PlayerGui.LoadingGUI.Play.Visible == true) then
                            VM(OY7u.Players.LocalPlayer.PlayerGui.LoadingGUI.Play)
                        end
                    end
                    yG = 0
                end
            end
        end
        Globals.game:GetService("RunService").Stepped:Connect(uG6k)
        -- A separate touch-friendly player picker; selection never overrides eligibility.
        do
            local players = Globals.game:GetService("Players")
            local inputService = Globals.game:GetService("UserInputService")
            local connections, rows = {}, {}
            local alive, dragging = true, false
            local dragInput, dragStart, positionStart
            local pickerName = "NTTHub_TargetPicker"
            local previous = ScreenGui.Parent:FindFirstChild(pickerName)
            if previous then previous:Destroy() end

            local colors = {
                bg = Color3.fromRGB(19, 22, 29),
                panel = Color3.fromRGB(29, 34, 44),
                row = Color3.fromRGB(34, 40, 52),
                selected = Color3.fromRGB(38, 71, 98),
                text = Color3.fromRGB(235, 240, 248),
                muted = Color3.fromRGB(157, 171, 191),
                good = Color3.fromRGB(111, 218, 157),
                bad = Color3.fromRGB(238, 165, 137),
                accent = Color3.fromRGB(82, 149, 224),
            }
            local function create(class, properties, parent)
                local item = Instance.new(class)
                for key, value in pairs(properties) do item[key] = value end
                item.Parent = parent
                return item
            end
            local function round(item, radius)
                create("UICorner", {CornerRadius = UDim.new(0, radius or 8)}, item)
            end
            local function connect(signal, callback)
                local connection = signal:Connect(callback)
                connections[#connections + 1] = connection
                return connection
            end
            local gui = create("ScreenGui", {
                Name = pickerName, ResetOnSpawn = false,
                IgnoreGuiInset = true, DisplayOrder = ScreenGui.DisplayOrder + 20,
                ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
            }, ScreenGui.Parent)
            local frame = create("Frame", {
                Name = "TargetWindow", Size = UDim2.fromOffset(360, 480),
                Position = UDim2.fromOffset(12, 70), BackgroundColor3 = colors.bg,
                BorderSizePixel = 0, ClipsDescendants = true,
            }, gui)
            round(frame, 12)
            local scale = create("UIScale", {Scale = 1}, frame)
            create("UIStroke", {Color = Color3.fromRGB(62, 77, 99), Thickness = 1}, frame)
            local header = create("Frame", {
                Name = "DragHandle", Size = UDim2.new(1, 0, 0, 42),
                BackgroundColor3 = colors.panel, BorderSizePixel = 0, Active = true,
            }, frame)
            create("TextLabel", {
                Name = "Title", Size = UDim2.new(1, -86, 1, 0),
                Position = UDim2.fromOffset(14, 0), BackgroundTransparency = 1,
                Text = "잡을 사람 선택", TextColor3 = colors.text,
                Font = Enum.Font.GothamBold, TextSize = 17,
                TextXAlignment = Enum.TextXAlignment.Left,
            }, header)
            local hideButton = create("TextButton", {
                Name = "Minimize", Size = UDim2.fromOffset(60, 28),
                Position = UDim2.new(1, -69, 0, 7), BackgroundColor3 = colors.row,
                Text = "최소화", TextColor3 = colors.text,
                Font = Enum.Font.Gotham, TextSize = 12, BorderSizePixel = 0,
            }, header)
            round(hideButton, 6)
            local statusLabel = create("TextLabel", {
                Name = "SelectionStatus", Position = UDim2.fromOffset(14, 49),
                Size = UDim2.new(1, -28, 0, 40), BackgroundTransparency = 1,
                Text = "", TextColor3 = colors.text, TextWrapped = true,
                TextSize = 13, Font = Enum.Font.Gotham,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextYAlignment = Enum.TextYAlignment.Top,
            }, frame)
            local function actionButton(name, text, x)
                local button = create("TextButton", {
                    Name = name, Position = UDim2.new(x, 14, 0, 95),
                    Size = UDim2.new(0.23, -2, 0, 32), BackgroundColor3 = colors.row,
                    Text = text, TextColor3 = colors.text, TextSize = 12,
                    Font = Enum.Font.GothamBold, BorderSizePixel = 0,
                }, frame)
                round(button, 7)
                return button
            end
            local silentButton = actionButton("SilentAimMode", "Silent Aim", 0)
            local autoButton = actionButton("AutomaticMode", "자동 선택", 0.25)
            local clearButton = actionButton("ClearSelection", "선택 해제", 0.50)
            local refreshButton = actionButton("RefreshPlayers", "새로고침", 0.75)
            local search = create("TextBox", {
                Name = "PlayerSearch", Position = UDim2.fromOffset(14, 137),
                Size = UDim2.new(1, -28, 0, 34), BackgroundColor3 = colors.panel,
                Text = "", PlaceholderText = "이름 / @아이디 / UserId 검색",
                PlaceholderColor3 = colors.muted, TextColor3 = colors.text,
                TextSize = 13, Font = Enum.Font.Gotham,
                ClearTextOnFocus = false, BorderSizePixel = 0,
                TextXAlignment = Enum.TextXAlignment.Left,
            }, frame)
            round(search, 7)
            create("UIPadding", {PaddingLeft = UDim.new(0, 10), PaddingRight = UDim.new(0, 10)}, search)
            local list = create("ScrollingFrame", {
                Name = "PlayerList", Position = UDim2.fromOffset(14, 181),
                Size = UDim2.new(1, -28, 1, -218), BackgroundTransparency = 1,
                BorderSizePixel = 0, ScrollBarThickness = 4,
                ScrollBarImageColor3 = colors.accent, CanvasSize = UDim2.new(),
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                ScrollingDirection = Enum.ScrollingDirection.Y,
                Active = true,
            }, frame)
            create("UIListLayout", {Padding = UDim.new(0, 7), SortOrder = Enum.SortOrder.LayoutOrder}, list)
            local emptyLabel = create("TextLabel", {
                Name = "EmptyState", Position = UDim2.fromOffset(16, 194),
                Size = UDim2.new(1, -32, 0, 64), BackgroundTransparency = 1,
                Text = "표시할 플레이어가 없습니다", TextWrapped = true,
                TextColor3 = colors.muted, Font = Enum.Font.Gotham, TextSize = 13,
            }, frame)
            local footer = create("TextLabel", {
                Name = "ModeHelp", Position = UDim2.new(0, 14, 1, -29),
                Size = UDim2.new(1, -28, 0, 20), BackgroundTransparency = 1,
                Text = "", TextColor3 = colors.muted,
                Font = Enum.Font.Gotham, TextSize = 11,
                TextXAlignment = Enum.TextXAlignment.Left,
            }, frame)
            local reopen = create("TextButton", {
                Name = "ReopenPicker", Size = UDim2.fromOffset(124, 38),
                Position = UDim2.new(1, -138, 0, 70), BackgroundColor3 = colors.panel,
                Text = "대상 선택 열기", TextColor3 = colors.text,
                Font = Enum.Font.GothamBold, TextSize = 13,
                Visible = false, BorderSizePixel = 0,
            }, gui)
            round(reopen, 10)
            local mainToggle = create("TextButton", {
                Name = "OpenTargetPicker", Position = UDim2.new(1, -63, 0, 5),
                Size = UDim2.fromOffset(55, 25), BackgroundColor3 = colors.row,
                Text = "대상", TextColor3 = colors.text,
                Font = Enum.Font.GothamBold, TextSize = 12,
                BorderSizePixel = 0,
            }, MainFrame)
            round(mainToggle, 6)

            local function show(visible)
                frame.Visible = visible
                reopen.Visible = not visible
            end
            connect(hideButton.Activated, function() show(false) end)
            connect(reopen.Activated, function() show(true) end)
            connect(mainToggle.Activated, function() show(not frame.Visible) end)

            local function fit(initial)
                local camera = Globals.workspace.CurrentCamera
                if not camera then return end
                local view = camera.ViewportSize
                local factor = math.min(1, (view.X - 24) / 360, (view.Y - 24) / 480)
                scale.Scale = math.max(0.45, factor)
                local width, height = 360 * scale.Scale, 480 * scale.Scale
                local x = initial and (view.X - width - 12) or frame.Position.X.Offset
                local y = initial and 70 or frame.Position.Y.Offset
                frame.Position = UDim2.fromOffset(
                    math.clamp(x, 8, math.max(8, view.X - width - 8)),
                    math.clamp(y, 8, math.max(8, view.Y - height - 8))
                )
            end
            fit(true)
            connect(header.InputBegan, function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging, dragInput = true, input
                    dragStart, positionStart = input.Position, frame.Position
                end
            end)
            connect(inputService.InputChanged, function(input)
                if dragging and (input == dragInput or input.UserInputType == Enum.UserInputType.MouseMovement) then
                    local delta = input.Position - dragStart
                    frame.Position = UDim2.fromOffset(positionStart.X.Offset + delta.X, positionStart.Y.Offset + delta.Y)
                    fit(false)
                end
            end)
            connect(inputService.InputEnded, function(input)
                if input == dragInput or input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging, dragInput = false, nil
                end
            end)
            local cameraConnection
            local function watchCamera()
                if cameraConnection then cameraConnection:Disconnect() end
                local camera = Globals.workspace.CurrentCamera
                if camera then cameraConnection = camera:GetPropertyChangedSignal("ViewportSize"):Connect(function() fit(false) end) end
                fit(false)
            end
            connect(Globals.workspace:GetPropertyChangedSignal("CurrentCamera"), watchCamera)
            watchCamera()

            local function readValue(parent, name)
                local child = parent and parent:FindFirstChild(name)
                return child and child.Value
            end
            local function updateRow(row)
                local player = players:GetPlayerByUserId(row.userId)
                if not player then return end
                local stats = player:FindFirstChild("PlayerStats")
                local level = readValue(stats, "lvl")
                local leaderstats = player:FindFirstChild("leaderstats")
                local bounty = readValue(leaderstats, "Bounty")
                local ok, eligible, reason = Globals.pcall(function() return TargetSelection:Eligibility(player) end)
                reason = ok and reason or "정보 대기"
                local selected = (TargetSelection.mode == "manual" and TargetSelection.userId == player.UserId)
                    or (TargetSelection.mode == "silent" and TargetSelection.resolved == player)
                row.button.BackgroundColor3 = selected and colors.selected or colors.row
                row.name.Text = (selected and "✓ " or "") .. player.DisplayName .. "  @" .. player.Name
                row.info.Text = "레벨 " .. tostring(level or "?") .. "  ·  현상금 " .. tostring(bounty or "?") .. "\n" .. reason
                row.info.TextColor3 = ok and eligible and colors.good or colors.bad
            end
            local function updateStatus()
                local mode = TargetSelection.mode
                local prefix = mode == "silent" and "Silent Aim" or (mode == "manual" and "수동" or "자동")
                local player = mode == "silent" and TargetSelection.resolved
                    or (TargetSelection.userId and players:GetPlayerByUserId(TargetSelection.userId))
                if player then prefix = prefix .. " · " .. player.DisplayName .. " (@" .. player.Name .. ")" end
                statusLabel.Text = prefix .. "\n" .. TargetSelection.status
                silentButton.BackgroundColor3 = mode == "silent" and colors.selected or colors.row
                autoButton.BackgroundColor3 = mode == "auto" and colors.selected or colors.row
                if mode == "silent" then
                    footer.Text = "Silent Aim 대상만 추적 · 대상 없으면 대기 · 서버 이동 중지"
                elseif mode == "manual" then
                    footer.Text = "수동: 조건에 맞을 때 공격 · 자동 서버 이동 중지"
                else
                    footer.Text = "자동: 기존 조건으로 선택 · 자동 서버 이동 사용"
                end
            end
            local function rebuild()
                for _, row in ipairs(rows) do
                    row.connection:Disconnect()
                    row.button:Destroy()
                end
                rows = {}
                local query = string.lower(search.Text)
                local roster = players:GetPlayers()
                table.sort(roster, function(a, b)
                    local left, right = string.lower(a.DisplayName), string.lower(b.DisplayName)
                    return left == right and a.UserId < b.UserId or left < right
                end)
                for _, player in ipairs(roster) do
                    local haystack = string.lower(player.DisplayName .. " " .. player.Name .. " " .. tostring(player.UserId))
                    if player ~= players.LocalPlayer and (query == "" or string.find(haystack, query, 1, true)) then
                        local rowButton = create("TextButton", {
                            Name = "Player_" .. tostring(player.UserId), Size = UDim2.new(1, -7, 0, 72),
                            BackgroundColor3 = colors.row, Text = "", BorderSizePixel = 0,
                            LayoutOrder = #rows + 1,
                        }, list)
                        round(rowButton, 8)
                        local rowName = create("TextLabel", {
                            Position = UDim2.fromOffset(10, 7), Size = UDim2.new(1, -20, 0, 21),
                            BackgroundTransparency = 1, Text = "", TextColor3 = colors.text,
                            TextSize = 13, Font = Enum.Font.GothamBold,
                            TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd,
                        }, rowButton)
                        local rowInfo = create("TextLabel", {
                            Position = UDim2.fromOffset(10, 31), Size = UDim2.new(1, -20, 0, 34),
                            BackgroundTransparency = 1, Text = "", TextColor3 = colors.muted,
                            TextSize = 11, Font = Enum.Font.Gotham,
                            TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top,
                        }, rowButton)
                        local userId = player.UserId
                        local row = {button = rowButton, name = rowName, info = rowInfo, userId = userId}
                        row.connection = rowButton.Activated:Connect(function()
                            TargetSelection:Select(userId)
                            TargetSelection:Resolve()
                            for _, other in ipairs(rows) do updateRow(other) end
                            updateStatus()
                        end)
                        rows[#rows + 1] = row
                        updateRow(row)
                    end
                end
                emptyLabel.Visible = #rows == 0
                updateStatus()
            end
            connect(silentButton.Activated, function()
                TargetSelection:SetMode("silent")
                TargetSelection:Resolve()
                rebuild()
            end)
            connect(autoButton.Activated, function()
                TargetSelection:SetMode("auto")
                TargetSelection:Resolve()
                rebuild()
            end)
            connect(clearButton.Activated, function() TargetSelection:Clear(); rebuild() end)
            connect(refreshButton.Activated, rebuild)
            connect(search:GetPropertyChangedSignal("Text"), rebuild)
            connect(players.PlayerAdded, function() Globals.task.defer(rebuild) end)
            connect(players.PlayerRemoving, function(player)
                if player.UserId == TargetSelection.userId then
                    TargetSelection:Invalidate()
                    TargetSelection.status = "선택한 상대가 서버에서 나감"
                end
                Globals.task.defer(rebuild)
            end)
            connect(gui.Destroying, function()
                alive = false
                for _, connection in ipairs(connections) do connection:Disconnect() end
                for _, row in ipairs(rows) do row.connection:Disconnect() end
                if cameraConnection then cameraConnection:Disconnect() end
                if mainToggle.Parent then mainToggle:Destroy() end
            end)
            rebuild()
            Globals.task.spawn(function()
                while alive do
                    Globals.task.wait(0.5)
                    if not alive then break end
                    if not IPGN then
                        TargetSelection.status = "메인 GUI OFF · 공격 중지"
                    else
                        TargetSelection:Resolve()
                    end
                    updateStatus()
                    if frame.Visible then
                        for _, row in ipairs(rows) do
                            Globals.pcall(updateRow, row)
                        end
                    end
                end
            end)
        end

    end
end)()
