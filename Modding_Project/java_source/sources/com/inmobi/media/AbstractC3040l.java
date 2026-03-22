package com.inmobi.media;

import android.net.Uri;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.l  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3040l {
    public static String a(C3008j asset, File file, long j10, long j11) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(file, "file");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("url", asset.f24869b);
            jSONObject.put("saved_url", Uri.fromFile(file));
            jSONObject.put("size_in_bytes", file.length());
            jSONObject.put("download_started_at", j10);
            jSONObject.put("download_ended_at", j11);
        } catch (JSONException e10) {
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
        }
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
        return StringsKt.P(jSONObject2, "\"", "\\\"", false, 4, null);
    }
}
