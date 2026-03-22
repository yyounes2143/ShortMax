package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class M5 extends We {

    /* renamed from: e  reason: collision with root package name */
    public final T7 f23832e;

    /* renamed from: f  reason: collision with root package name */
    public final C2893bf f23833f;

    /* renamed from: g  reason: collision with root package name */
    public final InterfaceC3269z5 f23834g;

    /* renamed from: h  reason: collision with root package name */
    public final String f23835h;

    /* renamed from: i  reason: collision with root package name */
    public final WeakReference f23836i;

    /* renamed from: j  reason: collision with root package name */
    public final Z7 f23837j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M5(Context context, T7 mAdContainer, C2893bf mViewableAd, InterfaceC3269z5 interfaceC3269z5) {
        super(mAdContainer);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mAdContainer, "mAdContainer");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        this.f23832e = mAdContainer;
        this.f23833f = mViewableAd;
        this.f23834g = interfaceC3269z5;
        this.f23835h = M5.class.getSimpleName();
        this.f23836i = new WeakReference(context);
        this.f23837j = new Z7((byte) 1, interfaceC3269z5);
    }

    @Override // com.inmobi.media.Xe
    public final View a(View view, ViewGroup parent, boolean z10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        InterfaceC3269z5 interfaceC3269z5 = this.f23834g;
        if (interfaceC3269z5 != null) {
            String TAG = this.f23835h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "inflate view - deferred - " + z10);
        }
        View b10 = this.f23833f.b();
        Context context = (Context) this.f23832e.f24199x.get();
        if (b10 != null && context != null) {
            this.f23837j.a(context, b10, this.f23832e);
        }
        return this.f23833f.a(view, parent, z10);
    }

    @Override // com.inmobi.media.Xe
    public final View b() {
        return this.f23833f.b();
    }

    @Override // com.inmobi.media.Xe
    public final C3240x8 c() {
        return this.f23833f.f24375b;
    }

    @Override // com.inmobi.media.Xe
    public final void e() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23834g;
        if (interfaceC3269z5 != null) {
            String TAG = this.f23835h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "stopTrackingForImpression");
        }
        try {
            try {
                Context context = (Context) this.f23836i.get();
                if (context != null) {
                    InterfaceC3269z5 interfaceC3269z52 = this.f23834g;
                    if (interfaceC3269z52 != null) {
                        String TAG2 = this.f23835h;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((A5) interfaceC3269z52).a(TAG2, "stop tracking");
                    }
                    this.f23837j.a(context, this.f23832e);
                }
                this.f23833f.getClass();
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z53 = this.f23834g;
                if (interfaceC3269z53 != null) {
                    String TAG3 = this.f23835h;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((A5) interfaceC3269z53).b(TAG3, "Exception in stopTrackingForImpression with message : " + e10.getMessage());
                }
                S5 s52 = S5.f24132a;
                C2947f2 event = new C2947f2(e10);
                Intrinsics.checkNotNullParameter(event, "event");
                S5.f24135d.a(event);
                this.f23833f.getClass();
            }
        } catch (Throwable th2) {
            this.f23833f.getClass();
            throw th2;
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        this.f23833f.getClass();
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
    }

    @Override // com.inmobi.media.Xe
    public final void a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        this.f23833f.getClass();
        Intrinsics.checkNotNullParameter(childView, "childView");
    }

    @Override // com.inmobi.media.Xe
    public final void a(Map map) {
        InterfaceC3269z5 interfaceC3269z5 = this.f23834g;
        if (interfaceC3269z5 != null) {
            String str = this.f23835h;
            StringBuilder a10 = H6.a(str, "TAG", "start tracking impression with ");
            a10.append(map != null ? Integer.valueOf(map.size()) : null);
            a10.append(" friendlyViews");
            ((A5) interfaceC3269z5).a(str, a10.toString());
        }
        try {
            try {
                Context context = (Context) this.f23836i.get();
                View b10 = this.f23833f.b();
                if (context != null && b10 != null && !this.f23832e.f24195t) {
                    InterfaceC3269z5 interfaceC3269z52 = this.f23834g;
                    if (interfaceC3269z52 != null) {
                        String TAG = this.f23835h;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((A5) interfaceC3269z52).a(TAG, "start tracking");
                    }
                    this.f23837j.a(context, b10, this.f23832e, this.f24377d.getViewability());
                    Z7 z72 = this.f23837j;
                    T7 t72 = this.f23832e;
                    z72.a(context, b10, t72, t72.i(), this.f24377d.getViewability());
                }
                this.f23833f.getClass();
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z53 = this.f23834g;
                if (interfaceC3269z53 != null) {
                    String TAG2 = this.f23835h;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) interfaceC3269z53).b(TAG2, "Exception in startTrackingForImpression with message : " + e10.getMessage());
                }
                S5 s52 = S5.f24132a;
                C2947f2 event = new C2947f2(e10);
                Intrinsics.checkNotNullParameter(event, "event");
                S5.f24135d.a(event);
                this.f23833f.getClass();
            }
        } catch (Throwable th2) {
            this.f23833f.getClass();
            throw th2;
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(byte b10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f23834g;
        if (interfaceC3269z5 != null) {
            String str = this.f23835h;
            ((A5) interfaceC3269z5).a(str, X8.a(str, "TAG", "onAdEvent - ", b10));
        }
        this.f23833f.getClass();
    }

    @Override // com.inmobi.media.Xe
    public final void a(Context context, byte b10) {
        C2893bf c2893bf;
        Intrinsics.checkNotNullParameter(context, "context");
        InterfaceC3269z5 interfaceC3269z5 = this.f23834g;
        if (interfaceC3269z5 != null) {
            String str = this.f23835h;
            ((A5) interfaceC3269z5).a(str, X8.a(str, "TAG", "onActivityStateChanged - ", b10));
        }
        try {
            try {
                if (b10 == 0) {
                    Z7 z72 = this.f23837j;
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
                    Z7 z73 = this.f23837j;
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
                    Z7 z74 = this.f23837j;
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
                    InterfaceC3269z5 interfaceC3269z53 = this.f23834g;
                    if (interfaceC3269z53 != null) {
                        String TAG2 = this.f23835h;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((A5) interfaceC3269z53).b(TAG2, "UnHandled sate ( " + ((int) b10) + " ) received in onActivityStateChanged()");
                    }
                }
                c2893bf = this.f23833f;
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z54 = this.f23834g;
                if (interfaceC3269z54 != null) {
                    String TAG3 = this.f23835h;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((A5) interfaceC3269z54).b(TAG3, "Exception in onActivityStateChanged with message : " + e10.getMessage());
                }
                S5 s52 = S5.f24132a;
                C2947f2 event = new C2947f2(e10);
                Intrinsics.checkNotNullParameter(event, "event");
                S5.f24135d.a(event);
                c2893bf = this.f23833f;
            }
            c2893bf.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
        } catch (Throwable th2) {
            this.f23833f.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
            throw th2;
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23834g;
        if (interfaceC3269z5 != null) {
            String TAG = this.f23835h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "destroy");
        }
        Context context = (Context) this.f23832e.f24199x.get();
        View b10 = this.f23833f.b();
        if (context != null && b10 != null) {
            this.f23837j.a(context, b10, this.f23832e);
        }
        super.a();
        this.f23836i.clear();
        this.f23833f.a();
    }
}
