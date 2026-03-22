package com.inmobi.media;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.media.C2903c8;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.c8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2903c8 extends S0 {
    public static final /* synthetic */ int Q = 0;
    public WeakReference N;
    public boolean O;
    public int P;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2903c8(Context context, Z placement, V8 v82) {
        super(context, placement, v82);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullExpressionValue("c8", "TAG");
        placement.l();
        a(context, placement, v82);
    }

    public final void D0() {
        try {
            super.g();
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("c8", rf.a(e10, H6.a("c8", "TAG", "SDK encountered unexpected error in destroying native ad unit; ")));
            }
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    public final void E0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
            ((A5) interfaceC3269z5).a("c8", "renderAdPostInternetCheck");
        }
        k0();
        try {
            if (o0()) {
                InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
                if (interfaceC3269z52 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    ((A5) interfaceC3269z52).b("c8", "render ad is blocked");
                    return;
                }
                return;
            }
            U0 s10 = s();
            s10.getClass();
            s10.f24234g = SystemClock.elapsedRealtime();
            d0();
        } catch (IllegalStateException e10) {
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                ((A5) interfaceC3269z53).a("c8", "Exception while loading ad.", e10);
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2134);
        }
    }

    @Override // com.inmobi.media.S0
    public final byte J() {
        return (byte) 0;
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.InterfaceC2861a0
    public final void a(int i10, GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.InterfaceC2861a0
    public final void b() {
    }

    @Override // com.inmobi.media.S0
    public final void c0() {
        if (Z()) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                ((A5) interfaceC3269z5).b("c8", "Ad unit is already destroyed! Returning ...");
                return;
            }
            return;
        }
        F0 r10 = r();
        if (f0()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                ((A5) interfaceC3269z52).b("c8", "Some of the dependency libraries for InMobiNative not found");
            }
            if (r10 != null) {
                r10.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES));
            }
        } else if (1 != Q() && 2 != Q()) {
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                StringBuilder a10 = H6.a("c8", "TAG", "Fetching a Native ad for placement id: ");
                a10.append(I());
                ((A5) interfaceC3269z53).a("c8", a10.toString());
            }
            if (4 == Q()) {
                if (!W()) {
                    InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
                    if (interfaceC3269z54 != null) {
                        Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                        ((A5) interfaceC3269z54).a("c8", "An ad is ready with the ad unit. Signaling ad load success ...");
                    }
                    if (r10 != null) {
                        Context t10 = t();
                        InterfaceC3269z5 interfaceC3269z55 = this.f24083j;
                        if (interfaceC3269z55 != null) {
                            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                            ((A5) interfaceC3269z55).c("c8", "setContainerContext");
                        }
                        InterfaceC3231x k10 = k();
                        if (k10 instanceof T7) {
                            ((T7) k10).a(t10);
                        }
                        InterfaceC3269z5 interfaceC3269z56 = this.f24083j;
                        if (interfaceC3269z56 != null) {
                            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                            ((A5) interfaceC3269z56).a("c8", "callback - onFetchSuccess");
                        }
                        InterfaceC3269z5 interfaceC3269z57 = this.f24083j;
                        if (interfaceC3269z57 != null) {
                            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                            ((A5) interfaceC3269z57).a("c8", "callback - onLoadSuccess");
                        }
                        e(r10);
                        f(r10);
                        return;
                    }
                    return;
                }
                InterfaceC3269z5 interfaceC3269z58 = this.f24083j;
                if (interfaceC3269z58 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    ((A5) interfaceC3269z58).b("c8", "ad is expired - destroy");
                }
                D0();
            }
            e0();
            super.c0();
        } else {
            InterfaceC3269z5 interfaceC3269z59 = this.f24083j;
            if (interfaceC3269z59 != null) {
                Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                ((A5) interfaceC3269z59).b("c8", "An ad load is already in progress");
            }
        }
    }

    @Override // com.inmobi.media.S0
    public final void j0() {
        if (p0()) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                ((A5) interfaceC3269z5).a("c8", "renderAd without internet check");
            }
            E0();
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
            ((A5) interfaceC3269z52).a("c8", "renderAd");
        }
        a(new C2869a8(this), new C2886b8(this));
    }

    @Override // com.inmobi.media.S0
    public final HashMap o() {
        HashMap hashMap = new HashMap();
        hashMap.put("a-parentViewWidth", String.valueOf(U3.d().f24297a));
        hashMap.put("a-productVersion", "NS-1.0.0-20160411");
        hashMap.put("trackerType", "url_ping");
        return hashMap;
    }

    @Override // com.inmobi.media.S0
    public final String q() {
        return "native";
    }

    @Override // com.inmobi.media.S0
    public final void r0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
            ((A5) interfaceC3269z5).c("c8", "signalSuccess");
        }
        A v10 = v();
        int hashCode = hashCode();
        E8 e82 = new E8(this);
        v10.getClass();
        A.a(hashCode, e82);
    }

    @Override // com.inmobi.media.S0
    public final void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.a(context);
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
            ((A5) interfaceC3269z5).c("c8", "setContainerContext");
        }
        InterfaceC3231x k10 = k();
        if (k10 instanceof T7) {
            ((T7) k10).a(context);
        }
    }

    @Override // com.inmobi.media.S0
    public final void b(F0 f02) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
            ((A5) interfaceC3269z5).c("c8", "handleAdScreenDisplayed");
        }
        if (Q() == 4) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                ((A5) interfaceC3269z52).d("c8", "AdUnit " + this + " state change - RENDERED");
            }
            d((byte) 6);
        } else if (Q() == 6) {
            this.P++;
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
        if (interfaceC3269z53 != null) {
            ((A5) interfaceC3269z53).a("InMobi", "Successfully displayed fullscreen for placement id: " + I());
        }
        if (this.P == 0) {
            if (f02 != null) {
                InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
                if (interfaceC3269z54 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    ((A5) interfaceC3269z54).a("c8", "callback - onAdDisplayed");
                }
                d(f02);
                return;
            }
            InterfaceC3269z5 interfaceC3269z55 = this.f24083j;
            if (interfaceC3269z55 != null) {
                Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                ((A5) interfaceC3269z55).b("c8", "listener is null. cannot give AdDisplayed callback");
            }
        }
    }

    public final View a(View view, ViewGroup parent, int i10) {
        View view2;
        Intrinsics.checkNotNullParameter(parent, "parent");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
            ((A5) interfaceC3269z5).c("c8", "getAdView");
        }
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            if (!G4.f23672a.a()) {
                D0();
                InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
                if (interfaceC3269z52 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    ((A5) interfaceC3269z52).b("c8", "dropping because of GDPR");
                }
                return null;
            } else if (W()) {
                InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
                if (interfaceC3269z53 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    ((A5) interfaceC3269z53).a("c8", "Ad has expired.");
                }
                D0();
                return null;
            } else if (Q() != 4 && Q() != 6) {
                InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
                if (interfaceC3269z54 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    ((A5) interfaceC3269z54).b("c8", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling getPrimaryView().");
                }
                AbstractC2984h7.a((byte) 1, "InMobi", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling getPrimaryView().");
                InterfaceC3269z5 interfaceC3269z55 = this.f24083j;
                if (interfaceC3269z55 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    ((A5) interfaceC3269z55).b("c8", "Ad Load is not complete");
                }
                WeakReference weakReference = this.N;
                if (weakReference == null || (view2 = (View) weakReference.get()) == null) {
                    return null;
                }
                View view3 = new View(Uc.d());
                view3.setLayoutParams(view2.getLayoutParams());
                return view3;
            } else {
                T7 G = G();
                if (G != null) {
                    boolean z10 = this.O;
                    InterfaceC3269z5 interfaceC3269z56 = G.f24185j;
                    if (interfaceC3269z56 != null) {
                        String TAG = G.f24188m;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((A5) interfaceC3269z56).c(TAG, "showOnLockScreen - " + z10);
                    }
                    G.D = z10;
                    G.B = i10;
                    final Xe viewableAd = G.getViewableAd();
                    r4 = viewableAd != null ? viewableAd.a(view, parent, true) : null;
                    this.N = new WeakReference(r4);
                    Handler D = D();
                    if (D != null) {
                        D.post(new Runnable() { // from class: ub.w3
                            @Override // java.lang.Runnable
                            public final void run() {
                                C2903c8.a(C2903c8.this, viewableAd);
                            }
                        });
                    }
                }
                return r4;
            }
        }
        InterfaceC3269z5 interfaceC3269z57 = this.f24083j;
        if (interfaceC3269z57 != null) {
            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
            ((A5) interfaceC3269z57).b("c8", "getPrimaryView called on background thread");
        }
        b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.CALLED_FROM_WRONG_THREAD), false, (short) 2150);
        return null;
    }

    public static final void a(C2903c8 this$0, Xe xe2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
            ((A5) interfaceC3269z5).a("c8", "start tracking for impression");
        }
        if (xe2 != null) {
            xe2.a((Map) null);
        }
    }

    @Override // com.inmobi.media.S0
    public final void a(C3248y0 adSet) {
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
            ((A5) interfaceC3269z5).c("c8", "handleAdFetchSuccessful");
        }
        if (Q() == 1) {
            e(adSet);
        }
        if (!Intrinsics.areEqual("html", E()) && !Intrinsics.areEqual("htmlUrl", E()) && !Intrinsics.areEqual("unknown", E())) {
            super.a(adSet);
            return;
        }
        a(I(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 57);
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
            ((A5) interfaceC3269z52).b("c8", "invalid markup. fetch failed");
        }
    }

    @Override // com.inmobi.media.S0
    public final void a(F0 f02) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
            ((A5) interfaceC3269z5).c("c8", "handleAdScreenDismissed");
        }
        if (Q() == 6) {
            int i10 = this.P;
            if (i10 > 0) {
                this.P = i10 - 1;
            } else {
                InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
                if (interfaceC3269z52 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    ((A5) interfaceC3269z52).d("c8", "AdUnit " + this + " state - READY");
                }
                d((byte) 4);
            }
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
        if (interfaceC3269z53 != null) {
            ((A5) interfaceC3269z53).a("InMobi", "Successfully dismissed fullscreen for placement id: " + I());
        }
        if (this.P == 0 && Q() == 4) {
            if (f02 != null) {
                InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
                if (interfaceC3269z54 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    ((A5) interfaceC3269z54).a("c8", "callback - onAdDismissed");
                }
                f02.b();
            } else {
                InterfaceC3269z5 interfaceC3269z55 = this.f24083j;
                if (interfaceC3269z55 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    ((A5) interfaceC3269z55).b("c8", "Listener was garbage collected. Unable to give callback");
                }
            }
            InterfaceC3269z5 interfaceC3269z56 = this.f24083j;
            if (interfaceC3269z56 != null) {
                ((A5) interfaceC3269z56).a();
            }
        }
    }

    @Override // com.inmobi.media.S0
    public final void a(Z placement, boolean z10) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
            ((A5) interfaceC3269z5).c("c8", "handleAssetAvailabilityChanged");
        }
        super.a(placement, z10);
        if (!z10) {
            if (Intrinsics.areEqual(I(), placement)) {
                if (2 == Q() || 4 == Q()) {
                    d((byte) 0);
                    InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
                    if (interfaceC3269z52 != null) {
                        Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                        ((A5) interfaceC3269z52).d("c8", "AdUnit " + this + " state - CREATED");
                    }
                    F0 r10 = r();
                    if (r10 != null) {
                        r10.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE));
                    }
                }
            }
        } else if (!Intrinsics.areEqual(I(), placement) || 2 != Q() || r() == null || t() == null) {
        } else {
            if (a0()) {
                c(true);
                f();
                return;
            }
            r0();
        }
    }

    @Override // com.inmobi.media.S0
    public final void a(boolean z10, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
            ((A5) interfaceC3269z5).c("c8", "onDidParseAfterFetch");
        }
        super.a(z10, status);
        if (Q() == 2) {
            F0 r10 = r();
            if (r10 != null) {
                InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
                if (interfaceC3269z52 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    ((A5) interfaceC3269z52).a("c8", "callback - onFetchSuccess");
                }
                e(r10);
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
        if (interfaceC3269z53 != null) {
            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
            ((A5) interfaceC3269z53).b("c8", "invalid state - ignore parse callback");
        }
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.Te
    public final void a(C2976h ad2, boolean z10, short s10) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
            ((A5) interfaceC3269z5).c("c8", "onVastProcessCompleted");
        }
        if (!z10) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).b("c8", X8.a("c8", "TAG", "VAST processing failed - ", s10));
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, s10);
            return;
        }
        try {
            try {
                super.a(ad2, z10, s10);
            } catch (IllegalStateException e10) {
                InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
                if (interfaceC3269z53 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    ((A5) interfaceC3269z53).b("c8", "Exception while onVastProcessCompleted : " + e10.getMessage());
                }
            }
            C2976h m10 = m();
            if (m10 == null) {
                InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
                if (interfaceC3269z54 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    ((A5) interfaceC3269z54).b("c8", "current ad is null. failing");
                }
                b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 55);
                return;
            }
            if (T() == 0) {
                if (!m10.G()) {
                    InterfaceC3269z5 interfaceC3269z55 = this.f24083j;
                    if (interfaceC3269z55 != null) {
                        Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                        ((A5) interfaceC3269z55).c("c8", "start OMID session for HTML ad");
                    }
                    a(true, (GestureDetector$OnGestureListenerC2941ec) null);
                }
            } else {
                InterfaceC3269z5 interfaceC3269z56 = this.f24083j;
                if (interfaceC3269z56 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    ((A5) interfaceC3269z56).c("c8", "start OMID session for current AD");
                }
                a(m10);
            }
            if (m10.G()) {
                b(true);
                InterfaceC3269z5 interfaceC3269z57 = this.f24083j;
                if (interfaceC3269z57 != null) {
                    Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                    ((A5) interfaceC3269z57).c("c8", "handleInterActive");
                }
                V();
            }
        } catch (Exception e11) {
            InterfaceC3269z5 interfaceC3269z58 = this.f24083j;
            if (interfaceC3269z58 != null) {
                Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                ((A5) interfaceC3269z58).a("c8", "Exception while loading ad.", e11);
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 13);
        }
    }
}
