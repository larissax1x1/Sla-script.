repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

-- Configuração do time
getgenv().Team = "Pirates"

-- Configuração principal
getgenv().Config = {
    ["Safe Health"] = {30},
    ["Custom Y Run"] = {
        Enabled = true,
        ["Y Run"] = 5000
    },
    ["Hunt Method"] = {
        ["Use Move Predict"] = false,
        ["Hit and Run"] = false,
        ["Aimbot"] = true,
        ["ESP Player"] = true,
        ["Max Attack Time"] = 60
    },
    ["Stats"] = {
        ["Enable"] = false,
        ["Reset Stats"] = false,
        ["Point"] = {
            ["Points per lift"] = nil,
            ["Melee"] = nil,
            ["Defence"] = nil,
            ["Sword"] = nil,
            ["Gun"] = nil,
            ["Devil Fruit"] = nil
        }
    },
    ["Shop"] = {
        ["Random Fruit"] = false,
        ["Store Fruit"] = true,
        ["Zoro Sword"] = false
    },
    ["Theme"] = {
        Name = "Hutao",
        UIUrl = "",
        Custom = {
            ["Enable"] = false,
            ["title_color"] = Color3.fromRGB(255, 221, 252),
            ["titleback_color"] = Color3.fromRGB(169, 20, 255),
            ["list_color"] = Color3.fromRGB(255, 221, 252),
            ["liststroke_color"] = Color3.fromRGB(151, 123, 207),
            ["button_color"] = Color3.fromRGB(255, 221, 252),
            ["title_font"] = Enum.Font.FredokaOne,
            ["text_font"] = Enum.Font.Gotham,
            ["title_size"] = 40,
            ["text_size"] = 24
        }
    },
    ["Setting"] = {
        ["World"] = 3,
        ["White Screen"] = false,
        ["Fast Delay"] = 0.5,
        ["Tween Speed"] = 350,
        ["FPS BOOSTER"] = false,
        ["Url"] = "",
        ["Chat"] = {
            Enabled = false,
            Wait = 350,
            Massage = {""}
        }
    },
    ["Skip"] = {
        ["Avoid V4"] = false,
        ["Fruit"] = {
            ["Enabled"] = true,
            ["Avoid Fruit"] = {
                "Portal-Portal",
                "Kitsune-Kitsune"
            }
        }
    },
    ["Spam All Skill On V4"] = {
        Enabled = true,
        ["Weapons"] = {"Melee", "Sword", "Gun", "Blox Fruit"}
    },
    ["Items"] = {
        ["Use"] = {"Melee", "Sword", "Gun", "Blox Fruit"},
        ["Melee"] = {
            Enable = true,
            Delay = 0.4,
            Skills = {
                Z = {Enable = true, HoldTime = 0.3},
                X = {Enable = true, HoldTime = 0.2},
                C = {Enable = true, HoldTime = 0.5}
            }
        },
        ["Sword"] = {
            Enable = true,
            Delay = 0.5,
            Skills = {
                Z = {Enable = true, HoldTime = 1},
                X = {Enable = true, HoldTime = 0}
            }
        },
        ["Gun"] = {
            Enable = false,
            Delay = 0.3,
            Skills = {
                Z = {Enable = true, HoldTime = 0.1},
                X = {Enable = true, HoldTime = 0.1}
            }
        },
        ["Blox Fruit"] = {
            Enable = false,
            Delay = 0.4,
            Skills = {
                Z = {Enable = true, HoldTime = 0.1},
                X = {Enable = true, HoldTime = 0.1},
                C = {Enable = true, HoldTime = 0.15},
                V = {Enable = true, HoldTime = 0.2},
                F = {Enable = true, HoldTime = 0.1}
            }
        }
    }
}

-- Configuração da Hitbox
getgenv().Hitbox = {
    Enabled = true,
    Size = 50, -- Tamanho do hitbox (Studs)
    Transparency = 0.7,
    Color = BrickColor.new("Bright red")
}

-- Loop para aplicar Hitbox expandida nos inimigos
task.spawn(function()
    while getgenv().Hitbox.Enabled do
        task.wait()
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = player.Character.HumanoidRootPart
                hrp.Size = Vector3.new(getgenv().Hitbox.Size, getgenv().Hitbox.Size, getgenv().Hitbox.Size)
                hrp.Transparency = getgenv().Hitbox.Transparency
                hrp.BrickColor = getgenv().Hitbox.Color
                hrp.Material = Enum.Material.Neon
                hrp.CanCollide = false
            end
        end
    end
end)
