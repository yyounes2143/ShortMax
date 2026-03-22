package com.bytedance.applog.event;

import androidx.annotation.NonNull;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public interface IEventHandler {
    int acceptType();

    EventPolicy onReceive(int i10, @NonNull String str, @NonNull JSONObject jSONObject);
}
