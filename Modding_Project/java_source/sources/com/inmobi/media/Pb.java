package com.inmobi.media;

import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Pb implements InterfaceC2931e2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ GestureDetector$OnGestureListenerC2941ec f23985a;

    public Pb(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        this.f23985a = gestureDetector$OnGestureListenerC2941ec;
    }

    @Override // com.inmobi.media.InterfaceC2931e2
    public final void a(String url, String api, R6 r62) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(api, "api");
        this.f23985a.getLandingPageHandler().a(url, api, r62);
    }

    @Override // com.inmobi.media.InterfaceC2931e2
    public final void b() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23985a.f24680i;
        if (interfaceC3269z5 != null) {
            String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((A5) interfaceC3269z5).a(str, "onCCTScreenDisplayed");
        }
        this.f23985a.getListener().e(this.f23985a);
        GestureDetector$OnGestureListenerC2941ec.a(this.f23985a, null, null, null);
    }

    @Override // com.inmobi.media.InterfaceC2931e2
    public final void c() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23985a.f24680i;
        if (interfaceC3269z5 != null) {
            String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((A5) interfaceC3269z5).a(str, "onCCTPageLoadedSuccessfully");
        }
        this.f23985a.p();
    }

    @Override // com.inmobi.media.InterfaceC2931e2
    public final void a(F6 funnelState, R6 r62, Integer num) {
        Intrinsics.checkNotNullParameter(funnelState, "landingPageFunnelState");
        M6 landingPageHandler = this.f23985a.getLandingPageHandler();
        landingPageHandler.getClass();
        Intrinsics.checkNotNullParameter(funnelState, "funnelState");
        J6.a(funnelState, r62, num, new L6(landingPageHandler));
    }

    @Override // com.inmobi.media.InterfaceC2931e2
    public final void a() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23985a.f24680i;
        if (interfaceC3269z5 != null) {
            String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((A5) interfaceC3269z5).a(str, "onCCTScreenDismissed");
        }
        this.f23985a.z();
    }

    @Override // com.inmobi.media.InterfaceC2931e2
    public final void a(int i10, int i11, int i12, int i13, int i14) {
        InterfaceC3269z5 interfaceC3269z5 = this.f23985a.f24680i;
        if (interfaceC3269z5 != null) {
            String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((A5) interfaceC3269z5).a(str, "onCCTLayout");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f23985a;
        JSONObject jsonObject = new JSONObject();
        jsonObject.put(NotificationCompat.CATEGORY_EVENT, "customTabLayout");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(TtmlNode.LEFT, B2.a(i10));
        jSONObject.put("top", B2.a(i11));
        jSONObject.put(TtmlNode.RIGHT, B2.a(i12));
        jSONObject.put("bottom", B2.a(i13));
        jSONObject.put("state", i14);
        Unit unit = Unit.f60915a;
        jsonObject.put(TtmlNode.TAG_LAYOUT, jSONObject);
        gestureDetector$OnGestureListenerC2941ec.getClass();
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        InterfaceC3269z5 interfaceC3269z52 = gestureDetector$OnGestureListenerC2941ec.f24680i;
        if (interfaceC3269z52 != null) {
            String str2 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            ((A5) interfaceC3269z52).a(str2, Ob.a(gestureDetector$OnGestureListenerC2941ec, str2, "TAG", "onCTLifeCycleEvent "));
        }
        gestureDetector$OnGestureListenerC2941ec.c("window.imraid.broadcastEvent('onCTLifeCycleEvent', " + jsonObject + ");");
    }

    @Override // com.inmobi.media.InterfaceC2931e2
    public final void a(JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        InterfaceC3269z5 interfaceC3269z5 = this.f23985a.f24680i;
        if (interfaceC3269z5 != null) {
            String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((A5) interfaceC3269z5).a(str, "onCCTLifeCycleEvent");
        }
        this.f23985a.a(jsonObject);
    }
}
