package com.ss.ttvideoengine.net;

import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public abstract class TTVNetClient {
    public static final int METHOD_GET = 0;
    public static final int METHOD_POST = 1;
    private static final String TAG = "TTVNetClient";

    /* loaded from: classes6.dex */
    public interface CompletionListener {
        void onCompletion(JSONObject jSONObject, Error error);
    }

    /* loaded from: classes6.dex */
    public interface RawCompletionListener {
        void onCompletion(String str, Error error);
    }

    public void cancel() {
        TTVideoEngineLog.e(TAG, "TTVNetClient is a abstract class, imp is null");
    }

    public void startTask(String str, Map<String, String> map, JSONObject jSONObject, int i10, CompletionListener completionListener) {
        TTVideoEngineLog.e(TAG, "TTVNetClient is a abstract class, imp is null");
    }

    public void startTask(String str, Map<String, String> map, JSONObject jSONObject, int i10, RawCompletionListener rawCompletionListener) {
        TTVideoEngineLog.e(TAG, "TTVNetClient is a abstract class, imp is null");
    }

    public void startTask(String str, Map<String, String> map, CompletionListener completionListener) {
        TTVideoEngineLog.e(TAG, "TTVNetClient is a abstract class, imp is null");
    }

    public void startTask(String str, CompletionListener completionListener) {
        TTVideoEngineLog.e(TAG, "TTVNetClient is a abstract class, imp is null");
    }
}
