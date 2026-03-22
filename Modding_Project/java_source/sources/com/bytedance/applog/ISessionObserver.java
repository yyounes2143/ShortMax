package com.bytedance.applog;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public interface ISessionObserver {
    void onSessionBatchEvent(long j10, @NonNull String str, @Nullable JSONObject jSONObject);

    void onSessionStart(long j10, @NonNull String str);

    void onSessionTerminate(long j10, @NonNull String str, @Nullable JSONObject jSONObject);
}
