package com.inmobi.media;

import com.ss.texturerender.TextureRenderKeys;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class C4 {
    public static final JSONObject a(B4 b42) {
        Intrinsics.checkNotNullParameter(b42, "<this>");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(TextureRenderKeys.KEY_IS_X, Float.valueOf(B2.a(b42.f23507a)));
        jSONObject.put(TextureRenderKeys.KEY_IS_Y, Float.valueOf(B2.a(b42.f23508b)));
        jSONObject.put("width", b42.f23509c);
        jSONObject.put("height", b42.f23510d);
        return jSONObject;
    }
}
