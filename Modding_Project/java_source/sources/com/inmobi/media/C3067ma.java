package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.Omid;
import com.iab.omid.library.inmobi.adsession.AdSession;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.inmobi.adsession.media.VastProperties;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.ma  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3067ma extends We {

    /* renamed from: e  reason: collision with root package name */
    public final We f25035e;

    /* renamed from: f  reason: collision with root package name */
    public C2971ga f25036f;

    /* renamed from: g  reason: collision with root package name */
    public final VastProperties f25037g;

    /* renamed from: h  reason: collision with root package name */
    public final InterfaceC3269z5 f25038h;

    /* renamed from: i  reason: collision with root package name */
    public final String f25039i;

    /* renamed from: j  reason: collision with root package name */
    public final float f25040j;

    /* renamed from: k  reason: collision with root package name */
    public final WeakReference f25041k;

    /* renamed from: l  reason: collision with root package name */
    public WeakReference f25042l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3067ma(Context context, We mViewableAd, C2870a9 adContainer, C2971ga c2971ga, VastProperties mVastProperties, InterfaceC3269z5 interfaceC3269z5) {
        super(adContainer);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(mVastProperties, "mVastProperties");
        this.f25035e = mViewableAd;
        this.f25036f = c2971ga;
        this.f25037g = mVastProperties;
        this.f25038h = interfaceC3269z5;
        this.f25039i = C3067ma.class.getSimpleName();
        this.f25040j = 1.0f;
        this.f25041k = new WeakReference(context);
    }

    @Override // com.inmobi.media.Xe
    public final View a(View view, ViewGroup parent, boolean z10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return this.f25035e.a(view, parent, z10);
    }

    @Override // com.inmobi.media.Xe
    public final View b() {
        return this.f25035e.b();
    }

    @Override // com.inmobi.media.Xe
    public final C3240x8 c() {
        return this.f25035e.c();
    }

    @Override // com.inmobi.media.Xe
    public final View d() {
        return this.f25035e.d();
    }

    @Override // com.inmobi.media.Xe
    public final void e() {
        int i10;
        try {
            try {
                InterfaceC3231x interfaceC3231x = this.f24374a;
                if ((interfaceC3231x instanceof C2870a9) && !((C2870a9) interfaceC3231x).k()) {
                    C2971ga c2971ga = this.f25036f;
                    if (c2971ga != null && C2971ga.a(c2971ga.f24775e, (byte) 2)) {
                        AdSession adSession = c2971ga.f24776f;
                        if (adSession != null) {
                            adSession.finish();
                        }
                        c2971ga.f24776f = null;
                        c2971ga.f24775e = (byte) 3;
                    }
                    InterfaceC3269z5 interfaceC3269z5 = this.f25038h;
                    if (interfaceC3269z5 != null) {
                        String TAG = this.f25039i;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        StringBuilder sb2 = new StringBuilder("Unregistered VideoView to OMID AdSession : ");
                        C2971ga c2971ga2 = this.f25036f;
                        if (c2971ga2 != null) {
                            i10 = c2971ga2.hashCode();
                        } else {
                            i10 = 0;
                        }
                        sb2.append(i10);
                        ((A5) interfaceC3269z5).a(TAG, sb2.toString());
                    }
                }
                this.f25035e.e();
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z52 = this.f25038h;
                if (interfaceC3269z52 != null) {
                    String TAG2 = this.f25039i;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) interfaceC3269z52).b(TAG2, "Exception in stopTrackingForImpression with message : " + e10.getMessage());
                }
                S5 s52 = S5.f24132a;
                C2947f2 event = new C2947f2(e10);
                Intrinsics.checkNotNullParameter(event, "event");
                S5.f24135d.a(event);
                this.f25035e.e();
            }
        } catch (Throwable th2) {
            this.f25035e.e();
            throw th2;
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        C2971ga c2971ga = this.f25036f;
        if (c2971ga != null) {
            c2971ga.a(childView, obstructionCode);
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        C2971ga c2971ga = this.f25036f;
        if (c2971ga != null) {
            Intrinsics.checkNotNullParameter(childView, "childView");
            byte b10 = c2971ga.f24775e;
            if (b10 > 0) {
                AdSession adSession = c2971ga.f24776f;
                if (adSession != null) {
                    adSession.removeFriendlyObstruction(childView);
                    return;
                }
                return;
            }
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(new Exception("Omid AdSession State Error currentState :: " + ((int) b10) + ", expectedState :: 1"));
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(Map map) {
        try {
            try {
                InterfaceC3269z5 interfaceC3269z5 = this.f25038h;
                if (interfaceC3269z5 != null) {
                    String TAG = this.f25039i;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z5).c(TAG, "startTrackingForImpression");
                }
                if (this.f24377d.getViewability().getOmidConfig().isOmidEnabled()) {
                    AbstractC3083na.f25061a.getClass();
                    if (Omid.isActive()) {
                        InterfaceC3269z5 interfaceC3269z52 = this.f25038h;
                        if (interfaceC3269z52 != null) {
                            String TAG2 = this.f25039i;
                            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                            ((A5) interfaceC3269z52).a(TAG2, "OMID enabled and OM SDK initialised");
                        }
                        InterfaceC3231x interfaceC3231x = this.f24374a;
                        if (interfaceC3231x instanceof C2870a9) {
                            View videoContainerView = ((C2870a9) interfaceC3231x).getVideoContainerView();
                            C3066m9 c3066m9 = videoContainerView instanceof C3066m9 ? (C3066m9) videoContainerView : null;
                            if (c3066m9 != null) {
                                C2938e9 mediaController = c3066m9.getVideoView().getMediaController();
                                this.f25042l = new WeakReference(c3066m9);
                                InterfaceC3269z5 interfaceC3269z53 = this.f25038h;
                                if (interfaceC3269z53 != null) {
                                    String TAG3 = this.f25039i;
                                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                                    ((A5) interfaceC3269z53).a(TAG3, "creating new OM SDK ad session");
                                }
                                C2971ga c2971ga = this.f25036f;
                                if (c2971ga != null) {
                                    c2971ga.a(c3066m9, mediaController != null ? mediaController.getFriendlyViews() : null, this.f25035e.b());
                                }
                                InterfaceC3269z5 interfaceC3269z54 = this.f25038h;
                                if (interfaceC3269z54 != null) {
                                    String TAG4 = this.f25039i;
                                    Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                                    StringBuilder sb2 = new StringBuilder("Registered ad view with OMID Video AdSession ");
                                    C2971ga c2971ga2 = this.f25036f;
                                    sb2.append(c2971ga2 != null ? c2971ga2.hashCode() : 0);
                                    ((A5) interfaceC3269z54).a(TAG4, sb2.toString());
                                }
                            }
                        }
                    }
                }
                this.f25035e.a(map);
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z55 = this.f25038h;
                if (interfaceC3269z55 != null) {
                    String TAG5 = this.f25039i;
                    Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                    ((A5) interfaceC3269z55).b(TAG5, "Exception in startTrackingForImpression with message : " + e10.getMessage());
                }
                S5 s52 = S5.f24132a;
                C2947f2 event = new C2947f2(e10);
                Intrinsics.checkNotNullParameter(event, "event");
                S5.f24135d.a(event);
                this.f25035e.a(map);
            }
        } catch (Throwable th2) {
            this.f25035e.a(map);
            throw th2;
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(byte b10) {
        try {
            try {
                InterfaceC3269z5 interfaceC3269z5 = this.f25038h;
                if (interfaceC3269z5 != null) {
                    String TAG = this.f25039i;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z5).a(TAG, "onAdView - event - " + ((int) b10));
                }
                float f10 = this.f25040j;
                int i10 = 0;
                if (b10 == 13) {
                    f10 = 0.0f;
                } else if (b10 != 14) {
                    if (b10 == 6) {
                        InterfaceC3231x interfaceC3231x = this.f24374a;
                        if (interfaceC3231x instanceof C2870a9) {
                            View videoContainerView = ((C2870a9) interfaceC3231x).getVideoContainerView();
                            C3066m9 c3066m9 = videoContainerView instanceof C3066m9 ? (C3066m9) videoContainerView : null;
                            if (c3066m9 != null) {
                                i10 = c3066m9.getVideoView().getDuration();
                                Object tag = c3066m9.getVideoView().getTag();
                                f10 = a(tag instanceof C2904c9 ? (C2904c9) tag : null);
                            }
                        }
                    } else if (b10 == 5) {
                        InterfaceC3231x interfaceC3231x2 = this.f24374a;
                        if ((interfaceC3231x2 instanceof C2870a9) && ((C2870a9) interfaceC3231x2).k()) {
                            this.f25035e.a(b10);
                            return;
                        }
                    }
                }
                C2971ga c2971ga = this.f25036f;
                if (c2971ga != null) {
                    c2971ga.a(b10, i10, f10, this.f25037g);
                }
                this.f25035e.a(b10);
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z52 = this.f25038h;
                if (interfaceC3269z52 != null) {
                    String TAG2 = this.f25039i;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) interfaceC3269z52).b(TAG2, "Exception in onAdEvent with message : " + e10.getMessage());
                }
                S5 s52 = S5.f24132a;
                C2947f2 event = new C2947f2(e10);
                Intrinsics.checkNotNullParameter(event, "event");
                S5.f24135d.a(event);
                this.f25035e.a(b10);
            }
        } catch (Throwable th2) {
            this.f25035e.a(b10);
            throw th2;
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(Context context, byte b10) {
        Intrinsics.checkNotNullParameter(context, "context");
        InterfaceC3269z5 interfaceC3269z5 = this.f25038h;
        if (interfaceC3269z5 != null) {
            String str = this.f25039i;
            ((A5) interfaceC3269z5).c(str, X8.a(str, "TAG", "onActivityStateChanged - state - ", b10));
        }
        this.f25035e.a(context, b10);
    }

    @Override // com.inmobi.media.Xe
    public final void a() {
        super.a();
        InterfaceC3269z5 interfaceC3269z5 = this.f25038h;
        if (interfaceC3269z5 != null) {
            String TAG = this.f25039i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "destroy");
        }
        try {
            try {
                this.f25041k.clear();
                WeakReference weakReference = this.f25042l;
                if (weakReference != null) {
                    weakReference.clear();
                }
                this.f25036f = null;
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z52 = this.f25038h;
                if (interfaceC3269z52 != null) {
                    String TAG2 = this.f25039i;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) interfaceC3269z52).b(TAG2, "Exception in destroy with message : " + e10.getMessage());
                }
                S5 s52 = S5.f24132a;
                C2947f2 event = new C2947f2(e10);
                Intrinsics.checkNotNullParameter(event, "event");
                S5.f24135d.a(event);
            }
            this.f25035e.a();
        } catch (Throwable th2) {
            this.f25035e.a();
            throw th2;
        }
    }

    public final float a(C2904c9 c2904c9) {
        if (c2904c9 == null) {
            return 0.0f;
        }
        Object obj = c2904c9.f24597t.get("currentMediaVolume");
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        Object obj2 = c2904c9.f24597t.get("lastMediaVolume");
        Integer num2 = obj2 instanceof Integer ? (Integer) obj2 : null;
        if (num == null || num2 == null || num.intValue() <= 0 || num2.intValue() != 0) {
            return 0.0f;
        }
        return this.f25040j;
    }
}
