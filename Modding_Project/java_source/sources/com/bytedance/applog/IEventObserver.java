package com.bytedance.applog;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public interface IEventObserver {
    void onEvent(@NonNull String str, @NonNull String str2, String str3, long j10, long j11, String str4);

    void onEventV3(@NonNull String str, @Nullable JSONObject jSONObject);
}
