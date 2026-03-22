package com.bytedance.applog;

import androidx.annotation.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public interface IPresetEventObserver {
    void onLaunch(@Nullable JSONObject jSONObject);

    void onPageEnter(@Nullable JSONObject jSONObject);

    void onPageLeave(@Nullable JSONObject jSONObject);
}
