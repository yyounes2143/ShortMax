package com.inmobi.media;

import com.vungle.ads.internal.Constants;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Z8 implements InterfaceC3215w {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2870a9 f24448a;

    public Z8(C2870a9 c2870a9) {
        this.f24448a = c2870a9;
    }

    @Override // com.inmobi.media.InterfaceC3215w
    public final void a() {
        Intrinsics.checkNotNullExpressionValue(this.f24448a.X, "access$getTAG$p(...)");
        P0 p02 = this.f24448a.f24198w;
        if (p02 != null) {
            p02.c();
        }
    }

    @Override // com.inmobi.media.InterfaceC3215w
    public final void b(Object obj) {
        C2904c9 c2904c9;
        Xe viewableAd;
        Intrinsics.checkNotNullExpressionValue(this.f24448a.X, "access$getTAG$p(...)");
        if (obj instanceof C2904c9) {
            c2904c9 = (C2904c9) obj;
        } else {
            c2904c9 = null;
        }
        if (c2904c9 != null) {
            HashMap hashMap = c2904c9.f24597t;
            Boolean bool = Boolean.FALSE;
            hashMap.put("didRequestFullScreen", bool);
            hashMap.put("isFullScreen", bool);
            c2904c9.f24600w = null;
            HashMap hashMap2 = c2904c9.f24597t;
            hashMap2.put("didRequestFullScreen", bool);
            hashMap2.put("isFullScreen", bool);
            c2904c9.f24600w = null;
        }
        C2870a9 c2870a9 = this.f24448a;
        if (c2870a9.f24176a == 0) {
            Xe viewableAd2 = c2870a9.getViewableAd();
            if (viewableAd2 != null) {
                viewableAd2.a((byte) 2);
            }
            T7 t72 = this.f24448a.f24197v;
            if (t72 != null && (viewableAd = t72.getViewableAd()) != null) {
                viewableAd.a((byte) 16);
            }
            if (c2904c9 != null) {
                c2904c9.a("exitFullscreen", this.f24448a.j(c2904c9), (L7) null, this.f24448a.W);
            }
        } else {
            Xe viewableAd3 = c2870a9.getViewableAd();
            if (viewableAd3 != null) {
                viewableAd3.a((byte) 3);
            }
        }
        P0 p02 = this.f24448a.f24198w;
        if (p02 != null) {
            p02.b();
        }
        InterfaceC3269z5 interfaceC3269z5 = this.f24448a.W;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a();
        }
    }

    @Override // com.inmobi.media.InterfaceC3215w
    public final void a(Object obj) {
        if (this.f24448a.f() == null) {
            return;
        }
        C2904c9 c2904c9 = obj instanceof C2904c9 ? (C2904c9) obj : null;
        Intrinsics.checkNotNullExpressionValue(this.f24448a.X, "access$getTAG$p(...)");
        if (c2904c9 != null) {
            HashMap hashMap = c2904c9.f24597t;
            Boolean bool = Boolean.TRUE;
            hashMap.put("didRequestFullScreen", bool);
            hashMap.put("isFullScreen", bool);
            hashMap.put("shouldAutoPlay", bool);
            C2920d8 c2920d8 = c2904c9.f24600w;
            if (c2920d8 != null) {
                HashMap hashMap2 = c2920d8.f24597t;
                hashMap2.put("didRequestFullScreen", bool);
                hashMap2.put("isFullScreen", bool);
                hashMap2.put("shouldAutoPlay", bool);
            }
        }
        C2870a9 c2870a9 = this.f24448a;
        if (c2870a9.f24176a == 0) {
            Xe viewableAd = c2870a9.getViewableAd();
            if (viewableAd != null) {
                viewableAd.a((byte) 1);
            }
            if (c2904c9 != null) {
                c2904c9.a(Constants.TEMPLATE_TYPE_FULLSCREEN, this.f24448a.j(c2904c9), (L7) null, this.f24448a.W);
            }
        }
        P0 p02 = this.f24448a.f24198w;
        if (p02 != null) {
            p02.d();
        }
    }
}
