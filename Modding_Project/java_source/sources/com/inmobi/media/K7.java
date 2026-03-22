package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class K7 implements InterfaceC2931e2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ T7 f23779a;

    public K7(T7 t72) {
        this.f23779a = t72;
    }

    @Override // com.inmobi.media.InterfaceC2931e2
    public final void a(int i10, int i11, int i12, int i13, int i14) {
    }

    @Override // com.inmobi.media.InterfaceC2931e2
    public final void b() {
        P0 p02 = this.f23779a.f24198w;
        if (p02 != null) {
            p02.d();
        }
    }

    @Override // com.inmobi.media.InterfaceC2931e2
    public final void a(JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
    }

    @Override // com.inmobi.media.InterfaceC2931e2
    public final void a(String url, String api, R6 r62) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(api, "api");
    }

    @Override // com.inmobi.media.InterfaceC2931e2
    public final void a(F6 landingPageFunnelState, R6 r62, Integer num) {
        Intrinsics.checkNotNullParameter(landingPageFunnelState, "landingPageFunnelState");
        J6.a(landingPageFunnelState, r62, num, 8);
    }

    @Override // com.inmobi.media.InterfaceC2931e2
    public final void a() {
        P0 p02 = this.f23779a.f24198w;
        if (p02 != null) {
            p02.b();
        }
        InterfaceC3269z5 interfaceC3269z5 = this.f23779a.f24185j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a();
        }
    }

    @Override // com.inmobi.media.InterfaceC2931e2
    public final void c() {
    }
}
