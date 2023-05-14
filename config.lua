{
    Combat = {
        AimAssist = {
            Main = {
            Enabled = false,
            Bind = "UNSET",
            Range = 1000,
            Hitbox = "Head",
            HitboxPriority = "Smart", --// Not out yet \\--
            Checks = {}, --// Team, ForceField, Visible, Wall, Arm \\--
            UseDeadzone = false,
            OffsetX = 0,
            OffsetY = 0,
            HorizontalSmoothness = 1,
            VerticalSmoothness = 1
            },
            Visuals = {
                FOV = {
                    Enabled = false,
                    Color = Color3.fromRGB(255,255,255),
                    Radius = 1,
                    OffsetX = 0,
                    OffsetY = 0
                },
                DeadzoneFOV = {
                    Enabled = false,
                    Color = Color3.fromRGB(255,255,255),
                    Radius = 1,
                    OffsetX = 0,
                    OffsetY = 0
                }
            },
            Tracing = {
                Prediction = {
                    Enabled = false,
                    Amount = 1,
                    BackTracing = false
                }
            }
        },
        TriggerBot = {
            Main = {
                Enabled = false,
                Bind = "UNSET"
            },
            Checks = {
                Existing = {} --// Team, ForceField, Wall \\--
            },
            ADS = {
                Enabled = false,
                Delay = 1,
                Type = "Hold" --// Hold, Toggle \\--
            }
        }
    },
    ESP = {
        Main = {
            Enabled = false,
            Bind = "UNSET",
            MaxRenderingDistance = 2500
        },
        Checks = {
            Team = false
        },
        Name = {
            Enabled = false,
            Color = Color3.fromRGB(255,255,255),
        },
        Box = {
            Enabled = false,
            Fill = false,
            Color = Color3.fromRGB(255,255,255),
            OutlineColor = Color3.fromRGB(0, 0, 0),
            FillColor = Color3.fromRGB(255,255,255),
            FillTransparency = 35
        },
        HealthBar = {
            Enabled = false,
            HighColor = Color3.fromRGB(255,255,255),
            LowColor = Color3.fromRGB(255, 255, 255)
        },
        HealthNumber = {
            Enabled = false,
            Color = Color3.fromRGB(255,255,255)
        },
        Distance = {
            Enabled = false,
            Color = Color3.fromRGB(255,255,255)
        },
        Weapon = {
            Enabled = false,
            Color = Color3.fromRGB(255,255,255)
        },
        PlayerOverlay = {
            Main = {
                Enabled = false,
                DepthMode = "Always"
            },
            Checks = {
                Team = false,
            },
            Chams = {
                Enabled = false,
                Color = Color3.fromRGB(255, 153, 255),
                HealthBasedColor = false
            },
            Glow = {
                Enabled = false,
                Color = Color3.fromRGB(255,255,255)
            }
        }
    },
    ExtraVisuals = {
        Screen = {
            AspectRatio = {
                Enabled = false,
                Ratio = 100
            }
        },
        LocalPlayer = {
            ThirdPerson = {
                Enabled = false,
                Bind = "UNSET",
                Distance = 45
            },
            ChinaHat = {
                Enabled = false,
                Color = Color3.fromRGB(255,255,255),
                Rainbow = false,
                Height = 75
            },
            CustomMeshes = {
                Headless = false
            }
        }
    },
    Misc = {
        Players = {
            --//Ignore This
            Strafe = false
        },
        Movement = {
            SpeedMultiplier = {
                Enabled = false,
                Bind = "UNSET",
                Speed = 5
            },
            InfiniteJump = {
                Enabled = false
            },
            AutoJump = {
                Enabled = false
            },
            Strafe = {
                Enabled = false,
                Speed = 1
            }
        },
        Network = {
            AntiAFK = {
                Enabled = false
            },
            LagSwitch = {
                Enabled = false
            },
            FakeLag = {
                Enabled = false,
                Ticks = 3
            }
        },
        Sound = {
            ASP = {
                Enabled = false,
                Volume = 15
            }
        }
    },
    UI = {
        Theme = {
            accent = Color3.fromRGB(255,0,255),
            dcont = Color3.fromRGB(127, 0, 255),
            lcont = Color3.fromRGB(153, 51, 255),
            cont = Color3.fromRGB(30, 30, 30),
            outline = Color3.fromRGB(255, 153, 255),
            outline2 = Color3.fromRGB(45, 45, 45)
        },
        Frames = {
            Watermark = false,
            KeybindList = false
        }
    }
}
