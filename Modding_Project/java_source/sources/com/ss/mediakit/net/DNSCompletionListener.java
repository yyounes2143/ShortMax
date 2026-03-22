package com.ss.mediakit.net;

import org.json.JSONObject;
/* loaded from: classes6.dex */
public interface DNSCompletionListener {
    void onCancelled();

    void onCompletion(JSONObject jSONObject, Error error);

    void onRetry(Error error);
}
