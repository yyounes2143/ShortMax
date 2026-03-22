package com.bytedance.vodsetting;

import androidx.annotation.Nullable;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public interface FetcherListener {
    public static final int ErrorInvalidHostCode = -998;
    public static final int ErrorInvalidJsonCode = -997;
    public static final int ErrorOverRetryTimesCode = -999;
    public static final int SuccessCode = 0;

    void onResult(int i10, String str, @Nullable JSONObject jSONObject);

    void onResult(int i10, String str, @Nullable JSONObject jSONObject, @Nullable String str2, @Nullable String str3);
}
