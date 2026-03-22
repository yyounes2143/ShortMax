package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class L5 extends Xe {

    /* renamed from: e  reason: collision with root package name */
    public final C2876af f23807e;

    /* renamed from: f  reason: collision with root package name */
    public final S4 f23808f;

    /* renamed from: g  reason: collision with root package name */
    public final InterfaceC3269z5 f23809g;

    /* renamed from: h  reason: collision with root package name */
    public final String f23810h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L5(GestureDetector$OnGestureListenerC2941ec container, C2876af mViewableAd, S4 htmlAdTracker, InterfaceC3269z5 interfaceC3269z5) {
        super(container);
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        Intrinsics.checkNotNullParameter(htmlAdTracker, "htmlAdTracker");
        this.f23807e = mViewableAd;
        this.f23808f = htmlAdTracker;
        this.f23809g = interfaceC3269z5;
        this.f23810h = L5.class.getSimpleName();
    }

    @Override // com.inmobi.media.Xe
    public final void a(byte b10) {
    }

    @Override // com.inmobi.media.Xe
    public final View b() {
        return this.f23807e.b();
    }

    @Override // com.inmobi.media.Xe
    public final C3240x8 c() {
        return this.f23807e.f24375b;
    }

    @Override // com.inmobi.media.Xe
    public final View d() {
        return this.f23807e.d();
    }

    @Override // com.inmobi.media.Xe
    public final void e() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23809g;
        if (interfaceC3269z5 != null) {
            String TAG = this.f23810h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "stopTrackingForImpression");
        }
        View b10 = this.f23807e.b();
        if (b10 != null) {
            this.f23808f.a(b10);
            this.f23807e.getClass();
        }
    }

    @Override // com.inmobi.media.Xe
    public final View a(View view, ViewGroup parent, boolean z10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View b10 = this.f23807e.b();
        if (b10 != null) {
            this.f23808f.a(b10);
            this.f23808f.b(b10);
        }
        C2876af c2876af = this.f23807e;
        c2876af.getClass();
        Intrinsics.checkNotNullParameter(parent, "parent");
        return c2876af.d();
    }

    @Override // com.inmobi.media.Xe
    public final void a(Map map) {
        InterfaceC3269z5 interfaceC3269z5 = this.f23809g;
        if (interfaceC3269z5 != null) {
            String str = this.f23810h;
            StringBuilder a10 = H6.a(str, "TAG", "startTrackingForImpression with ");
            a10.append(map != null ? Integer.valueOf(map.size()) : null);
            a10.append(" friendly views");
            ((A5) interfaceC3269z5).a(str, a10.toString());
        }
        View token = this.f23807e.b();
        if (token != null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f23809g;
            if (interfaceC3269z52 != null) {
                String TAG = this.f23810h;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z52).a(TAG, "start tracking");
            }
            AdConfig.ViewabilityConfig viewabilityConfig = this.f24377d.getViewability();
            InterfaceC3231x interfaceC3231x = this.f24374a;
            Intrinsics.checkNotNull(interfaceC3231x, "null cannot be cast to non-null type com.inmobi.ads.containers.RenderView");
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) interfaceC3231x;
            gestureDetector$OnGestureListenerC2941ec.setFriendlyViews(map);
            S4 s42 = this.f23808f;
            s42.getClass();
            Intrinsics.checkNotNullParameter(token, "view");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(viewabilityConfig, "viewabilityConfig");
            InterfaceC3269z5 interfaceC3269z53 = s42.f24127f;
            if (interfaceC3269z53 != null) {
                ((A5) interfaceC3269z53).c("HtmlAdTracker", "startTrackingForImpression");
            }
            if (s42.f24122a == 0) {
                InterfaceC3269z5 interfaceC3269z54 = s42.f24127f;
                if (interfaceC3269z54 != null) {
                    ((A5) interfaceC3269z54).b("HtmlAdTracker", "impression type is loaded. return");
                }
            } else if (!Intrinsics.areEqual(s42.f24123b, "video") && !Intrinsics.areEqual(s42.f24123b, "audio")) {
                byte b10 = s42.f24122a;
                C2966g5 c2966g5 = s42.f24128g;
                if (c2966g5 == null) {
                    InterfaceC3269z5 interfaceC3269z55 = s42.f24127f;
                    if (interfaceC3269z55 != null) {
                        ((A5) interfaceC3269z55).c("HtmlAdTracker", "creating Visibility Tracker for " + ((int) b10));
                    }
                    X4 x42 = new X4(viewabilityConfig, b10, s42.f24127f);
                    InterfaceC3269z5 interfaceC3269z56 = s42.f24127f;
                    if (interfaceC3269z56 != null) {
                        ((A5) interfaceC3269z56).c("HtmlAdTracker", "creating Impression Tracker for " + ((int) b10));
                    }
                    C2966g5 c2966g52 = new C2966g5(viewabilityConfig, x42, s42.f24131j);
                    s42.f24128g = c2966g52;
                    c2966g5 = c2966g52;
                }
                InterfaceC3269z5 interfaceC3269z57 = s42.f24127f;
                if (interfaceC3269z57 != null) {
                    ((A5) interfaceC3269z57).c("HtmlAdTracker", "impression tracker add view");
                }
                c2966g5.a(token, token, s42.f24125d, s42.f24124c);
            } else {
                InterfaceC3269z5 interfaceC3269z58 = s42.f24127f;
                if (interfaceC3269z58 != null) {
                    ((A5) interfaceC3269z58).b("HtmlAdTracker", "creative type is video and audio. return");
                }
            }
            this.f23808f.a(token, token, gestureDetector$OnGestureListenerC2941ec.getVISIBILITY_CHANGE_LISTENER(), viewabilityConfig, false);
            this.f23807e.getClass();
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        if (childView instanceof C3053lc) {
            InterfaceC3269z5 interfaceC3269z5 = this.f23809g;
            if (interfaceC3269z5 != null) {
                String TAG = this.f23810h;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).a(TAG, "Ignoring RenderViewSibling as friendly view");
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f23809g;
        if (interfaceC3269z52 != null) {
            String str = this.f23810h;
            StringBuilder a10 = H6.a(str, "TAG", "Adding friendly view: ");
            a10.append(childView.getClass().getSimpleName());
            a10.append(" with obstruction code: ");
            a10.append(obstructionCode);
            ((A5) interfaceC3269z52).a(str, a10.toString());
        }
        this.f23807e.a(childView, obstructionCode);
    }

    @Override // com.inmobi.media.Xe
    public final void a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        if (childView instanceof C3053lc) {
            return;
        }
        this.f23807e.a(childView);
    }

    @Override // com.inmobi.media.Xe
    public final void a(Context context, byte b10) {
        C2876af c2876af;
        Intrinsics.checkNotNullParameter(context, "context");
        InterfaceC3269z5 interfaceC3269z5 = this.f23809g;
        if (interfaceC3269z5 != null) {
            String str = this.f23810h;
            ((A5) interfaceC3269z5).a(str, X8.a(str, "TAG", "onActivityStateChanged - state - ", b10));
        }
        try {
            try {
                if (b10 == 0) {
                    S4 s42 = this.f23808f;
                    InterfaceC3269z5 interfaceC3269z52 = s42.f24127f;
                    if (interfaceC3269z52 != null) {
                        ((A5) interfaceC3269z52).c("HtmlAdTracker", "onActivityStarted");
                    }
                    C2966g5 c2966g5 = s42.f24128g;
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
                    X4 x42 = s42.f24129h;
                    if (x42 != null) {
                        x42.f();
                    }
                } else if (b10 == 1) {
                    S4 s43 = this.f23808f;
                    InterfaceC3269z5 interfaceC3269z53 = s43.f24127f;
                    if (interfaceC3269z53 != null) {
                        ((A5) interfaceC3269z53).c("HtmlAdTracker", "onActivityStopped");
                    }
                    C2966g5 c2966g52 = s43.f24128g;
                    if (c2966g52 != null) {
                        Intrinsics.checkNotNullExpressionValue(c2966g52.f24761d, "TAG");
                        c2966g52.f24760c.a();
                        c2966g52.f24762e.removeCallbacksAndMessages(null);
                        c2966g52.f24759b.clear();
                    }
                    X4 x43 = s43.f24129h;
                    if (x43 != null) {
                        x43.e();
                    }
                } else if (b10 == 2) {
                    S4 s44 = this.f23808f;
                    InterfaceC3269z5 interfaceC3269z54 = s44.f24127f;
                    if (interfaceC3269z54 != null) {
                        ((A5) interfaceC3269z54).c("HtmlAdTracker", "onActivityDestroyed");
                    }
                    C2966g5 c2966g53 = s44.f24128g;
                    if (c2966g53 != null) {
                        c2966g53.f24758a.clear();
                        c2966g53.f24759b.clear();
                        c2966g53.f24760c.a();
                        c2966g53.f24762e.removeMessages(0);
                        c2966g53.f24760c.b();
                    }
                    s44.f24128g = null;
                    X4 x44 = s44.f24129h;
                    if (x44 != null) {
                        x44.b();
                    }
                    s44.f24129h = null;
                } else {
                    Intrinsics.checkNotNullExpressionValue(this.f23810h, "TAG");
                }
                c2876af = this.f23807e;
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z55 = this.f23809g;
                if (interfaceC3269z55 != null) {
                    String TAG = this.f23810h;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z55).b(TAG, "Exception in onActivityStateChanged with message : " + e10.getMessage());
                }
                S5 s52 = S5.f24132a;
                C2947f2 event = new C2947f2(e10);
                Intrinsics.checkNotNullParameter(event, "event");
                S5.f24135d.a(event);
                c2876af = this.f23807e;
            }
            c2876af.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
        } catch (Throwable th2) {
            this.f23807e.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
            throw th2;
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23809g;
        if (interfaceC3269z5 != null) {
            String TAG = this.f23810h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "destroy");
        }
        View b10 = this.f23807e.b();
        if (b10 != null) {
            this.f23808f.a(b10);
            this.f23808f.b(b10);
        }
        super.a();
        this.f23807e.a();
    }
}
