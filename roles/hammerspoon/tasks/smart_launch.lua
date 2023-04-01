log = hs.logger.new("smart_launch", "debug")

-- time helpers
sec = 1
min = 60 * sec
SESSION_LENGTH = 25 * min
BREAK_DURATION = 3 * min
-- ------------------

LAST_BREAK_TIME = os.time()

function launch(name)
    return function()
        if is_time_to_rest() then
            show_message_to_rest()
        end
        hs.application.launchOrFocus(name)
    end
end

function is_time_to_rest()
    now = os.time()
    if now - LAST_BREAK_TIME > SESSION_LENGTH then
        LAST_BREAK_TIME = now
        log.d("breat at: " .. os.date("%H:%M", LAST_BREAK_TIME))
        return true
    else
        return false
    end

end

function show_message_to_rest()
    hs.alert.show("take a break", {
        fadeOutDuration = BREAK_DURATION
    })
end

function force_break()
    log.d("forcing a break at: " .. os.date("%H:%M", LAST_BREAK_TIME))
    LAST_BREAK_TIME = os.time() - SESSION_LENGTH - 1 * min
    show_message_to_rest()
end