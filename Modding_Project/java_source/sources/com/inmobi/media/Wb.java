package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Wb implements InterfaceC3185u1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ GestureDetector$OnGestureListenerC2941ec f24343a;

    public Wb(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        this.f24343a = gestureDetector$OnGestureListenerC2941ec;
    }

    @Override // com.inmobi.media.InterfaceC3185u1
    public final void a(C3024k assetBatch, byte b10) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        if (assetBatch.f24906c == null || assetBatch.f24910g.size() <= 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("url", ((C3008j) assetBatch.f24910g.get(0)).f24869b);
            jSONObject.put("reason", (int) ((C3008j) assetBatch.f24910g.get(0)).f24879l);
        } catch (JSONException unused) {
        }
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
        String str = "sendSaveContentResult(\"saveContent_" + assetBatch.f24909f + "\", 'failed', \"" + StringsKt.P(jSONObject2, "\"", "\\\"", false, 4, null) + "\");";
        InterfaceC3269z5 interfaceC3269z5 = this.f24343a.f24680i;
        if (interfaceC3269z5 != null) {
            String str2 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            ((A5) interfaceC3269z5).b(str2, I6.a(str2, "access$getTAG$cp(...)", "Failure injection ", str));
        }
        this.f24343a.a(assetBatch.f24906c, str);
    }

    @Override // com.inmobi.media.InterfaceC3185u1
    public final void a(C3024k assetBatch) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        if (assetBatch.f24906c == null || assetBatch.f24910g.size() <= 0) {
            return;
        }
        String str = "sendSaveContentResult(\"saveContent_" + assetBatch.f24909f + "\", 'success', \"" + ((C3008j) assetBatch.f24910g.get(0)).f24877j + "\");";
        InterfaceC3269z5 interfaceC3269z5 = this.f24343a.f24680i;
        if (interfaceC3269z5 != null) {
            String str2 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            ((A5) interfaceC3269z5).a(str2, I6.a(str2, "access$getTAG$cp(...)", "Success injection ", str));
        }
        this.f24343a.a(assetBatch.f24906c, str);
    }
}
