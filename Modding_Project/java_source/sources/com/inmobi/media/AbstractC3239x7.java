package com.inmobi.media;

import com.ss.ttvideoengine.DataLoaderHelper;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.x7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3239x7 {
    public static int a(String str, JSONObject jSONObject) {
        if (str != null && jSONObject.has(str)) {
            return jSONObject.getInt(str);
        }
        return jSONObject.getInt(DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
    }
}
