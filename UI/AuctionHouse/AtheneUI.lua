local addonName, ns = ...
local L = ns.L

local SEEN_CHANGELOG_VERSION_KEY = "SeenChangelogVersion"

ns.IsAtheneBlocked = function()
    local me = UnitName("player")

    return ns.BlacklistAPI:IsBlacklisted(me, ns.BLACKLIST_TYPE_ORDERS, "Athenegpt")
        or ns.BlacklistAPI:IsBlacklisted(me, ns.BLACKLIST_TYPE_REVIEW, "Athenegpt")
        or ns.BlacklistAPI:IsBlacklisted(me, ns.BLACKLIST_TYPE_ORDERS, "Athene")
        or ns.BlacklistAPI:IsBlacklisted(me, ns.BLACKLIST_TYPE_REVIEW, "Athene")
end

function OFFeedbackInputField_OnLoad(self)
    -- Store the placeholder text for comparison
    self.placeholder = L["Note"] .. "..."

    self:SetFontObject("ChatFontSmall")
    self:SetText(self.placeholder)
    self:SetCursorPosition(0)
    self:SetAutoFocus(false)


    OFAtheneFeedbackButton:Disable()

    self:SetScript("OnTextChanged", function(self)
        ScrollingEdit_OnTextChanged(self, self:GetParent())

        -- Get the current text and trim whitespace
        local text = strtrim(self:GetText() or "")

        -- Disable button if text is empty or matches placeholder
        if text ~= "" and text ~= self.placeholder then
            OFAtheneFeedbackButton:Enable()
        else
            OFAtheneFeedbackButton:Disable()
        end
    end)
end

function OFWhisperFrame_OnShow(self, userName)
    local iconName
    if ns.GuildRegister:IsMemberOnline(userName) then
        _G[self:GetName().."Button"]:Enable()
        iconName = "Icn_Online.png"
    else
        _G[self:GetName().."Button"]:Disable()
        iconName = "Icn_Offline.png"
    end
    self.inputField.onlineIcon:SetTexture("Interface\\Addons\\" .. addonName .. "\\Media\\Icons\\" .. iconName)
end

local function GetPatchNotes()
    local version = ns.AuctionHouse.GetLatestVersion()
    local changeLog = ns.ChangeLog[version]
    if not changeLog then
        return ""
    end
    local lines = {}
    for _, line in ipairs(changeLog) do
        table.insert(lines, "• "..line)
    end
    return table.concat(lines, "\n")
end

function OFAtheneUI_Initialize()
    local function Update()
        OFAtheneUI_Update(false)
    end
    ns.AuctionHouseAPI:RegisterEvent(ns.T_BLACKLIST_ADD_OR_UPDATE, Update)
    ns.AuctionHouseAPI:RegisterEvent(ns.T_BLACKLIST_DELETED, Update)
    ns.AuctionHouseAPI:RegisterEvent(ns.T_BLACKLIST_SYNCED, Update)
end

local function HasSeenLatestVersion()
    local latestVersion = ns.AuctionHouse:GetLatestVersion()
    local seenVersion = ns.PlayerPrefs:Get(SEEN_CHANGELOG_VERSION_KEY)
    return seenVersion and ns.CompareVersions(seenVersion, latestVersion) >= 0 or false
end

local function MarkVersionSeen()
    if not HasSeenLatestVersion() then
        ns.PlayerPrefs:Set(SEEN_CHANGELOG_VERSION_KEY, ns.AuctionHouse:GetLatestVersion())
        return true
    end
    return false
end

function OFAtheneUI_OnShow()
    if MarkVersionSeen() then
        OFAuctionFrame_UpdateAtheneTab()
    end
    OFAtheneUI_Update(true)
end

function OFAtheneUI_Update(resetScroll)
    if resetScroll then
        OFAtheneScrollFrame:SetVerticalScroll(0)
    end
    OFAtheneVersionText:SetText(L["Version"] .. " " ..ns.AuctionHouse.addonVersion..".")
    AthenePatchNotesFrameText:SetText(GetPatchNotes())
    if ns.AuctionHouse:IsUpdateAvailable() then
        OFUpdateAvailableFrame:Show()
        OFAtheneUpToDateText:Hide()
    else
        OFUpdateAvailableFrame:Hide()
        OFAtheneUpToDateText:Show()
    end
    OFAtheneAdContainer:Show()
end

local function CreateReviewForAthene(idPrefix, text, reply)
    local t = ns.AuctionHouseAPI:CreateTrade({
        id=idPrefix..UnitName("player"),
        owner=UnitName("player"),
        buyer="Athenegpt",
        completeAt=time(),
    })

    ns.AuctionHouseAPI:SetSellerReview(t.id, {
        text=text,
    })
    ns.AuctionHouseAPI:SetBuyerReview(t.id, {
        text=reply,
    })

    return t
end

function OFAtheneFeedback_OnSubmit()
    CreateReviewForAthene("f-", "Feedback: "..OFFeedbackInputField:GetText(), "Thanks for the feedback")
    print(ChatPrefix() .. L[" Feedback submitted"])
    OFFeedbackInputField:SetText(L["Note"] .. "...")
end

function OFAtheneAIRequest_OnSubmit()
    CreateReviewForAthene("a-", "I want my own AI", "I'll back you up")
    print(ChatPrefix() .. L[" AI request submitted"])
end

local function GetAdBlockIconPath()
    return "Interface\\Addons\\" .. addonName .. "\\Media\\icons\\Icn_Adblock"
end

local function GetAtheneIconPath()
    return "Interface\\Addons\\" .. addonName .. "\\Media\\icons\\Icn_AtheneTab"
end


function OFAuctionFrame_UpdateAtheneTab()
    if ns.AuctionHouse:IsUpdateAvailable() or not HasSeenLatestVersion() then
        OFAuctionFrameTab8:SetText("Athene (1)")
    else
        OFAuctionFrameTab8:SetText("Athene")
    end
end

function OFAtheneAdBlockContainer_Update(self)
    self.adblockIcon:SetTexture(GetAdBlockIconPath())

    local blacklisters = ns.BlacklistAPI:GetAllBlacklisters("Athene")
    local height = 350
    if #blacklisters > 20 then
        height = height + 210 * (math.ceil((#blacklisters) / 20) - 1)
    end
    for i = 1, #blacklisters do
        blacklisters[i] = "- "..blacklisters[i]
    end
    local text = table.concat(blacklisters, "\n")
    self.usersText:SetText(text)
    self.usersText:SetHeight(height)
end
