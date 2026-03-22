package com.bytedance.vodsetting;

import androidx.annotation.Nullable;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class NetInterface {

    /* loaded from: classes3.dex */
    public interface CompletionListener {
        void onCompletion(@Nullable JSONObject jSONObject, @Nullable Error error);
    }

    public void cancel() {
    }

    public void start(String str, Map<String, String> map, CompletionListener completionListener) {
    }
}
