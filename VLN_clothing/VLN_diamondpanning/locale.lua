Locales = {} --Credit to bcc-boats for this

function _T(str, ...) -- دالة الترجمة مع تعديل الاسم
    if Locales[Config.locale] ~= nil then
        if Locales[Config.locale][str] ~= nil then
            return string.format(Locales[Config.locale][str], ...)
        else
            return 'Translation [' .. Config.locale .. '][' .. str .. '] does not exist'
        end
    else
        return 'Locale [' .. Config.locale .. '] does not exist'
    end
end

function _TU(str, ...) -- دالة الترجمة مع الحرف الأول كبير
    return tostring(_T(str, ...):gsub("^%l", string.upper))
end
