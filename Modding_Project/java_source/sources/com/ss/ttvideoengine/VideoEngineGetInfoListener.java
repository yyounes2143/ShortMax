package com.ss.ttvideoengine;

import java.util.Map;
/* loaded from: classes6.dex */
public interface VideoEngineGetInfoListener {
    public static final int GET_INFO_KEY_APP_VV_TRACKING = 4;
    public static final int GET_INFO_KEY_FORE_BACK_SWITCH_LIST = 2;
    public static final int GET_INFO_KEY_IS_BACKGROUND = 1;
    public static final int GET_INFO_KEY_LAST_FOREBACK_SWITCH_TIME = 3;

    default Object getInfo(int i10) {
        return null;
    }

    default Map<String, Object> getInfoMap(int i10) {
        return null;
    }
}
