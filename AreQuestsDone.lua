local function AreQuestsDone(msg, editbox)
    for num in string.gmatch(msg, "%d+") do
        local questID = tonumber(num)
        local questName = C_QuestLog.GetTitleForQuestID(questID)
        local isCompleted = C_QuestLog.IsQuestFlaggedCompleted(questID)
        print(format("%s [%s]: %s", questID, questName or "Unknown Quest", isCompleted and "\124cff00ff00Yes\124r" or "\124cffff0000No\124r"))
    end
end

SLASH_AREQUESTSDONE1, SLASH_AREQUESTSDONE2 = '/aqd', '/arequestsdone'
SlashCmdList["AREQUESTSDONE"] = AreQuestsDone

