package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.Omid;
import com.iab.omid.library.inmobi.adsession.AdEvents;
import com.iab.omid.library.inmobi.adsession.AdSession;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.la  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3051la extends We {

    /* renamed from: e  reason: collision with root package name */
    public final We f24988e;

    /* renamed from: f  reason: collision with root package name */
    public C2971ga f24989f;

    /* renamed from: g  reason: collision with root package name */
    public final InterfaceC3269z5 f24990g;

    /* renamed from: h  reason: collision with root package name */
    public final String f24991h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3051la(T7 adContainer, We mViewableAd, C2971ga c2971ga, InterfaceC3269z5 interfaceC3269z5) {
        super(adContainer);
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        this.f24988e = mViewableAd;
        this.f24989f = c2971ga;
        this.f24990g = interfaceC3269z5;
        this.f24991h = C3051la.class.getSimpleName();
    }

    @Override // com.inmobi.media.Xe
    public final View a(View view, ViewGroup parent, boolean z10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return this.f24988e.a(view, parent, z10);
    }

    @Override // com.inmobi.media.Xe
    public final View b() {
        return this.f24988e.b();
    }

    @Override // com.inmobi.media.Xe
    public final View d() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24990g;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24991h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "inflateView");
        }
        return this.f24988e.d();
    }

    @Override // com.inmobi.media.Xe
    public final void e() {
        try {
            try {
                InterfaceC3269z5 interfaceC3269z5 = this.f24990g;
                if (interfaceC3269z5 != null) {
                    String TAG = this.f24991h;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z5).c(TAG, "stopTrackingForImpression");
                }
                C2971ga c2971ga = this.f24989f;
                if (c2971ga != null && C2971ga.a(c2971ga.f24775e, (byte) 2)) {
                    AdSession adSession = c2971ga.f24776f;
                    if (adSession != null) {
                        adSession.finish();
                    }
                    c2971ga.f24776f = null;
                    c2971ga.f24775e = (byte) 3;
                }
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z52 = this.f24990g;
                if (interfaceC3269z52 != null) {
                    String TAG2 = this.f24991h;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) interfaceC3269z52).b(TAG2, "Exception in stopTrackingForImpression with message : " + e10.getMessage());
                }
            }
            this.f24988e.e();
        } catch (Throwable th2) {
            this.f24988e.e();
            throw th2;
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        this.f24988e.a(childView, obstructionCode);
    }

    public final void b(Map map) {
        View g10;
        InterfaceC3269z5 interfaceC3269z5 = this.f24990g;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24991h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "registerView");
        }
        InterfaceC3231x interfaceC3231x = this.f24374a;
        if (!(interfaceC3231x instanceof T7) || (g10 = ((T7) interfaceC3231x).g()) == null) {
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24990g;
        if (interfaceC3269z52 != null) {
            String TAG2 = this.f24991h;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) interfaceC3269z52).a(TAG2, "creating AD session");
        }
        C2971ga c2971ga = this.f24989f;
        if (c2971ga != null) {
            c2971ga.a(g10, map, this.f24988e.b());
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        this.f24988e.a(childView);
    }

    @Override // com.inmobi.media.Xe
    public final void a(Map map) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24990g;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24991h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "startTrackingForImpression");
        }
        try {
            try {
                if (this.f24377d.getViewability().getOmidConfig().isOmidEnabled()) {
                    AbstractC3083na.f25061a.getClass();
                    if (Omid.isActive()) {
                        InterfaceC3269z5 interfaceC3269z52 = this.f24990g;
                        if (interfaceC3269z52 != null) {
                            String TAG2 = this.f24991h;
                            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                            ((A5) interfaceC3269z52).a(TAG2, "OMID enabled and initialised");
                        }
                        b(map);
                        a((byte) 19);
                    }
                }
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z53 = this.f24990g;
                if (interfaceC3269z53 != null) {
                    String TAG3 = this.f24991h;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((A5) interfaceC3269z53).b(TAG3, "Exception in startTrackingForImpression with message : " + e10.getMessage());
                }
            }
            this.f24988e.a(map);
        } catch (Throwable th2) {
            this.f24988e.a(map);
            throw th2;
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(byte b10) {
        C3247y c3247y;
        AdEvents adEvents;
        AdEvents adEvents2;
        try {
            try {
                InterfaceC3269z5 interfaceC3269z5 = this.f24990g;
                if (interfaceC3269z5 != null) {
                    String TAG = this.f24991h;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z5).c(TAG, "onAdEvent - event - " + ((int) b10));
                }
                C2971ga c2971ga = this.f24989f;
                if (c2971ga != null && C2971ga.a(c2971ga.f24775e, (byte) 2)) {
                    byte b11 = b10;
                    if (b11 == 0) {
                        C3247y c3247y2 = c2971ga.f24777g;
                        if (c3247y2 != null && (adEvents2 = c3247y2.f25441a) != null) {
                            adEvents2.impressionOccurred();
                        }
                    } else if (b11 == 19 && (c3247y = c2971ga.f24777g) != null && (adEvents = c3247y.f25441a) != null) {
                        adEvents.loaded();
                    }
                }
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z52 = this.f24990g;
                if (interfaceC3269z52 != null) {
                    String TAG2 = this.f24991h;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) interfaceC3269z52).b(TAG2, "Exception in onAdEvent with message : " + e10.getMessage());
                }
            }
            this.f24988e.a(b10);
        } catch (Throwable th2) {
            this.f24988e.a(b10);
            throw th2;
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(Context context, byte b10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f24988e.a(context, b10);
    }

    @Override // com.inmobi.media.Xe
    public final void a() {
        super.a();
        InterfaceC3269z5 interfaceC3269z5 = this.f24990g;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24991h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "destroy");
        }
        try {
            this.f24989f = null;
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24990g;
            if (interfaceC3269z52 != null) {
                String TAG2 = this.f24991h;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).b(TAG2, "Exception in destroy with message : " + e10.getMessage());
            }
        } finally {
            this.f24988e.a();
        }
    }
}
