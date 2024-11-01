function Initialize()
    -- 初始化空变量
    cpuName = ""
end

function Update()
    -- 获取 MeasureCPUName 的值
    local cpuInfo = SKIN:GetMeasure("MeasureGetCPUName"):GetStringValue()

    -- 使用正则表达式提取 CPU [#0]: 后的文字
    cpuName = cpuInfo:match("CPU %[#0%]: (.+)")
    return cpuName or "Unknown"
end
