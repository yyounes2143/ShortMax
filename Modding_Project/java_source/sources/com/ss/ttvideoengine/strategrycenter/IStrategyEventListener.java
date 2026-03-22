package com.ss.ttvideoengine.strategrycenter;

import androidx.annotation.Nullable;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public interface IStrategyEventListener {
    public static final int EVENT_KEY_PLAY_RELATED_PRELOAD_FINISHED = 2012;

    default void onCustomEvent(String str, @Nullable String str2, @Nullable JSONObject jSONObject) {
    }

    default void onEvent(@Nullable String str, int i10, int i11, @Nullable String str2) {
    }
}
