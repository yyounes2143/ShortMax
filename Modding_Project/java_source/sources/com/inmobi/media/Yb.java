package com.inmobi.media;

import com.bytedance.vodsetting.Module;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Yb implements Ha {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ GestureDetector$OnGestureListenerC2941ec f24409a;

    public Yb(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        this.f24409a = gestureDetector$OnGestureListenerC2941ec;
    }

    public final void a(String id2, int i10, String str, long j10, int i11) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullExpressionValue(GestureDetector$OnGestureListenerC2941ec.f24663a1, "access$getTAG$cp(...)");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(Module.ResponseKey.Code, i10);
        if (str != null) {
            jSONObject.put("msg", str);
        }
        jSONObject.put("retryCount", i11);
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f24409a;
        gestureDetector$OnGestureListenerC2941ec.c("window.imraidview.broadcastEvent('onPingComplete', '" + id2 + "', " + j10 + ", '" + jSONObject2 + "');");
    }
}
