local addonName, ns = ...
local L = ns.L

-- Caché de funciones globales para optimizar búsquedas
local GetTime = GetTime
local GetTimePreciseSec = GetTimePreciseSec
local string_split = string.split
local tonumber = tonumber

local LibDeflate = LibStub("LibDeflate")
local CompressDeflate = LibDeflate.CompressDeflate
local DecompressDeflate = LibDeflate.DecompressDeflate

local AuctionHouse = LibStub("AceAddon-3.0"):NewAddon("AuctionHouse", "AceComm-3.0", "AceSerializer-3.0")
ns.AuctionHouse = AuctionHouse
local API = ns.AuctionHouseAPI

local COMM_PREFIX = "OFAuctionHouse"
local OF_COMM_PREFIX = "OnlyFangsAddon"
local T_AUCTION_STATE_REQUEST = "AUCTION_STATE_REQUEST"
local T_AUCTION_STATE = "AUCTION_STATE"

local T_CONFIG_REQUEST = "CONFIG_REQUEST"
local T_CONFIG_CHANGED = "CONFIG_CHANGED"

local T_AUCTION_ADD_OR_UPDATE = "AUCTION_ADD_OR_UPDATE"
local T_AUCTION_SYNCED = "AUCTION_SYNCED"
local T_AUCTION_DELETED = "AUCTION_DELETED"

-- Ratings
local T_RATING_ADD_OR_UPDATE = "RATING_ADD_OR_UPDATE"
local T_RATING_DELETED = "RATING_DELETED"
local T_RATING_SYNCED = "RATING_SYNCED"

-- LFG (Looking for Group)
ns.T_LFG_ADD_OR_UPDATE = "LFG_ADD_OR_UPDATE"
ns.T_LFG_DELETED       = "LFG_DELETED"
ns.T_LFG_SYNCED        = "LFG_SYNCED"
ns.T_ON_LFG_STATE_UPDATE = "OnLFGStateUpdate"
ns.T_LFG_STATE_REQUEST = "LFG_STATE_REQUEST"
ns.T_LFG_STATE         = "LFG_STATE"

-- Constantes Blacklist
local T_BLACKLIST_STATE_REQUEST = "BLACKLIST_STATE_REQUEST"
local T_BLACKLIST_STATE         = "BLACKLIST_STATE"
local T_BLACKLIST_ADD_OR_UPDATE = "BLACKLIST_ADD_OR_UPDATE"
local T_BLACKLIST_DELETED       = "BLACKLIST_DELETED"
local T_BLACKLIST_SYNCED        = "BLACKLIST_SYNCED"
local T_ON_BLACKLIST_STATE_UPDATE = "OnBlacklistStateUpdate"

ns.T_BLACKLIST_STATE_REQUEST = T_BLACKLIST_STATE_REQUEST
ns.T_BLACKLIST_STATE = T_BLACKLIST_STATE
ns.T_BLACKLIST_ADD_OR_UPDATE = T_BLACKLIST_ADD_OR_UPDATE
ns.T_BLACKLIST_DELETED = T_BLACKLIST_DELETED
ns.T_BLACKLIST_SYNCED = T_BLACKLIST_SYNCED
ns.T_ON_BLACKLIST_STATE_UPDATE = T_ON_BLACKLIST_STATE_UPDATE

-- Transacciones pendientes
local T_PENDING_TRANSACTION_STATE_REQUEST = "PENDING_TRANSACTION_STATE_REQUEST"
local T_PENDING_TRANSACTION_STATE         = "PENDING_TRANSACTION_STATE"
local T_PENDING_TRANSACTION_ADD_OR_UPDATE  = "PENDING_TRANSACTION_ADD_OR_UPDATE"
local T_PENDING_TRANSACTION_DELETED        = "PENDING_TRANSACTION_DELETED"
local T_PENDING_TRANSACTION_SYNCED         = "PENDING_TRANSACTION_SYNCED"

ns.T_PENDING_TRANSACTION_STATE_REQUEST = T_PENDING_TRANSACTION_STATE_REQUEST
ns.T_PENDING_TRANSACTION_STATE = T_PENDING_TRANSACTION_STATE
ns.T_PENDING_TRANSACTION_ADD_OR_UPDATE = T_PENDING_TRANSACTION_ADD_OR_UPDATE
ns.T_PENDING_TRANSACTION_DELETED = T_PENDING_TRANSACTION_DELETED
ns.T_PENDING_TRANSACTION_SYNCED = T_PENDING_TRANSACTION_SYNCED
ns.T_ON_PENDING_TRANSACTION_STATE_UPDATE = "OnPendingTransactionStateUpdate"

local knownAddonVersions = {}

local ADMIN_USERS = {
    ["Athenegpt-Soulseeker"] = 1,
    ["Maralle-Soulseeker"] = 1,
}

local TEST_USERS = {
    ["Pencilbow"] = "AtheneDev-pencilbow",
    ["Onefingerjoe"] = "AtheneDev-jannysice",
    ["Flawlezzgg"] = "AtheneDev-flawlezzgg",
    ["Pencilshaman"] = "AtheneDev-pencilshaman",
    ["Smorcstronk"] = "AtheneDev-smorcstronk",
}
ns.TEST_USERS = TEST_USERS
local TEST_USERS_RACE = {
    ["Pencilbow"] = "Human",
    ["Onefingerjoe"] = "Human",
    ["Flawlezzgg"] = "Human",
    ["Pencilshaman"] = "Undead",
    ["Smorcstronk"] = "Orc",
}

ns.COMM_PREFIX = COMM_PREFIX
ns.T_GUILD_ROSTER_CHANGED = "GUILD_ROSTER_CHANGED"

ns.T_CONFIG_REQUEST = T_CONFIG_REQUEST
ns.T_CONFIG_CHANGED = T_CONFIG_CHANGED
ns.T_AUCTION_ADD_OR_UPDATE = T_AUCTION_ADD_OR_UPDATE
ns.T_AUCTION_DELETED = T_AUCTION_DELETED
ns.T_AUCTION_STATE = T_AUCTION_STATE
ns.T_AUCTION_STATE_REQUEST = T_AUCTION_STATE_REQUEST
ns.T_AUCTION_SYNCED = T_AUCTION_SYNCED
ns.T_ON_AUCTION_STATE_UPDATE = "OnAuctionStateUpdate"

-- trades
ns.T_TRADE_ADD_OR_UPDATE = "TRADE_ADD_OR_UPDATE"
ns.T_TRADE_DELETED = "TRADE_DELETED"
ns.T_TRADE_SYNCED = "TRADE_SYNCED"

ns.T_ON_TRADE_STATE_UPDATE = "OnTradeStateUpdate"
ns.T_TRADE_STATE_REQUEST = "TRADE_REQUEST"
ns.T_TRADE_STATE = "TRADE_STATE"

-- trade ratings
ns.T_RATING_ADD_OR_UPDATE = T_RATING_ADD_OR_UPDATE
ns.T_RATING_DELETED = T_RATING_DELETED
ns.T_RATING_SYNCED = T_RATING_SYNCED

ns.T_ON_RATING_STATE_UPDATE = "OnRatingStateUpdate"
ns.T_RATING_STATE_REQUEST = "RATING_STATE_REQUEST"
ns.T_RATING_STATE = "RATING_STATE"

-- death clips
ns.T_DEATH_CLIPS_STATE_REQUEST = "DEATH_CLIPS_STATE_REQUEST"
ns.T_DEATH_CLIPS_STATE = "DEATH_CLIPS_STATE"
ns.T_ADMIN_REMOVE_CLIP = "ADMIN_REMOVE_CLIP"
ns.T_DEATH_CLIPS_MARK_OFFLINE = "DEATH_CLIPS_MARK_OFFLINE"
ns.EV_DEATH_CLIPS_CHANGED = "DEATH_CLIPS_CHANGED"
ns.T_ADMIN_UPDATE_CLIP_OVERRIDES = "ADMIN_UPDATE_CLIP_OVERRIDES"
ns.T_DEATH_CLIP_ADDED = "DEATH_CLIP_ADDED"

ns.T_DEATH_CLIP_REVIEW_STATE_REQUEST = "DEATH_CLIP_REVIEW_STATE_REQUEST"
ns.T_DEATH_CLIP_REVIEW_STATE = "DEATH_CLIP_REVIEW_STATE"
ns.T_DEATH_CLIP_REVIEW_UPDATED = "DEATH_CLIP_REVIEW_UPDATED"

-- version check
ns.T_ADDON_VERSION_REQUEST = "ADDON_VERSION_REQUEST"
ns.T_ADDON_VERSION_RESPONSE = "ADDON_VERSION_RESPONSE"

ns.T_SET_GUILD_POINTS = "SET_GUILD_POINTS"

local G, W = "GUILD", "WHISPER"

local CHANNEL_WHITELIST = {
    [ns.T_CONFIG_REQUEST] = {[G]=1},
    [ns.T_CONFIG_CHANGED] = {[W]=1},
    [ns.T_AUCTION_STATE_REQUEST] = {[G]=1},
    [ns.T_AUCTION_STATE] = {[W]=1},
    [ns.T_AUCTION_ADD_OR_UPDATE] = {[G]=1},
    [ns.T_AUCTION_DELETED] = {[G]=1},
    [ns.T_TRADE_STATE_REQUEST] = {[G]=1},
    [ns.T_TRADE_STATE] = {[W]=1},
    [ns.T_TRADE_ADD_OR_UPDATE] = {[G]=1},
    [ns.T_TRADE_DELETED] = {[G]=1},
    [ns.T_RATING_STATE_REQUEST] = {[G]=1},
    [ns.T_RATING_STATE] = {[W]=1},
    [ns.T_RATING_ADD_OR_UPDATE] = {[G]=1},
    [ns.T_RATING_DELETED] = {[G]=1},
    [ns.T_DEATH_CLIPS_STATE_REQUEST] = {[G]=1},
    [ns.T_DEATH_CLIPS_STATE] = {[W]=1},
    [ns.T_ADMIN_REMOVE_CLIP] = {}, --admin only
    [ns.T_DEATH_CLIP_REVIEW_STATE_REQUEST] = {[G]=1},
    [ns.T_DEATH_CLIP_REVIEW_STATE] = {[W]=1},
    [ns.T_DEATH_CLIP_REVIEW_UPDATED] = {[G]=1},
    [ns.T_ADMIN_UPDATE_CLIP_OVERRIDES] = {}, --admin only
    [ns.T_DEATH_CLIP_ADDED] = {[G]=1},
    [ns.T_ADDON_VERSION_REQUEST] = {[G]=1},
    [ns.T_ADDON_VERSION_RESPONSE] = {[W]=1},
    [ns.T_LFG_STATE_REQUEST] = {[G]=1},
    [ns.T_LFG_STATE] = {[W]=1},
    [ns.T_LFG_ADD_OR_UPDATE] = {[G]=1},
    [ns.T_LFG_DELETED] = {[G]=1},
    [ns.T_BLACKLIST_STATE_REQUEST] = {[G] = 1},
    [ns.T_BLACKLIST_STATE]         = {[W] = 1},
    [ns.T_BLACKLIST_ADD_OR_UPDATE] = {[G] = 1},
    [ns.T_BLACKLIST_DELETED]       = {[G] = 1},
    [ns.T_SET_GUILD_POINTS] = {[W] = 1},
    [ns.T_PENDING_TRANSACTION_DELETED] = {[G] = 1},
    [ns.T_PENDING_TRANSACTION_ADD_OR_UPDATE] = {[G] = 1},
    [ns.T_PENDING_TRANSACTION_STATE_REQUEST] = {[G] = 1},
    [ns.T_PENDING_TRANSACTION_STATE] = {[W] = 1},
}

local function getFullName(name)
    local shortName, realmName = string_split("-", name)
    return shortName .. "-" .. (realmName or GetRealmName())
end

local function isMessageAllowed(sender, channel, messageType)
    local fullName = getFullName(sender)
    if ADMIN_USERS[fullName] then
        return true
    end
    local whitelist = CHANNEL_WHITELIST[messageType]
    return whitelist and whitelist[channel] and true or false
end

function AuctionHouse:OnInitialize()
    self.addonVersion = GetAddOnMetadata(addonName, "Version")
    knownAddonVersions[self.addonVersion] = true

    ChatUtils_Initialize()

    -- Initialize API con funciones de broadcast optimizadas
    ns.AuctionHouseAPI:Initialize({
        broadcastAuctionUpdate = function(dt, pl)
            self:BroadcastAuctionUpdate(dt, pl)
        end,
        broadcastTradeUpdate = function(dt, pl)
            self:BroadcastTradeUpdate(dt, pl)
        end,
        broadcastRatingUpdate = function(dt, pl)
            self:BroadcastRatingUpdate(dt, pl)
        end,
        broadcastLFGUpdate = function(dt, pl)
            self:BroadcastLFGUpdate(dt, pl)
        end,
        broadcastBlacklistUpdate = function(dt, pl)
            self:BroadcastBlacklistUpdate(dt, pl)
        end,
        broadcastPendingTransactionUpdate = function(dt, pl)
            self:BroadcastPendingTransactionUpdate(dt, pl)
        end,
    })
    ns.AuctionHouseAPI:Load()
    self.db = ns.AuctionHouseDB

    if ns.AuctionHouseDB.revision == 0 and TEST_USERS[UnitName("player")] then
        ns.AuctionHouseDB.showDebugUIOnLoad = true
    end

    local clipReviewState = ns.GetDeathClipReviewState()
    clipReviewState:RegisterEvent(ns.EV_DEATH_CLIP_REVIEW_ADD_OR_UPDATE, function(payload)
        if payload.fromNetwork then return end
        self:BroadcastMessage(self:Serialize({ ns.T_DEATH_CLIP_REVIEW_UPDATED, {review = payload.review} }))
    end)
    clipReviewState:RegisterEvent(ns.EV_DEATH_CLIP_MARKED_OFFLINE, function(payload)
        if payload.fromNetwork then return end
        self:BroadcastMessage(self:Serialize({ ns.T_DEATH_CLIPS_MARK_OFFLINE, {clipID = payload.clipID} }))
    end)
    clipReviewState:RegisterEvent(ns.EV_DEATH_CLIP_OVERRIDE_UPDATED, function(payload)
        if payload.fromNetwork then return end
        self:BroadcastMessage(self:Serialize({ ns.T_ADMIN_UPDATE_CLIP_OVERRIDES, {clipID = payload.clipID, overrides = payload.overrides} }))
    end)

    -- Inicialización de la UI
    ns.TradeAPI:OnInitialize()
    ns.MailboxUI:Initialize()
    ns.AuctionAlertWidget:OnInitialize()
    OFAuctionFrameReviews_Initialize()
    LfgUI_Initialize()
    SettingsUI_Initialize()
    OFAtheneUI_Initialize()

    local age = GetTime() - ns.AuctionHouseDB.lastUpdateAt
    local auctionCount = 0
    for _ in pairs(ns.AuctionHouseDB.auctions) do
        auctionCount = auctionCount + 1
    end
    ns.DebugLog(string.format("[DEBUG] db loaded from persistence. rev: %s, lastUpdateAt: %d (%ds old) with %d auctions",
        ns.AuctionHouseDB.revision, ns.AuctionHouseDB.lastUpdateAt, age, auctionCount))

    AHConfigSaved = ns.GetConfig()

    self:RegisterComm(COMM_PREFIX)
    self:RegisterComm(OF_COMM_PREFIX)

    SLASH_GAH1 = "/gah"
    SlashCmdList["GAH"] = function(msg) self:OpenAuctionHouse() end

    -- Se agrupan timers similares para reducir sobrecarga
    C_Timer.NewTicker(10, function() API:ExpireAuctions() end)
    C_Timer.NewTicker(61, function() API:TrimTrades() end)

    if TEST_USERS[UnitName("player")] then
        C_Timer.NewTicker(1, function()
            local realmName = GetRealmName():gsub("%s+", "")
            if _G.OnlyFangsStreamerMap then
                for name, value in pairs(TEST_USERS) do
                    _G.OnlyFangsStreamerMap[name .. "-" .. realmName] = value
                end
            end
            if _G.OnlyFangsRaceMap then
                for name, value in pairs(TEST_USERS_RACE) do
                    _G.OnlyFangsRaceMap[name .. "-" .. realmName] = value
                end
            end
            if _G.SixtyProject and _G.SixtyProject.dbGlobal and _G.SixtyProject.dbGlobal.Guild then
                for name, twitchName in pairs(TEST_USERS) do
                    local guildEntry = _G.SixtyProject.dbGlobal.Guild[name] or {}
                    guildEntry.Streamer = twitchName
                    guildEntry.Race = TEST_USERS_RACE[name] or "Human"
                    guildEntry.Class = "Warrior"
                    guildEntry.Level = 60
                    guildEntry.Gender = 2
                    guildEntry.Honor = 0
                    guildEntry.Alive = true
                    guildEntry.Points = 0
                    guildEntry.LastSync = GetTime()
                    _G.SixtyProject.dbGlobal.Guild[name] = guildEntry
                end
            end
        end)
    end

    self.initAt = GetTime()
    self:RequestLatestConfig()
    self:RequestLatestState()
    self:RequestLatestTradeState()
    self:RequestLatestRatingsState()
    self:RequestLatestDeathClipState(self.initAt)
    self:RequestLatestLFGState()
    self:RequestLatestBlacklistState()
    self:RequestAddonVersion()
    self:RequestDeathClipReviewState()
    self:RequestLatestPendingTransactionState()

    if self.db.showDebugUIOnLoad and self.CreateDebugUI then
        self:CreateDebugUI()
        self.debugUI:Show()
    end
    if self.db.openAHOnLoad then
        C_Timer.NewTimer(0.5, function()
            OFAuctionFrame_OverrideInitialTab(ns.AUCTION_TAB_BROWSE)
            OFAuctionFrame:Show()
        end)
    end

    self.ignoreSenderCheck = false
    self.receivedAuctionState = false
    self.receivedTradeState = false
    self.receivedDeathClipsState = false
    self.receivedRatingState = false
    self.receivedLFGState = false
    self.receivedBlacklistState = false
    self.receivedPendingTransactionState = false
end

function AuctionHouse:BroadcastMessage(message)
    local channel = "GUILD"
    self:SendCommMessage(COMM_PREFIX, message, channel)
    return true
end

function AuctionHouse:SendDm(message, recipient, prio)
    self:SendCommMessage(COMM_PREFIX, message, "WHISPER", string.format("%s-%s", recipient, GetRealmName()), prio)
end

function AuctionHouse:BroadcastAuctionUpdate(dataType, payload)
    self:BroadcastMessage(self:Serialize({ dataType, payload }))
end

function AuctionHouse:BroadcastTradeUpdate(dataType, payload)
    self:BroadcastMessage(self:Serialize({ dataType, payload }))
end

function AuctionHouse:BroadcastRatingUpdate(dataType, payload)
    self:BroadcastMessage(self:Serialize({ dataType, payload }))
end

function AuctionHouse:BroadcastLFGUpdate(dataType, payload)
    self:BroadcastMessage(self:Serialize({ dataType, payload }))
end

function AuctionHouse:BroadcastBlacklistUpdate(dataType, payload)
    self:BroadcastMessage(self:Serialize({ dataType, payload }))
end

function AuctionHouse:BroadcastPendingTransactionUpdate(dataType, payload)
    self:BroadcastMessage(self:Serialize({ dataType, payload }))
end

function AuctionHouse:BroadcastDeathClipAdded(clip)
    self:BroadcastMessage(self:Serialize({ ns.T_DEATH_CLIP_ADDED, clip }))
end

function AuctionHouse:IsSyncWindowExpired()
    return GetTime() - self.initAt > 120
end

local function IsGuildMember(name)
    if ns.GuildRegister.table[getFullName(name)] then
        return true
    end
    return ns.GetAvgViewers(name) > 0
end

function AuctionHouse:OnCommReceived(prefix, message, distribution, sender)
    if not self.ignoreSenderCheck and distribution == W and not IsGuildMember(sender) then
        return
    end
    if prefix == OF_COMM_PREFIX then
        ns.HandleOFCommMessage(message, sender, distribution)
        return
    end
    if prefix ~= COMM_PREFIX then
        return
    end

    local success, data = self:Deserialize(message)
    if not success then return end
    if sender == UnitName("player") and not self.ignoreSenderCheck then return end

    local dataType, payload = data[1], data[2]
    ns.DebugLog("[DEBUG] recv", dataType, sender)
    if not isMessageAllowed(sender, distribution, dataType) then
        ns.DebugLog("[DEBUG] Ignoring message from", sender, "of type", dataType, "in channel", distribution)
        return
    end

    if dataType == T_AUCTION_ADD_OR_UPDATE then
        API:UpdateDB(payload)
        API:FireEvent(ns.T_AUCTION_ADD_OR_UPDATE, {auction = payload.auction, source = payload.source})
    elseif dataType == T_AUCTION_DELETED then
        API:DeleteAuctionInternal(payload, true)
        API:FireEvent(ns.T_AUCTION_DELETED, payload)
    elseif dataType == ns.T_TRADE_ADD_OR_UPDATE then
        API:UpdateDBTrade({trade = payload.trade})
        API:FireEvent(ns.T_TRADE_ADD_OR_UPDATE, {auction = payload.auction, source = payload.source})
    elseif dataType == ns.T_TRADE_DELETED then
        API:DeleteTradeInternal(payload, true)
    elseif dataType == ns.T_RATING_ADD_OR_UPDATE then
        API:UpdateDBRating(payload)
        API:FireEvent(ns.T_RATING_ADD_OR_UPDATE, { rating = payload.rating, source = payload.source })
    elseif dataType == ns.T_RATING_DELETE then
        API:DeleteRatingInternal(payload, true)
        API:FireEvent(ns.T_RATING_DELETE, { ratingID = payload.ratingID })
    elseif dataType == ns.T_LFG_ADD_OR_UPDATE then
        ns.LfgAPI:UpdateDBLFG(payload)
        API:FireEvent(ns.T_LFG_ADD_OR_UPDATE, { lfg = payload.lfg, source = payload.source })
    elseif dataType == ns.T_LFG_DELETED then
        local success, err = ns.LfgAPI:DeleteEntry(payload, true, true)
        if not success then
            ns.DebugLog("Failed to delete LFG entry:", payload, err)
        end
        API:FireEvent(ns.T_LFG_DELETED, { lfgKey = payload })
    elseif dataType == ns.T_PENDING_TRANSACTION_ADD_OR_UPDATE then
        ns.PendingTxAPI:UpdateDBPendingTransaction(payload)
        API:FireEvent(ns.T_PENDING_TRANSACTION_ADD_OR_UPDATE, { pendingTransaction = payload.transaction, source = payload.source })
        ns.PendingTxAPI:HandlePendingTransactionChange(payload.transaction)
    elseif dataType == ns.T_PENDING_TRANSACTION_DELETED then
        local success, err = ns.PendingTxAPI:RemovePendingTransaction(payload, true)
        if not success then
            ns.DebugLog("Failed to delete Pending Tx:", payload, err)
        end
    elseif dataType == T_AUCTION_STATE_REQUEST then
        local responsePayload, auctionCount, deletedCount = self:BuildDeltaState(payload.revision, payload.auctions)
        local serializeStart = GetTimePreciseSec()
        local serialized = self:Serialize(responsePayload)
        local serializeTime = (GetTimePreciseSec() - serializeStart) * 1000
        local compressStart = GetTimePreciseSec()
        local compressed = CompressDeflate(serialized)
        local compressTime = (GetTimePreciseSec() - compressStart) * 1000
        ns.DebugLog(string.format("[DEBUG] Sending delta state to %s: %d auctions, %d deleted IDs, rev %d (bytes-compressed: %d, serialize: %.0fms, compress: %.0fms)",
            sender, auctionCount, deletedCount, self.db.revision, #compressed, serializeTime, compressTime))
        self:SendDm(self:Serialize({ T_AUCTION_STATE, compressed }), sender, "BULK")
    elseif dataType == T_AUCTION_STATE then
        if self:IsSyncWindowExpired() and self.receivedAuctionState then
            ns.DebugLog("ignoring T_AUCTION_STATE")
            return
        end
        self.receivedAuctionState = true
        local decompressStart = GetTimePreciseSec()
        local decompressed = DecompressDeflate(payload)
        local decompressTime = (GetTimePreciseSec() - decompressStart) * 1000
        local deserializeStart = GetTimePreciseSec()
        local success, state = self:Deserialize(decompressed)
        local deserializeTime = (GetTimePreciseSec() - deserializeStart) * 1000
        if not success then return end
        if state.revision > self.db.revision then
            for id, auction in pairs(state.auctions or {}) do
                local oldAuction = self.db.auctions[id]
                self.db.auctions[id] = auction
                if not oldAuction then
                    API:FireEvent(ns.T_AUCTION_SYNCED, {auction = auction, source = "create"})
                elseif oldAuction.rev == auction.rev then
                    -- No action.
                elseif oldAuction.status ~= auction.status then
                    local source = auction.status == ns.AUCTION_STATUS_PENDING_TRADE and "buy" or (auction.status == ns.AUCTION_STATUS_PENDING_LOAN and "buy_loan" or "status_update")
                    API:FireEvent(ns.T_AUCTION_SYNCED, {auction = auction, source = source})
                else
                    API:FireEvent(ns.T_AUCTION_SYNCED, {auction = auction})
                end
            end
            for _, id in ipairs(state.deletedAuctionIds or {}) do
                self.db.auctions[id] = nil
            end
            self.db.revision = state.revision
            self.db.lastUpdateAt = state.lastUpdateAt
            API:FireEvent(ns.T_ON_AUCTION_STATE_UPDATE)
            ns.DebugLog(string.format("[DEBUG] Updated local state with %d new auctions, %d deleted auctions, revision %d (bytes-compressed: %d, decompress: %.0fms, deserialize: %.0fms)",
                #(state.auctions or {}), #(state.deletedAuctionIds or {}), self.db.revision, #payload, decompressTime, deserializeTime))
        end
    elseif dataType == T_CONFIG_REQUEST then
        if AHConfigSaved and payload.version < AHConfigSaved.version then
            self:SendDm(self:Serialize({ T_CONFIG_CHANGED, AHConfigSaved }), sender, "BULK")
        end
    elseif dataType == ns.T_DEATH_CLIPS_STATE_REQUEST then
        local newClips = ns.GetNewDeathClips(payload.since, payload.clips)
        if #newClips > 0 then
            local newClipsCompressed = CompressDeflate(self:Serialize(newClips))
            self:SendDm(self:Serialize({ ns.T_DEATH_CLIPS_STATE, newClipsCompressed }), sender, "BULK")
        end
    elseif dataType == ns.T_DEATH_CLIPS_STATE then
        if self:IsSyncWindowExpired() and self.receivedDeathClipsState then
            ns.DebugLog("ignoring T_DEATH_CLIPS_STATE")
            return
        end
        self.receivedDeathClipsState = true
        local decompressed = DecompressDeflate(payload)
        local ok, newClips = self:Deserialize(decompressed)
        if ok then
            ns.AddNewDeathClips(newClips)
            API:FireEvent(ns.EV_DEATH_CLIPS_CHANGED)
        end
    elseif dataType == ns.T_DEATH_CLIPS_MARK_OFFLINE then
        local reviewState = ns.GetDeathClipReviewState()
        reviewState:MarkClipOffline(payload.clipID, true)
    elseif dataType == ns.T_DEATH_CLIP_REVIEW_STATE_REQUEST then
        local rev = payload.rev
        local state = ns.GetDeathClipReviewState()
        if state.persisted.rev > rev then
            local responsePayload = state:GetSyncedState()
            local compressed = CompressDeflate(self:Serialize(responsePayload))
            self:SendDm(self:Serialize({ ns.T_DEATH_CLIP_REVIEW_STATE, compressed }), sender, "BULK")
        end
    elseif dataType == ns.T_DEATH_CLIP_REVIEW_STATE then
        local decompressed = DecompressDeflate(payload)
        local success, state = self:Deserialize(decompressed)
        if success then
            local reviewState = ns.GetDeathClipReviewState()
            reviewState:SyncState(state)
        end
    elseif dataType == ns.T_DEATH_CLIP_REVIEW_UPDATED then
        local review = payload.review
        local reviewState = ns.GetDeathClipReviewState()
        reviewState:UpdateReviewFromNetwork(review)
    elseif dataType == ns.T_ADMIN_UPDATE_CLIP_OVERRIDES then
        local reviewState = ns.GetDeathClipReviewState()
        reviewState:UpdateClipOverrides(payload.clipID, payload.overrides, true)
    elseif dataType == ns.T_ADMIN_REMOVE_CLIP then
        ns.RemoveDeathClip(payload.clipID)
    elseif dataType == ns.T_DEATH_CLIP_ADDED then
        ns.AddNewDeathClips({payload})
        local magicLink = ns.CreateMagicLink(ns.SPELL_ID_DEATH_CLIPS, L["watch death clip"])
        print(string.format(L["%s has died at Lv. %d."], ns.GetDisplayName(payload.characterName), payload.level) .. " " .. magicLink)
    elseif dataType == T_CONFIG_CHANGED then
        if payload.version > AHConfigSaved.version then
            AHConfigSaved = payload
        end
    elseif dataType == ns.T_TRADE_STATE_REQUEST then
        local responsePayload, tradeCount, deletedCount = self:BuildTradeDeltaState(payload.revTrades, payload.trades)
        local serializeStart = GetTimePreciseSec()
        local serialized = self:Serialize(responsePayload)
        local serializeTime = (GetTimePreciseSec() - serializeStart) * 1000
        local compressStart = GetTimePreciseSec()
        local compressed = CompressDeflate(serialized)
        local compressTime = (GetTimePreciseSec() - compressStart) * 1000
        ns.DebugLog(string.format("[DEBUG] Sending delta trades to %s: %d trades, %d deleted IDs, revTrades %d (compressed bytes: %d, serialize: %.0fms, compress: %.0fms)",
            sender, tradeCount, deletedCount, self.db.revTrades, #compressed, serializeTime, compressTime))
        self:SendDm(self:Serialize({ ns.T_TRADE_STATE, compressed }), sender, "BULK")
    elseif dataType == ns.T_TRADE_STATE then
        if self:IsSyncWindowExpired() and self.receivedTradeState then
            ns.DebugLog("ignoring T_TRADE_STATE")
            return
        end
        self.receivedTradeState = true
        local decompressStart = GetTimePreciseSec()
        local decompressed = DecompressDeflate(payload)
        local decompressTime = (GetTimePreciseSec() - decompressStart) * 1000
        local deserializeStart = GetTimePreciseSec()
        local ok, state = self:Deserialize(decompressed)
        local deserializeTime = (GetTimePreciseSec() - deserializeStart) * 1000
        if not ok then return end
        if state.revTrades > self.db.revTrades then
            for id, trade in pairs(state.trades or {}) do
                local oldTrade = self.db.trades[id]
                self.db.trades[id] = trade
                if not oldTrade then
                    API:FireEvent(ns.T_TRADE_SYNCED, { trade = trade, source = "create" })
                elseif oldTrade.rev == trade.rev then
                    -- trade sin cambios
                else
                    API:FireEvent(ns.T_TRADE_SYNCED, { trade = trade })
                end
            end
            for _, id in ipairs(state.deletedTradeIds or {}) do
                self.db.trades[id] = nil
            end
            self.db.revTrades = state.revTrades
            self.db.lastTradeUpdateAt = state.lastTradeUpdateAt
            API:FireEvent(ns.T_ON_TRADE_STATE_UPDATE)
            ns.DebugLog(string.format("[DEBUG] Updated local trade state with %d new/updated trades, %d deleted trades, revTrades %d (compressed bytes: %d, decompress: %.0fms, deserialize: %.0fms)",
                #(state.trades or {}), #(state.deletedTradeIds or {}), self.db.revTrades, #payload, decompressTime, deserializeTime))
        else
            ns.DebugLog("[DEBUG] Outdated trade state ignored", state.revTrades, self.db.revTrades)
        end
    elseif dataType == ns.T_RATING_STATE_REQUEST then
        local responsePayload, ratingCount, deletedCount = self:BuildRatingsDeltaState(payload.revision, payload.ratings)
        local serialized = self:Serialize(responsePayload)
        local compressed = CompressDeflate(serialized)
        ns.DebugLog(string.format("[DEBUG] Sending delta ratings to %s: %d ratings, %d deleted IDs, revision %d (compressed: %db, uncompressed: %db)",
            sender, ratingCount, deletedCount, self.db.revRatings, #compressed, #serialized))
        self:SendDm(self:Serialize({ ns.T_RATING_STATE, compressed }), sender, "BULK")
    elseif dataType == ns.T_RATING_STATE then
        if self:IsSyncWindowExpired() and self.receivedRatingState then
            ns.DebugLog("ignoring T_RATING_STATE")
            return
        end
        self.receivedRatingState = true
        local decompressed = DecompressDeflate(payload)
        local ok, state = self:Deserialize(decompressed)
        if not ok then return end
        if state.revRatings > self.db.revRatings then
            for id, rating in pairs(state.ratings or {}) do
                local oldRating = self.db.ratings[id]
                self.db.ratings[id] = rating
                if not oldRating then
                    API:FireEvent(ns.T_RATING_SYNCED, { rating = rating, source = "create" })
                elseif oldRating.rev == rating.rev then
                    -- rating sin cambios
                else
                    API:FireEvent(ns.T_RATING_SYNCED, { rating = rating })
                end
            end
            for _, id in ipairs(state.deletedRatingIds or {}) do
                self.db.ratings[id] = nil
            end
            self.db.revRatings = state.revRatings
            self.db.lastRatingUpdateAt = state.lastRatingUpdateAt
            API:FireEvent(ns.T_ON_RATING_STATE_UPDATE)
            ns.DebugLog(string.format("[DEBUG] Updated local ratings state with %d new/updated ratings, %d deleted ratings, revRatings %d", #(state.ratings or {}), #(state.deletedRatingIds or {}), self.db.revRatings))
        end
    end
end

-- Este archivo permanece con todas las funcionalidades originales, pero se han optimizado llamadas y se ha realizado caché de funciones
return AuctionHouse
