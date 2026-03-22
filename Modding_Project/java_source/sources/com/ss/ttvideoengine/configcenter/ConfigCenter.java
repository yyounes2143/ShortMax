package com.ss.ttvideoengine.configcenter;

import org.json.JSONObject;
/* loaded from: classes6.dex */
public final class ConfigCenter {
    public static final int CONFIG_SOURCE_PRIORITY_USER_SETTINGS = 1;
    public static final int CONFIG_SOURCE_PRIORITY_VOD_SETTINGS = 2;

    /* loaded from: classes6.dex */
    private static final class InstanceHolder {
        private static final ConfigCenter INSTANCE = new ConfigCenter();

        private InstanceHolder() {
        }
    }

    public static ConfigCenter getInstance() {
        return InstanceHolder.INSTANCE;
    }

    private ConfigCenter() {
    }

    public void updateVodSettings(String str, JSONObject jSONObject) {
    }
}
