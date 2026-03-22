package com.inmobi.media;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.media.M1;
import com.mbridge.msdk.MBridgeConstans;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public class M1 extends S0 implements Application.ActivityLifecycleCallbacks {
    public final String N;
    public final String O;
    public boolean P;
    public int Q;
    public final N1 R;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M1(@NotNull Context context, @NotNull Z placement, @Nullable F0 f02) {
        super(context, placement, f02);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placement, "placement");
        String TAG = M1.class.getSimpleName();
        this.N = TAG;
        this.O = "InMobi";
        this.R = new N1();
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        placement.l();
        a(context, placement, f02);
    }

    public static final void c(M1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f24083j;
        if (interfaceC3269z5 != null) {
            String TAG = this$0.N;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "start loading html ad");
        }
        this$0.s0();
    }

    public static final void e(M1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            if (this$0.Q() == 6) {
                this$0.Q++;
                this$0.d((byte) 7);
                InterfaceC3269z5 interfaceC3269z5 = this$0.f24083j;
                if (interfaceC3269z5 != null) {
                    String TAG = this$0.N;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z5).d(TAG, "AdUnit " + this$0 + " state - ACTIVE");
                }
                InterfaceC3269z5 interfaceC3269z52 = this$0.f24083j;
                if (interfaceC3269z52 != null) {
                    ((A5) interfaceC3269z52).c(this$0.O, "Successfully displayed banner ad for placement Id : " + this$0.I());
                }
                F0 r10 = this$0.r();
                if (r10 != null) {
                    this$0.d(r10);
                }
            } else if (this$0.Q() == 7) {
                this$0.Q++;
            }
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z53 = this$0.f24083j;
            if (interfaceC3269z53 != null) {
                String str = this$0.N;
                ((A5) interfaceC3269z53).b(str, rf.a(e10, H6.a(str, "TAG", "BannerAdUnit.onAdScreenDisplayed threw unexpected error: ")));
            }
        }
    }

    public static final void f(M1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            if (this$0.Q() == 4) {
                this$0.d((byte) 6);
                InterfaceC3269z5 interfaceC3269z5 = this$0.f24083j;
                if (interfaceC3269z5 != null) {
                    String TAG = this$0.N;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z5).d(TAG, "AdUnit " + this$0 + " state - RENDERED");
                }
            }
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z52 = this$0.f24083j;
            if (interfaceC3269z52 != null) {
                String str = this$0.N;
                ((A5) interfaceC3269z52).b(str, rf.a(e10, H6.a(str, "TAG", "BannerAdUnit.onRenderViewVisible threw unexpected error: ")));
            }
        }
    }

    public static final void g(M1 this$0) {
        LinkedList<C2976h> f10;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.b0()) {
            this$0.a(System.currentTimeMillis());
            C3248y0 y10 = this$0.y();
            if (y10 != null && (f10 = y10.f()) != null) {
                int i10 = 0;
                for (Object obj : f10) {
                    int i11 = i10 + 1;
                    if (i10 < 0) {
                        CollectionsKt.y();
                    }
                    C2976h c2976h = (C2976h) obj;
                    this$0.B().add(Integer.valueOf(i10));
                    i10 = i11;
                }
            }
        }
        this$0.s0();
    }

    public boolean D0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).c(str, J1.a(str, "TAG", "canProceedToLoad ", this));
        }
        if (f0()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                String TAG = this.N;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z52).b(TAG, "Some of the dependency libraries for Banner not found");
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES), true, (short) 2007);
            return false;
        } else if (1 != Q() && 2 != Q()) {
            if (7 == Q()) {
                b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE), false, (short) 2010);
                InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
                if (interfaceC3269z53 != null) {
                    String str2 = this.N;
                    StringBuilder a10 = H6.a(str2, "TAG", AbstractC3230we.f25395j);
                    a10.append(I().l());
                    ((A5) interfaceC3269z53).b(str2, a10.toString());
                }
                return false;
            }
            InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
            if (interfaceC3269z54 != null) {
                String str3 = this.O;
                ((A5) interfaceC3269z54).c(str3, "Fetching a Banner ad for placement id: " + I());
            }
            e0();
            return true;
        } else {
            AbstractC2984h7.a((byte) 1, this.O, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad");
            InterfaceC3269z5 interfaceC3269z55 = this.f24083j;
            if (interfaceC3269z55 != null) {
                String TAG2 = this.N;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z55).b(TAG2, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad");
            }
            if (1 == Q()) {
                a((short) 2008);
            } else {
                a((short) 2011);
            }
            return false;
        }
    }

    public final boolean E0() {
        if (Q() == 7) {
            return true;
        }
        return false;
    }

    public final void F0() {
        Xe viewableAd;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).a(str, J1.a(str, "TAG", "onPause ", this));
        }
        byte Q = Q();
        if (Q == 4 || Q == 6 || Q == 7) {
            InterfaceC3231x k10 = k();
            Context t10 = t();
            if (k10 != null && t10 != null && (viewableAd = k10.getViewableAd()) != null) {
                viewableAd.a(t10, (byte) 1);
            }
        }
    }

    public final void G0() {
        Xe viewableAd;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).a(str, J1.a(str, "TAG", "onResume ", this));
        }
        byte Q = Q();
        if (Q == 4 || Q == 6 || Q == 7) {
            InterfaceC3231x k10 = k();
            Context t10 = t();
            if (k10 != null && t10 != null && (viewableAd = k10.getViewableAd()) != null) {
                viewableAd.a(t10, (byte) 0);
            }
        }
    }

    public final void H0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).c(str, J1.a(str, "TAG", "registerLifeCycleCallbacks ", this));
        }
        Context t10 = t();
        if (t10 != null) {
            Uc.a(t10, this);
        }
    }

    public final void I0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String TAG = this.N;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "renderAdPostInternetCheck");
        }
        try {
            if (o0()) {
                return;
            }
            U0 s10 = s();
            s10.getClass();
            s10.f24234g = SystemClock.elapsedRealtime();
            d0();
            Handler D = D();
            if (D != null) {
                D.post(new Runnable() { // from class: ub.b1
                    @Override // java.lang.Runnable
                    public final void run() {
                        M1.g(M1.this);
                    }
                });
            }
        } catch (IllegalStateException e10) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                String TAG2 = this.N;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).a(TAG2, "Exception while loading ad.", e10);
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2134);
        }
    }

    @Override // com.inmobi.media.S0
    public final byte J() {
        return (byte) 0;
    }

    public final void J0() {
        Activity activity;
        Application application;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).c(str, J1.a(str, "TAG", "unregisterLifeCycleCallbacks ", this));
        }
        Context t10 = t();
        if (t10 instanceof Activity) {
            activity = (Activity) t10;
        } else {
            activity = null;
        }
        if (activity != null && (application = activity.getApplication()) != null) {
            application.unregisterActivityLifecycleCallbacks(this);
        }
    }

    @Override // com.inmobi.media.S0
    public void c0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).a(str, J1.a(str, "TAG", "load ", this));
        }
        if (D0()) {
            super.c0();
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public synchronized void d(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        try {
            Intrinsics.checkNotNullParameter(renderView, "renderView");
            InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
            if (interfaceC3269z5 != null) {
                String str = this.N;
                ((A5) interfaceC3269z5).a(str, J1.a(str, "TAG", "onAdScreenDismissed ", this));
            }
            super.d(renderView);
            Handler D = D();
            if (D != null) {
                D.post(new Runnable() { // from class: ub.c1
                    @Override // java.lang.Runnable
                    public final void run() {
                        M1.d(M1.this);
                    }
                });
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.inmobi.media.S0
    public boolean f0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).c(str, J1.a(str, "TAG", "missingPrerequisitesForAd ", this));
            return false;
        }
        return false;
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.AbstractC2973gc
    public void i(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).c(str, J1.a(str, "TAG", "onRenderViewVisible ", this));
        }
        super.i(renderView);
        Handler D = D();
        if (D != null) {
            D.post(new Runnable() { // from class: ub.d1
                @Override // java.lang.Runnable
                public final void run() {
                    M1.f(M1.this);
                }
            });
        }
    }

    @Override // com.inmobi.media.S0
    @UiThread
    public void j0() {
        if (p0()) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
            if (interfaceC3269z5 != null) {
                String TAG = this.N;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).a(TAG, "renderAd without internet check");
            }
            I0();
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            String TAG2 = this.N;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) interfaceC3269z52).a(TAG2, "renderAd");
        }
        a(new K1(this), new L1(this));
    }

    @Override // com.inmobi.media.S0
    public final void m(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).a(str, J1.a(str, "TAG", "handleRenderViewSignaledAdReady ", this));
        }
        super.m(gestureDetector$OnGestureListenerC2941ec);
        if (b0() && this.f24080g.indexOf(gestureDetector$OnGestureListenerC2941ec) > 0 && Q() == 6) {
            b((byte) 1);
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = (GestureDetector$OnGestureListenerC2941ec) this.f24080g.get(A());
            if (gestureDetector$OnGestureListenerC2941ec2 != null) {
                gestureDetector$OnGestureListenerC2941ec2.a(true);
            }
        } else if (Q() == 2) {
            b((byte) 1);
            d((byte) 4);
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                String TAG = this.N;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z52).d(TAG, "AdUnit " + this + " state - READY");
            }
            U0 s10 = s();
            s10.getClass();
            s10.f24236i = SystemClock.elapsedRealtime();
            u0();
            z0();
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                String str2 = this.O;
                ((A5) interfaceC3269z53).c(str2, "Successfully loaded Banner ad markup in the WebView for placement id: " + I());
            }
            F0 r10 = r();
            if (r10 != null) {
                f(r10);
            } else {
                InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
                if (interfaceC3269z54 != null) {
                    String TAG2 = this.N;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) interfaceC3269z54).b(TAG2, "AdUnit listener is null");
                }
            }
            i();
        } else {
            InterfaceC3269z5 interfaceC3269z55 = this.f24083j;
            if (interfaceC3269z55 != null) {
                String str3 = this.N;
                StringBuilder a10 = H6.a(str3, "TAG", "AdUnit is not in available state, ignoring the ad ready signal - ");
                a10.append((int) Q());
                ((A5) interfaceC3269z55).a(str3, a10.toString());
            }
        }
    }

    @Override // com.inmobi.media.S0
    public void o(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        int indexOf;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (b0() && (indexOf = this.f24080g.indexOf(renderView)) > A() && renderView.F != EnumC2927df.f24613c) {
            B().remove(Integer.valueOf(indexOf));
            return;
        }
        C0();
        super.o(renderView);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).c(str, J1.a(str, "TAG", "onActivityCreated ", this));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).c(str, J1.a(str, "TAG", "onActivityDestroyed ", this));
        }
        Context t10 = t();
        if (Intrinsics.areEqual(t10, activity)) {
            Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type android.app.Activity");
            ((Activity) t10).getApplication().unregisterActivityLifecycleCallbacks(this);
            g();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).c(str, J1.a(str, "TAG", "onActivityPaused ", this));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).c(str, J1.a(str, "TAG", "onActivityResumed ", this));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).c(str, J1.a(str, "TAG", "onActivitySaveInstanceState ", this));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).c(str, J1.a(str, "TAG", "onActivityStarted ", this));
        }
        if (Intrinsics.areEqual(t(), activity)) {
            G0();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).c(str, J1.a(str, "TAG", "onActivityStopped ", this));
        }
        if (Intrinsics.areEqual(t(), activity)) {
            F0();
        }
    }

    @Override // com.inmobi.media.S0
    @NotNull
    public String q() {
        return "banner";
    }

    @Override // com.inmobi.media.S0
    @Nullable
    public GestureDetector$OnGestureListenerC2941ec w() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).c(str, J1.a(str, "TAG", "htmlAdContainer getter ", this));
        }
        GestureDetector$OnGestureListenerC2941ec w10 = super.w();
        if (I().p() && w10 != null) {
            w10.e();
        }
        return w10;
    }

    @Override // com.inmobi.media.S0
    @UiThread
    public void a(boolean z10, @NotNull InMobiAdRequestStatus status) {
        F0 r10;
        Intrinsics.checkNotNullParameter(status, "status");
        super.a(z10, status);
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).c(str, J1.a(str, "TAG", "onDidParseAfterFetch ", this));
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            String str2 = this.O;
            ((A5) interfaceC3269z52).c(str2, "Banner ad fetch successful for placement id: " + I());
        }
        if (Q() != 2 || (r10 = r()) == null) {
            return;
        }
        e(r10);
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.InterfaceC2861a0
    public void b() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).a(str, J1.a(str, "TAG", "closeAll ", this));
        }
    }

    public static final void d(M1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            if (this$0.Q() == 7) {
                int i10 = this$0.Q - 1;
                this$0.Q = i10;
                if (i10 == 0) {
                    this$0.d((byte) 6);
                    F0 r10 = this$0.r();
                    if (r10 != null) {
                        r10.b();
                    }
                }
            }
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z5 = this$0.f24083j;
            if (interfaceC3269z5 != null) {
                String str = this$0.N;
                ((A5) interfaceC3269z5).b(str, rf.a(e10, H6.a(str, "TAG", "BannerAdUnit.onAdScreenDismissed threw unexpected error: ")));
            }
        }
    }

    @Override // com.inmobi.media.S0
    public void g() {
        this.R.f23872a = false;
        super.g();
    }

    @Override // com.inmobi.media.S0
    public final HashMap o() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).c(str, J1.a(str, "TAG", "adSpecificRequestParams getter ", this));
        }
        HashMap hashMap = new HashMap();
        hashMap.put("u-rt", this.P ? "1" : MBridgeConstans.ENDCARD_URL_TYPE_PL);
        hashMap.put("mk-ad-slot", I().a());
        return hashMap;
    }

    public static final void a(M1 this$0, GestureDetector$OnGestureListenerC2941ec renderView, int i10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        int indexOf = this$0.f24080g.indexOf(renderView);
        try {
            F0 r10 = this$0.r();
            InterfaceC3269z5 interfaceC3269z5 = this$0.f24083j;
            if (interfaceC3269z5 != null) {
                String TAG = this$0.N;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).c(TAG, "callback onShowNextPodAd");
            }
            if (r10 != null) {
                r10.a(i10, indexOf, renderView);
            }
        } catch (Exception unused) {
            this$0.b(indexOf, false);
            this$0.g(indexOf);
        }
    }

    public final void e(boolean z10) {
        InterfaceC3269z5 interfaceC3269z5;
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            String str = this.N;
            ((A5) interfaceC3269z52).a(str, J1.a(str, "TAG", "load ", this));
        }
        if (z10 && (interfaceC3269z5 = this.f24083j) != null) {
            String str2 = this.O;
            ((A5) interfaceC3269z5).c(str2, "Initiating Banner refresh for placement id: " + I());
        }
        this.P = z10;
        c0();
    }

    @Override // com.inmobi.media.S0
    public final void a(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec, short s10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).a(str, J1.a(str, "TAG", "handleRenderViewSignaledAdFailed ", this));
        }
        super.a(gestureDetector$OnGestureListenerC2941ec, s10);
        if (b0()) {
            int indexOf = this.f24080g.indexOf(gestureDetector$OnGestureListenerC2941ec);
            S0.a(this, indexOf, false, 2, null);
            if (indexOf > 0 && Q() == 6) {
                b((byte) 1);
                GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = (GestureDetector$OnGestureListenerC2941ec) this.f24080g.get(A());
                if (gestureDetector$OnGestureListenerC2941ec2 != null) {
                    gestureDetector$OnGestureListenerC2941ec2.a(false);
                }
            }
        }
        if (Q() == 2) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                String str2 = this.O;
                ((A5) interfaceC3269z52).c(str2, "Failed to load the Banner markup in the WebView for placement id: " + I());
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, s10);
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public synchronized void e(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        try {
            Intrinsics.checkNotNullParameter(renderView, "renderView");
            InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
            if (interfaceC3269z5 != null) {
                String str = this.N;
                ((A5) interfaceC3269z5).a(str, J1.a(str, "TAG", "onAdScreenDisplayed ", this));
            }
            super.e(renderView);
            Handler D = D();
            if (D != null) {
                D.post(new Runnable() { // from class: ub.e1
                    @Override // java.lang.Runnable
                    public final void run() {
                        M1.e(M1.this);
                    }
                });
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void e(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str2 = this.N;
            ((A5) interfaceC3269z5).c(str2, J1.a(str2, "TAG", "setAdSize ", this));
        }
        Z I = I();
        Intrinsics.checkNotNull(str);
        I.a(str);
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.InterfaceC2861a0
    @WorkerThread
    public void a(int i10, @NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String str = this.N;
            ((A5) interfaceC3269z5).a(str, J1.a(str, "TAG", "loadPodAd ", this));
        }
        if (B().contains(Integer.valueOf(i10)) && i10 > this.f24080g.indexOf(renderView)) {
            h(i10);
            Handler D = D();
            if (D != null) {
                D.post(new Runnable() { // from class: ub.a1
                    @Override // java.lang.Runnable
                    public final void run() {
                        M1.c(M1.this);
                    }
                });
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            String TAG = this.N;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z52).a(TAG, "No more ads present in pod adSet or current adSet is not pod adSet");
        }
        ArrayList arrayList = this.f24080g;
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) arrayList.get(arrayList.indexOf(renderView));
        if (gestureDetector$OnGestureListenerC2941ec != null) {
            gestureDetector$OnGestureListenerC2941ec.a(false);
        }
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.InterfaceC2861a0
    @WorkerThread
    public void a(final int i10, @NotNull final GestureDetector$OnGestureListenerC2941ec renderView, @Nullable Context context) {
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String TAG = this.N;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "showPodAdAtIndex " + this + " index - " + i10);
        }
        if (!b0()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                String TAG2 = this.N;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).b(TAG2, "Cannot show an pod ad as isPod is not set.");
            }
            ArrayList arrayList = this.f24080g;
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = (GestureDetector$OnGestureListenerC2941ec) arrayList.get(arrayList.indexOf(renderView));
            if (gestureDetector$OnGestureListenerC2941ec2 != null) {
                gestureDetector$OnGestureListenerC2941ec2.b(false);
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
        if (interfaceC3269z53 != null) {
            String TAG3 = this.N;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((A5) interfaceC3269z53).c(TAG3, "isInValidShowPodIndex " + i10 + ' ' + B() + ' ' + this.f24080g.indexOf(renderView) + ' ' + this + ' ');
        }
        if (B().contains(Integer.valueOf(i10)) && i10 > this.f24080g.indexOf(renderView) && this.f24080g.get(i10) != null && ((gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) this.f24080g.get(i10)) == null || gestureDetector$OnGestureListenerC2941ec.f24711x0)) {
            super.a(i10, renderView, context);
            Handler D = D();
            if (D != null) {
                D.post(new Runnable() { // from class: ub.z0
                    @Override // java.lang.Runnable
                    public final void run() {
                        M1.a(M1.this, renderView, i10);
                    }
                });
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
        if (interfaceC3269z54 != null) {
            String TAG4 = this.N;
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            ((A5) interfaceC3269z54).b(TAG4, "Cannot show an pod ad with invalid index passed");
        }
        ArrayList arrayList2 = this.f24080g;
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec3 = (GestureDetector$OnGestureListenerC2941ec) arrayList2.get(arrayList2.indexOf(renderView));
        if (gestureDetector$OnGestureListenerC2941ec3 != null) {
            gestureDetector$OnGestureListenerC2941ec3.b(false);
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void a(@NotNull D1 audioStatusInternal) {
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        F0 r10 = r();
        if (r10 != null) {
            r10.a(audioStatusInternal);
        }
        N1 n12 = this.R;
        n12.getClass();
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        if (!n12.f23872a && audioStatusInternal == D1.f23557e) {
            n12.f23872a = true;
            C3205v5 c3205v5 = C3205v5.f25357c;
            c3205v5.f24100a = System.currentTimeMillis();
            c3205v5.f24101b++;
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public void a(boolean z10) {
        C3205v5 c3205v5 = C3205v5.f25357c;
        Context d10 = Uc.d();
        if (d10 == null) {
            return;
        }
        ConcurrentHashMap concurrentHashMap = C6.f23529b;
        C6 a10 = B6.a(d10, "banner_audio_pref_file");
        Intrinsics.checkNotNullParameter("user_mute_count", "key");
        int i10 = a10.f23530a.getInt("user_mute_count", 0);
        C6.a(a10, "user_mute_count", z10 ? Math.max(0, i10 - 1) : i10 + 1, false, 4, (Object) null);
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.AbstractC2973gc
    public void a(@NotNull GestureDetector$OnGestureListenerC2941ec renderView, boolean z10) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        super.a(renderView, z10);
        byte Q = Q();
        if (Q != 4 && Q != 6) {
            if (Q == 7) {
                renderView.a(z10, Q() == 7 ? z10 ? (short) 2224 : (short) 2223 : (short) 2227);
                return;
            }
            return;
        }
        byte Q2 = Q();
        if (Q2 == 4) {
            r1 = z10 ? (short) 2220 : (short) 2219;
        } else if (Q2 == 6) {
            r1 = z10 ? (short) 2222 : (short) 2221;
        }
        m0();
        renderView.a(z10, r1);
    }
}
