package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.iab.omid.library.inmobi.Omid;
import com.iab.omid.library.inmobi.adsession.AdSession;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.ka  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3035ka extends We {

    /* renamed from: h  reason: collision with root package name */
    public static final /* synthetic */ int f24932h = 0;

    /* renamed from: e  reason: collision with root package name */
    public final Xe f24933e;

    /* renamed from: f  reason: collision with root package name */
    public C2971ga f24934f;

    /* renamed from: g  reason: collision with root package name */
    public final InterfaceC3269z5 f24935g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3035ka(InterfaceC3231x adContainer, Xe mViewableAd, C2971ga c2971ga, InterfaceC3269z5 interfaceC3269z5) {
        super(adContainer);
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        this.f24933e = mViewableAd;
        this.f24934f = c2971ga;
        this.f24935g = interfaceC3269z5;
    }

    @Override // com.inmobi.media.Xe
    public final View a(View view, ViewGroup parent, boolean z10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return this.f24933e.a(view, parent, z10);
    }

    @Override // com.inmobi.media.Xe
    public final View b() {
        return this.f24933e.b();
    }

    @Override // com.inmobi.media.Xe
    public final View d() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24935g;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("ka", "TAG");
            ((A5) interfaceC3269z5).c("ka", "inflateView called");
        }
        return this.f24933e.d();
    }

    @Override // com.inmobi.media.Xe
    public final void e() {
        try {
            try {
                InterfaceC3269z5 interfaceC3269z5 = this.f24935g;
                if (interfaceC3269z5 != null) {
                    Intrinsics.checkNotNullExpressionValue("ka", "TAG");
                    ((A5) interfaceC3269z5).a("ka", "stopTrackingForImpression");
                }
                C2971ga c2971ga = this.f24934f;
                if (c2971ga != null && C2971ga.a(c2971ga.f24775e, (byte) 2)) {
                    AdSession adSession = c2971ga.f24776f;
                    if (adSession != null) {
                        adSession.finish();
                    }
                    c2971ga.f24776f = null;
                    c2971ga.f24775e = (byte) 3;
                }
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z52 = this.f24935g;
                if (interfaceC3269z52 != null) {
                    Intrinsics.checkNotNullExpressionValue("ka", "TAG");
                    ((A5) interfaceC3269z52).b("ka", "Exception in stopTrackingForImpression with message : " + e10.getMessage());
                }
            }
            this.f24933e.e();
        } catch (Throwable th2) {
            this.f24933e.e();
            throw th2;
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        InterfaceC3269z5 interfaceC3269z5 = this.f24935g;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("ka", "TAG");
            ((A5) interfaceC3269z5).a("ka", "addFriendlyView with obstruction code: " + obstructionCode);
        }
        C2971ga c2971ga = this.f24934f;
        if (c2971ga != null) {
            c2971ga.a(childView, obstructionCode);
        }
        this.f24933e.a(childView, obstructionCode);
    }

    @Override // com.inmobi.media.Xe
    public final void a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        C2971ga c2971ga = this.f24934f;
        if (c2971ga != null) {
            Intrinsics.checkNotNullParameter(childView, "childView");
            byte b10 = c2971ga.f24775e;
            if (b10 > 0) {
                AdSession adSession = c2971ga.f24776f;
                if (adSession != null) {
                    adSession.removeFriendlyObstruction(childView);
                }
            } else {
                S5 s52 = S5.f24132a;
                C2947f2 event = new C2947f2(new Exception("Omid AdSession State Error currentState :: " + ((int) b10) + ", expectedState :: 1"));
                Intrinsics.checkNotNullParameter(event, "event");
                S5.f24135d.a(event);
            }
        }
        this.f24933e.a(childView);
    }

    @Override // com.inmobi.media.Xe
    public final void a(Map map) {
        View view;
        InterfaceC3269z5 interfaceC3269z5 = this.f24935g;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("ka", "TAG");
            ((A5) interfaceC3269z5).a("ka", "startTrackingForImpression");
        }
        try {
            try {
                if (this.f24377d.getViewability().getOmidConfig().isOmidEnabled()) {
                    AbstractC3083na.f25061a.getClass();
                    if (Omid.isActive()) {
                        InterfaceC3231x interfaceC3231x = this.f24374a;
                        if (interfaceC3231x instanceof T7) {
                            T7 t72 = (T7) interfaceC3231x;
                            view = t72.H;
                            if (view == null) {
                                view = t72.I;
                            }
                        } else {
                            View b10 = this.f24933e.b();
                            view = b10 instanceof WebView ? (WebView) b10 : null;
                        }
                        if (view != null) {
                            InterfaceC3269z5 interfaceC3269z52 = this.f24935g;
                            if (interfaceC3269z52 != null) {
                                Intrinsics.checkNotNullExpressionValue("ka", "TAG");
                                ((A5) interfaceC3269z52).a("ka", "creating OMSDK session");
                            }
                            C2971ga c2971ga = this.f24934f;
                            if (c2971ga != null) {
                                c2971ga.a(view, map, (View) null);
                            }
                        }
                    }
                }
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z53 = this.f24935g;
                if (interfaceC3269z53 != null) {
                    Intrinsics.checkNotNullExpressionValue("ka", "TAG");
                    ((A5) interfaceC3269z53).b("ka", "Exception in startTrackingForImpression with message : " + e10.getMessage());
                }
            }
            this.f24933e.a(map);
        } catch (Throwable th2) {
            this.f24933e.a(map);
            throw th2;
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(byte b10) {
        this.f24933e.a(b10);
    }

    @Override // com.inmobi.media.Xe
    public final void a(Context context, byte b10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f24933e.a(context, b10);
    }

    @Override // com.inmobi.media.Xe
    public final void a() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24935g;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("ka", "TAG");
            ((A5) interfaceC3269z5).c("ka", "destroy");
        }
        super.a();
        try {
            this.f24934f = null;
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24935g;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("ka", "TAG");
                ((A5) interfaceC3269z52).a("ka", "Exception in destroy with message", e10);
            }
        } finally {
            this.f24933e.a();
        }
    }
}
