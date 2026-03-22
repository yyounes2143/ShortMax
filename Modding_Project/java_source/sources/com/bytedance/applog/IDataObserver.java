package com.bytedance.applog;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public interface IDataObserver {
    void onAbVidsChange(@NonNull String str, @NonNull String str2);

    void onIdLoaded(@NonNull String str, @NonNull String str2, @NonNull String str3);

    void onRemoteAbConfigGet(boolean z10, @NonNull JSONObject jSONObject);

    void onRemoteConfigGet(boolean z10, @Nullable JSONObject jSONObject);

    void onRemoteIdGet(boolean z10, @Nullable String str, @NonNull String str2, @NonNull String str3, @NonNull String str4, @NonNull String str5, @NonNull String str6);
}
