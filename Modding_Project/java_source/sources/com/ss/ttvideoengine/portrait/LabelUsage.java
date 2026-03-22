package com.ss.ttvideoengine.portrait;

import android.text.TextUtils;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class LabelUsage {
    public static final String KEY_LABEL_USAGE = "label_usage";
    private static final String TAG = "LabelUsage";
    private final ConcurrentHashMap<String, Object> mLabelUsage = new ConcurrentHashMap<>(3);

    private Map<String, Object> jsonToMap(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object opt = jSONObject.opt(next);
            if (opt != null) {
                hashMap.put(next, opt);
            }
        }
        return hashMap;
    }

    public void addUsage(Map<String, Object> map) {
        if (map != null && !map.isEmpty()) {
            this.mLabelUsage.putAll(map);
        }
    }

    public HashMap<String, Object> get(Map<String, Object> map) {
        Map<String, Object> map2;
        HashMap<String, Object> hashMap = new HashMap<>(this.mLabelUsage);
        if (map.containsKey(KEY_LABEL_USAGE)) {
            try {
                Object obj = map.get(KEY_LABEL_USAGE);
                if (obj instanceof JSONObject) {
                    map2 = jsonToMap((JSONObject) obj);
                } else if (obj instanceof Map) {
                    map2 = (Map) obj;
                } else {
                    TTVideoEngineLog.e(TAG, "invalid parameter type");
                    map2 = null;
                }
                if (map2 != null) {
                    hashMap.putAll(map2);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return hashMap;
    }

    public void updateByVideoModel(IVideoModel iVideoModel) {
        String videoRefStr = iVideoModel.getVideoRefStr(245);
        if (!TextUtils.isEmpty(videoRefStr)) {
            try {
                this.mLabelUsage.putAll(jsonToMap(new JSONObject(videoRefStr)));
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
    }
}
