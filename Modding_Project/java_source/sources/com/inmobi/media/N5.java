package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class N5 extends We {

    /* renamed from: e  reason: collision with root package name */
    public final C2870a9 f23874e;

    /* renamed from: f  reason: collision with root package name */
    public final C2910cf f23875f;

    /* renamed from: g  reason: collision with root package name */
    public final InterfaceC3269z5 f23876g;

    /* renamed from: h  reason: collision with root package name */
    public final String f23877h;

    /* renamed from: i  reason: collision with root package name */
    public final WeakReference f23878i;

    /* renamed from: j  reason: collision with root package name */
    public final Z7 f23879j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N5(C2870a9 mAdContainer, C2910cf mViewableAd, InterfaceC3269z5 interfaceC3269z5) {
        super(mAdContainer);
        Intrinsics.checkNotNullParameter(mAdContainer, "mAdContainer");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        this.f23874e = mAdContainer;
        this.f23875f = mViewableAd;
        this.f23876g = interfaceC3269z5;
        this.f23877h = N5.class.getSimpleName();
        this.f23878i = new WeakReference(mAdContainer.j());
        this.f23879j = new Z7((byte) 0, interfaceC3269z5);
    }

    @Override // com.inmobi.media.Xe
    public final View a(View view, ViewGroup parent, boolean z10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        InterfaceC3269z5 interfaceC3269z5 = this.f23876g;
        if (interfaceC3269z5 != null) {
            String TAG = this.f23877h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "inflate view");
        }
        View b10 = this.f23875f.b();
        Context context = (Context) this.f23878i.get();
        if (b10 != null && context != null) {
            this.f23879j.a(context, b10, this.f23874e);
        }
        return this.f23875f.a(view, parent, z10);
    }

    @Override // com.inmobi.media.Xe
    public final View b() {
        return this.f23875f.b();
    }

    @Override // com.inmobi.media.Xe
    public final C3240x8 c() {
        return this.f23875f.f24375b;
    }

    @Override // com.inmobi.media.Xe
    public final void e() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23876g;
        if (interfaceC3269z5 != null) {
            String TAG = this.f23877h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "stop tracking for impression");
        }
        try {
            try {
                Context context = (Context) this.f23878i.get();
                if (context != null) {
                    InterfaceC3269z5 interfaceC3269z52 = this.f23876g;
                    if (interfaceC3269z52 != null) {
                        String TAG2 = this.f23877h;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((A5) interfaceC3269z52).a(TAG2, "stop tracking");
                    }
                    this.f23879j.a(context, this.f23874e);
                }
                this.f23875f.getClass();
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z53 = this.f23876g;
                if (interfaceC3269z53 != null) {
                    String TAG3 = this.f23877h;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((A5) interfaceC3269z53).b(TAG3, "Exception in stopTrackingForImpression with message : " + e10.getMessage());
                }
                S5 s52 = S5.f24132a;
                C2947f2 event = new C2947f2(e10);
                Intrinsics.checkNotNullParameter(event, "event");
                S5.f24135d.a(event);
                this.f23875f.getClass();
            }
        } catch (Throwable th2) {
            this.f23875f.getClass();
            throw th2;
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        this.f23875f.getClass();
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
    }

    @Override // com.inmobi.media.Xe
    public final void a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        this.f23875f.getClass();
        Intrinsics.checkNotNullParameter(childView, "childView");
    }

    @Override // com.inmobi.media.Xe
    public final void a(Map map) {
        InterfaceC3269z5 interfaceC3269z5 = this.f23876g;
        if (interfaceC3269z5 != null) {
            String str = this.f23877h;
            StringBuilder a10 = H6.a(str, "TAG", "start tracking impression with ");
            a10.append(map != null ? Integer.valueOf(map.size()) : null);
            a10.append(" friendlyViews");
            ((A5) interfaceC3269z5).a(str, a10.toString());
        }
        try {
            try {
                View videoContainerView = this.f24374a.getVideoContainerView();
                C3066m9 c3066m9 = videoContainerView instanceof C3066m9 ? (C3066m9) videoContainerView : null;
                Context context = (Context) this.f23878i.get();
                AdConfig.ViewabilityConfig viewability = this.f24377d.getViewability();
                if (context != null && c3066m9 != null && !this.f23874e.f24195t) {
                    C3050l9 videoView = c3066m9.getVideoView();
                    InterfaceC3269z5 interfaceC3269z52 = this.f23876g;
                    if (interfaceC3269z52 != null) {
                        String TAG = this.f23877h;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((A5) interfaceC3269z52).a(TAG, "start tracking");
                    }
                    this.f23879j.a(context, videoView, this.f23874e, viewability);
                    View b10 = this.f23875f.b();
                    Object tag = videoView.getTag();
                    C2904c9 c2904c9 = tag instanceof C2904c9 ? (C2904c9) tag : null;
                    if (c2904c9 != null && b10 != null && a(c2904c9)) {
                        InterfaceC3269z5 interfaceC3269z53 = this.f23876g;
                        if (interfaceC3269z53 != null) {
                            String TAG2 = this.f23877h;
                            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                            ((A5) interfaceC3269z53).a(TAG2, "start tracking inline ad");
                        }
                        Z7 z72 = this.f23879j;
                        C2870a9 c2870a9 = this.f23874e;
                        z72.a(context, b10, c2870a9, c2870a9.f24487b0, viewability);
                    }
                }
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z54 = this.f23876g;
                if (interfaceC3269z54 != null) {
                    String TAG3 = this.f23877h;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((A5) interfaceC3269z54).b(TAG3, "Exception in startTrackingForImpression with message : " + e10.getMessage());
                }
                S5 s52 = S5.f24132a;
                C2947f2 event = new C2947f2(e10);
                Intrinsics.checkNotNullParameter(event, "event");
                S5.f24135d.a(event);
            }
            this.f23875f.getClass();
        } catch (Throwable th2) {
            this.f23875f.getClass();
            throw th2;
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(byte b10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f23876g;
        if (interfaceC3269z5 != null) {
            String str = this.f23877h;
            ((A5) interfaceC3269z5).a(str, X8.a(str, "TAG", "Received event : ", b10));
        }
        this.f23875f.getClass();
    }

    @Override // com.inmobi.media.Xe
    public final void a(Context context, byte b10) {
        C2910cf c2910cf;
        Intrinsics.checkNotNullParameter(context, "context");
        InterfaceC3269z5 interfaceC3269z5 = this.f23876g;
        if (interfaceC3269z5 != null) {
            String str = this.f23877h;
            ((A5) interfaceC3269z5).c(str, X8.a(str, "TAG", "onActivityStateChanged state - ", b10));
        }
        try {
            try {
                if (b10 == 0) {
                    Z7 z72 = this.f23879j;
                    z72.getClass();
                    Intrinsics.checkNotNullParameter(context, "context");
                    C2966g5 c2966g5 = (C2966g5) z72.f24442d.get(context);
                    if (c2966g5 != null) {
                        Intrinsics.checkNotNullExpressionValue(c2966g5.f24761d, "TAG");
                        for (Map.Entry entry : c2966g5.f24758a.entrySet()) {
                            C2934e5 c2934e5 = (C2934e5) entry.getValue();
                            c2966g5.f24760c.a((View) entry.getKey(), c2934e5.f24630a, c2934e5.f24631b);
                        }
                        if (!c2966g5.f24762e.hasMessages(0)) {
                            c2966g5.f24762e.postDelayed(c2966g5.f24763f, c2966g5.f24764g);
                        }
                        c2966g5.f24760c.f();
                    }
                } else if (b10 == 1) {
                    Z7 z73 = this.f23879j;
                    z73.getClass();
                    Intrinsics.checkNotNullParameter(context, "context");
                    C2966g5 c2966g52 = (C2966g5) z73.f24442d.get(context);
                    if (c2966g52 != null) {
                        Intrinsics.checkNotNullExpressionValue(c2966g52.f24761d, "TAG");
                        c2966g52.f24760c.a();
                        c2966g52.f24762e.removeCallbacksAndMessages(null);
                        c2966g52.f24759b.clear();
                    }
                } else if (b10 == 2) {
                    Z7 z74 = this.f23879j;
                    z74.getClass();
                    Intrinsics.checkNotNullParameter(context, "context");
                    InterfaceC3269z5 interfaceC3269z52 = z74.f24440b;
                    if (interfaceC3269z52 != null) {
                        String TAG = z74.f24441c;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((A5) interfaceC3269z52).a(TAG, "Activity destroyed, removing impression tracker");
                    }
                    C2966g5 c2966g53 = (C2966g5) z74.f24442d.remove(context);
                    if (c2966g53 != null) {
                        c2966g53.f24758a.clear();
                        c2966g53.f24759b.clear();
                        c2966g53.f24760c.a();
                        c2966g53.f24762e.removeMessages(0);
                        c2966g53.f24760c.b();
                    }
                    if (context instanceof Activity) {
                        z74.f24442d.isEmpty();
                    }
                } else {
                    InterfaceC3269z5 interfaceC3269z53 = this.f23876g;
                    if (interfaceC3269z53 != null) {
                        String TAG2 = this.f23877h;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((A5) interfaceC3269z53).b(TAG2, "UnHandled sate ( " + ((int) b10) + " ) received in onActivityStateChanged()");
                    }
                }
                c2910cf = this.f23875f;
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z54 = this.f23876g;
                if (interfaceC3269z54 != null) {
                    String TAG3 = this.f23877h;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((A5) interfaceC3269z54).b(TAG3, "Exception in onActivityStateChanged with message : " + e10.getMessage());
                }
                S5 s52 = S5.f24132a;
                C2947f2 event = new C2947f2(e10);
                Intrinsics.checkNotNullParameter(event, "event");
                S5.f24135d.a(event);
                c2910cf = this.f23875f;
            }
            c2910cf.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
        } catch (Throwable th2) {
            this.f23875f.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
            throw th2;
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23876g;
        if (interfaceC3269z5 != null) {
            String TAG = this.f23877h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "destroy");
        }
        Context context = (Context) this.f23878i.get();
        View b10 = this.f23875f.b();
        if (context != null && b10 != null) {
            this.f23879j.a(context, b10, this.f23874e);
        }
        super.a();
        this.f23878i.clear();
        this.f23875f.a();
    }

    public final boolean a(C2904c9 c2904c9) {
        Object obj = c2904c9.f24597t.get("isFullScreen");
        Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
        return this.f23874e.f24176a == 0 && !(bool != null ? bool.booleanValue() : false);
    }
}
