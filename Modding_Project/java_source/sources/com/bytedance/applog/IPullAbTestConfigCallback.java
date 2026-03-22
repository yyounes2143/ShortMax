package com.bytedance.applog;

import androidx.annotation.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public interface IPullAbTestConfigCallback {
    void onRemoteConfig(@Nullable JSONObject jSONObject);

    void onThrottle(long j10);

    void onTimeoutError();
}
