package com.ss.ttvideoengine;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.setting.SettingsHelper;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VodSettings {
    private static Map<String, Object> sCustomVodSettings;

    public static int getVodInt(String str) {
        return getVodInt(str, 0);
    }

    @Nullable
    public static JSONArray getVodJsonArray(String str) {
        synchronized (VodSettings.class) {
            try {
                Map<String, Object> map = sCustomVodSettings;
                if (map != null) {
                    Object obj = map.get(str);
                    if (obj instanceof JSONArray) {
                        return (JSONArray) obj;
                    }
                }
                return SettingsHelper.helper().getVodJsonArray(str);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static JSONObject getVodJsonObject(String str) {
        synchronized (VodSettings.class) {
            try {
                Map<String, Object> map = sCustomVodSettings;
                if (map != null) {
                    Object obj = map.get(str);
                    if (obj instanceof JSONObject) {
                        return (JSONObject) obj;
                    }
                }
                return SettingsHelper.helper().getVodJsonObject(str);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static long getVodLong(String str) {
        return getVodLong(str, 0L);
    }

    public static String getVodString(String str) {
        return getVodString(str, null);
    }

    public static void setCustomVodSettings(Map<String, Object> map) {
        synchronized (VodSettings.class) {
            sCustomVodSettings = map;
        }
    }

    public static int getVodInt(String str, int i10) {
        synchronized (VodSettings.class) {
            try {
                Map<String, Object> map = sCustomVodSettings;
                if (map != null) {
                    Object obj = map.get(str);
                    if (obj instanceof Integer) {
                        return ((Integer) obj).intValue();
                    }
                }
                return SettingsHelper.helper().getVodInt(str, i10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static long getVodLong(String str, long j10) {
        synchronized (VodSettings.class) {
            try {
                Map<String, Object> map = sCustomVodSettings;
                if (map != null) {
                    Object obj = map.get(str);
                    if (obj instanceof Long) {
                        return ((Long) obj).longValue();
                    }
                }
                return SettingsHelper.helper().getVodLong(str, j10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static String getVodString(String str, String str2) {
        synchronized (VodSettings.class) {
            try {
                Map<String, Object> map = sCustomVodSettings;
                if (map != null) {
                    Object obj = map.get(str);
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                }
                return SettingsHelper.helper().getVodString(str, str2);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
