package com.ss.ttvideoengine.drm;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.UUID;
/* loaded from: classes6.dex */
public class DrmUtils {
    private static final String SHARED_PREF_VOD_DRM_FILE = "shared_pref_vod_drm";
    private static final String SHARED_PREF_VOD_DRM_KEY_ENGINE_UNIQUE_ID = "engine_unique_id";
    private static String sEngineUniqueId;

    public static long getDrmExpireTime(String str) {
        String[] split;
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        for (String str2 : str.split(ContainerUtils.FIELD_DELIMITER)) {
            if (str2.startsWith("DrmExpireTimestamp=")) {
                try {
                    return Long.parseLong(str2.substring(19));
                } catch (Exception unused) {
                    return 0L;
                }
            }
        }
        return 0L;
    }

    @NonNull
    public static String getEngineUniqueId(Context context) {
        String str;
        synchronized (DrmUtils.class) {
            str = sEngineUniqueId;
        }
        if (TextUtils.isEmpty(str)) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(SHARED_PREF_VOD_DRM_FILE, 0);
            str = sharedPreferences.getString(SHARED_PREF_VOD_DRM_KEY_ENGINE_UNIQUE_ID, null);
            if (TextUtils.isEmpty(str)) {
                str = Base64.encodeToString((context.getPackageName() + "_" + System.currentTimeMillis() + "_" + UUID.randomUUID().toString()).getBytes(), 3);
                synchronized (DrmUtils.class) {
                    sEngineUniqueId = str;
                }
                sharedPreferences.edit().putString(SHARED_PREF_VOD_DRM_KEY_ENGINE_UNIQUE_ID, sEngineUniqueId).apply();
            }
        }
        return str;
    }
}
