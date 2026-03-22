package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import androidx.annotation.UiThread;
import androidx.core.view.ViewCompat;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.WatermarkData;
import com.inmobi.ads.controllers.PublisherCallbacks;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.R1;
import java.util.HashMap;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@SourceDebugExtension({"SMAP\nBannerUnifiedAdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BannerUnifiedAdManager.kt\ncom/inmobi/ads/controllers/BannerUnifiedAdManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,442:1\n1#2:443\n*E\n"})
/* loaded from: classes5.dex */
public final class R1 extends AbstractC3230we {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final String f24050o = "InMobi";

    /* renamed from: p  reason: collision with root package name */
    private final String f24051p = R1.class.getSimpleName();
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private M1 f24052q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private M1 f24053r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private M1 f24054s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private M1 f24055t;

    private final boolean I() {
        Byte b10;
        M1 m12 = this.f24054s;
        if (m12 != null) {
            b10 = Byte.valueOf(m12.Q());
        } else {
            b10 = null;
        }
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String TAG = this.f24051p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).c(TAG, "shouldUseForegroundUnit " + this + " state - " + b10);
        }
        if ((b10 != null && b10.byteValue() == 4) || ((b10 != null && b10.byteValue() == 7) || (b10 != null && b10.byteValue() == 6))) {
            return true;
        }
        return false;
    }

    private final void J() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).c(str, Q1.a(str, "TAG", "submitAdShowFail ", this));
        }
        S0 j10 = j();
        if (j10 != null) {
            j10.c((short) 2239);
        }
    }

    public final int A() {
        AdConfig j10;
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).c(str, Q1.a(str, "TAG", "defaultRefreshInterval ", this));
        }
        S0 j11 = j();
        if (j11 != null && (j10 = j11.j()) != null) {
            return j10.getDefaultRefreshInterval();
        }
        return -1;
    }

    public final boolean B() {
        String TAG = this.f24051p;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        Intrinsics.areEqual(this.f24054s, this.f24052q);
        String TAG2 = this.f24051p;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        Intrinsics.areEqual(this.f24055t, this.f24052q);
        String TAG3 = this.f24051p;
        Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
        Intrinsics.areEqual(this.f24054s, this.f24053r);
        String TAG4 = this.f24051p;
        Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
        Intrinsics.areEqual(this.f24055t, this.f24053r);
        String TAG5 = this.f24051p;
        Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
        M1 m12 = this.f24052q;
        if (m12 != null) {
            m12.E0();
        }
        M1 m13 = this.f24052q;
        if (m13 != null) {
            m13.Q();
        }
        Objects.toString(this.f24052q);
        String TAG6 = this.f24051p;
        Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
        M1 m14 = this.f24053r;
        if (m14 != null) {
            m14.E0();
        }
        M1 m15 = this.f24053r;
        if (m15 != null) {
            m15.Q();
        }
        Objects.toString(this.f24053r);
        M1 m16 = this.f24054s;
        if (m16 != null) {
            return m16.E0();
        }
        return false;
    }

    public final boolean C() {
        C2976h m10;
        M1 m12 = this.f24054s;
        if (m12 != null && (m10 = m12.m()) != null) {
            return Intrinsics.areEqual(m10.p(), "audio");
        }
        return false;
    }

    public boolean D() {
        if (this.f24052q != null && this.f24053r != null) {
            return true;
        }
        return false;
    }

    public final void E() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).a(str, Q1.a(str, "TAG", "pause ", this));
        }
        M1 m12 = this.f24054s;
        if (m12 != null) {
            m12.F0();
        }
    }

    public final void F() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).c(str, Q1.a(str, "TAG", "registerLifeCycleCallbacks ", this));
        }
        M1 m12 = this.f24052q;
        if (m12 != null) {
            m12.H0();
        }
        M1 m13 = this.f24053r;
        if (m13 != null) {
            m13.H0();
        }
    }

    public final void G() throws IllegalStateException {
        M1 m12;
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).a(str, Q1.a(str, "TAG", "render ", this));
        }
        M1 m13 = this.f24055t;
        if (m13 != null) {
            if (a(this.f24050o, m13.I().toString())) {
                if (v() && (m12 = this.f24055t) != null) {
                    m12.e((byte) 1);
                }
                a((byte) 8);
                m13.j0();
                return;
            }
            return;
        }
        throw new IllegalStateException(AbstractC3230we.f25398m);
    }

    public final void H() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).a(str, Q1.a(str, "TAG", "resume ", this));
        }
        M1 m12 = this.f24054s;
        if (m12 != null) {
            m12.G0();
        }
    }

    public final void K() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).c(str, Q1.a(str, "TAG", "swapAdUnits ", this));
        }
        M1 m12 = this.f24054s;
        if (m12 == null) {
            this.f24054s = this.f24052q;
            this.f24055t = this.f24053r;
        } else if (Intrinsics.areEqual(m12, this.f24052q)) {
            this.f24054s = this.f24053r;
            this.f24055t = this.f24052q;
        } else if (Intrinsics.areEqual(m12, this.f24053r)) {
            this.f24054s = this.f24052q;
            this.f24055t = this.f24053r;
        }
    }

    public final void L() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).c(str, Q1.a(str, "TAG", "unregisterLifeCycleCallbacks ", this));
        }
        M1 m12 = this.f24052q;
        if (m12 != null) {
            m12.J0();
        }
        M1 m13 = this.f24053r;
        if (m13 != null) {
            m13.J0();
        }
    }

    public final void a(@NotNull Context context, @NotNull Wa pubSettings, @NotNull String adSize, @NotNull String logType) {
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pubSettings, "pubSettings");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        Intrinsics.checkNotNullParameter(logType, "logType");
        Intrinsics.checkNotNullExpressionValue(this.f24051p, "TAG");
        X x10 = new X("banner");
        Intrinsics.checkNotNullParameter(context, "context");
        if (context instanceof Activity) {
            str = "activity";
        } else {
            str = "others";
        }
        Z a10 = x10.d(str).a(pubSettings.f24337a).c(pubSettings.f24338b).a(pubSettings.f24339c).a(adSize).a(pubSettings.f24340d).e(pubSettings.f24341e).b(pubSettings.f24342f).a();
        String str2 = pubSettings.f24341e;
        if (str2 != null) {
            InterfaceC3269z5 p10 = p();
            if (p10 != null) {
                ((A5) p10).a();
            }
            a(Cb.a(logType, str2, false));
        }
        M1 m12 = this.f24052q;
        if (m12 != null && this.f24053r != null) {
            m12.a(context, a10, this);
            M1 m13 = this.f24053r;
            if (m13 != null) {
                m13.a(context, a10, this);
            }
        } else {
            this.f24052q = new M1(context, a10, this);
            M1 m14 = new M1(context, a10, this);
            this.f24053r = m14;
            this.f24055t = this.f24052q;
            this.f24054s = m14;
        }
        InterfaceC3269z5 p11 = p();
        if (p11 != null) {
            M1 m15 = this.f24052q;
            if (m15 != null) {
                m15.a(p11);
            }
            M1 m16 = this.f24053r;
            if (m16 != null) {
                m16.a(p11);
            }
            InterfaceC3269z5 p12 = p();
            if (p12 != null) {
                String TAG = this.f24051p;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) p12).a(TAG, "adding mBannerAdUnit1 to reference tracker");
            }
            EnumC2868a7 enumC2868a7 = Cb.f23540a;
            M1 m17 = this.f24052q;
            Intrinsics.checkNotNull(m17);
            Cb.a(m17, p());
            InterfaceC3269z5 p13 = p();
            if (p13 != null) {
                String TAG2 = this.f24051p;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) p13).a(TAG2, "adding mBannerAdUnit2 to reference tracker");
            }
            M1 m18 = this.f24053r;
            Intrinsics.checkNotNull(m18);
            Cb.a(m18, p());
        }
        WatermarkData t10 = t();
        if (t10 != null) {
            M1 m19 = this.f24052q;
            if (m19 != null) {
                m19.a(t10);
            }
            M1 m110 = this.f24053r;
            if (m110 != null) {
                m110.a(t10);
            }
        }
    }

    @Override // com.inmobi.media.AbstractC3230we, com.inmobi.media.F0
    public void b(@NotNull final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).c(str, Q1.a(str, "TAG", "onAdFetchSuccess ", this));
        }
        d(info);
        InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
        M1 m12 = this.f24055t;
        if ((m12 != null ? m12.m() : null) == null) {
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                String TAG = this.f24051p;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) p11).b(TAG, "backgroundAdUnit ad object is null");
            }
            a((S0) null, inMobiAdRequestStatus);
            b((short) 2189);
            return;
        }
        InterfaceC3269z5 p12 = p();
        if (p12 != null) {
            String TAG2 = this.f24051p;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) p12).a(TAG2, "Ad fetch successful, calling loadAd()");
        }
        super.b(info);
        s().post(new Runnable() { // from class: ub.t1
            @Override // java.lang.Runnable
            public final void run() {
                R1.a(R1.this, info);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC3230we, com.inmobi.media.F0
    public void c(@NotNull final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).c(str, Q1.a(str, "TAG", "onAdLoadSucceeded ", this));
        }
        super.c(info);
        a((byte) 0);
        InterfaceC3269z5 p11 = p();
        if (p11 != null) {
            String TAG = this.f24051p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p11).a(TAG, "Ad load successful, providing callback");
        }
        s().post(new Runnable() { // from class: ub.s1
            @Override // java.lang.Runnable
            public final void run() {
                R1.b(R1.this, info);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC3230we
    @Nullable
    public S0 j() {
        if (I()) {
            return this.f24054s;
        }
        return this.f24055t;
    }

    public final boolean x() {
        M1 m12;
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).c(str, Q1.a(str, "TAG", "canProceedForSuccess ", this));
        }
        if (this.f24054s != null && (m12 = this.f24055t) != null) {
            m12.Q();
        }
        return true;
    }

    public final boolean y() {
        M1 m12;
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).c(str, Q1.a(str, "TAG", "canScheduleRefresh ", this));
        }
        M1 m13 = this.f24055t;
        if (m13 == null) {
            return false;
        }
        Byte valueOf = Byte.valueOf(m13.Q());
        if (valueOf.byteValue() == 4 || valueOf.byteValue() == 1 || valueOf.byteValue() == 2 || ((m12 = this.f24054s) != null && m12.Q() == 7)) {
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                String TAG = this.f24051p;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) p11).a(TAG, "Ignoring an attempt to schedule refresh when an ad is already loading or active.");
            }
            return false;
        }
        return true;
    }

    public final void z() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).a(str, Q1.a(str, "TAG", "clear ", this));
        }
        L();
        M1 m12 = this.f24052q;
        if (m12 != null) {
            m12.g();
        }
        this.f24052q = null;
        M1 m13 = this.f24053r;
        if (m13 != null) {
            m13.g();
        }
        this.f24053r = null;
        a((InterfaceC3269z5) null);
        this.f24054s = null;
        this.f24055t = null;
        a((Boolean) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(R1 this$0, AdMetaInfo info) {
        Unit unit;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        InterfaceC3269z5 p10 = this$0.p();
        if (p10 != null) {
            String TAG = this$0.f24051p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).a(TAG, "callback - onAdLoadSucceeded");
        }
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onAdLoadSucceeded(info);
            unit = Unit.f60915a;
        } else {
            unit = null;
        }
        if (unit == null) {
            this$0.b((short) 2184);
        }
    }

    @Override // com.inmobi.media.AbstractC3230we, com.inmobi.media.F0
    public void b() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).c(str, Q1.a(str, "TAG", "onAdDismissed ", this));
        }
        a((byte) 0);
        InterfaceC3269z5 p11 = p();
        if (p11 != null) {
            String TAG = this.f24051p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p11).d(TAG, "AdManager state - CREATED");
        }
        super.b();
    }

    private final void b(RelativeLayout relativeLayout) {
        Z I;
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).a(str, Q1.a(str, "TAG", "displayInternal ", this));
        }
        M1 m12 = this.f24054s;
        if (m12 == null) {
            return;
        }
        InterfaceC3231x k10 = m12.k();
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = k10 instanceof GestureDetector$OnGestureListenerC2941ec ? (GestureDetector$OnGestureListenerC2941ec) k10 : null;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            return;
        }
        Xe viewableAd = gestureDetector$OnGestureListenerC2941ec.getViewableAd();
        M1 m13 = this.f24054s;
        if (m13 != null && (I = m13.I()) != null && I.p()) {
            gestureDetector$OnGestureListenerC2941ec.e();
        }
        View d10 = viewableAd.d();
        viewableAd.a(new HashMap());
        ViewParent parent = gestureDetector$OnGestureListenerC2941ec.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (viewGroup == null) {
            relativeLayout.addView(d10, layoutParams);
            return;
        }
        viewGroup.removeAllViews();
        viewGroup.addView(d10, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(R1 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        InterfaceC3269z5 p10 = this$0.p();
        if (p10 != null) {
            String TAG = this$0.f24051p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).a(TAG, "callback - onAdFetchSuccessful");
        }
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onAdFetchSuccessful(info);
            return;
        }
        InterfaceC3269z5 p11 = this$0.p();
        if (p11 != null) {
            String TAG2 = this$0.f24051p;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) p11).b(TAG2, "callback null");
        }
    }

    public final void b(short s10) {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).c(str, Q1.a(str, "TAG", "submitAdLoadFailed ", this));
        }
        S0 j10 = j();
        if (j10 != null) {
            j10.b(s10);
        }
    }

    @Override // com.inmobi.media.F0
    @UiThread
    public void a(int i10, final int i11, @Nullable GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        ViewParent parent;
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).c(str, Q1.a(str, "TAG", "onShowNextPodAd ", this));
        }
        super.a(i10, i11, gestureDetector$OnGestureListenerC2941ec);
        InterfaceC3269z5 p11 = p();
        if (p11 != null) {
            String str2 = this.f24051p;
            ((A5) p11).a(str2, X8.a(str2, "TAG", "on Show next pod ad index: ", i10));
        }
        if (gestureDetector$OnGestureListenerC2941ec != null) {
            try {
                parent = gestureDetector$OnGestureListenerC2941ec.getParent();
            } catch (Exception unused) {
                M1 m12 = this.f24054s;
                if (m12 != null) {
                    m12.g(i11);
                }
                M1 m13 = this.f24054s;
                if (m13 != null) {
                    m13.b(i11, false);
                    return;
                }
                return;
            }
        } else {
            parent = null;
        }
        InMobiBanner inMobiBanner = parent instanceof InMobiBanner ? (InMobiBanner) parent : null;
        if (inMobiBanner != null) {
            M1 m14 = this.f24054s;
            if (m14 != null) {
                m14.b(i11, true);
            }
            b(inMobiBanner);
            s().post(new Runnable() { // from class: ub.r1
                @Override // java.lang.Runnable
                public final void run() {
                    R1.a(R1.this, i11);
                }
            });
            return;
        }
        M1 m15 = this.f24054s;
        if (m15 != null) {
            m15.g(i11);
        }
        M1 m16 = this.f24054s;
        if (m16 != null) {
            m16.b(i11, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(R1 this$0, int i10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        M1 m12 = this$0.f24054s;
        if (m12 != null) {
            m12.a(i10, false);
        }
    }

    @UiThread
    public final void a(@NotNull PublisherCallbacks callbacks, @NotNull String adSize, boolean z10) {
        M1 m12;
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).c(str, Q1.a(str, "TAG", "load 1 ", this));
        }
        if (Intrinsics.areEqual(u(), Boolean.FALSE)) {
            b(this.f24055t, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD));
            M1 m13 = this.f24055t;
            if (m13 != null) {
                m13.a((short) 2006);
            }
            AbstractC2984h7.a((byte) 1, this.f24050o, "Cannot call load() API after calling load(byte[])");
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                String TAG = this.f24051p;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) p11).b(TAG, "Cannot call load() API after calling load(byte[])");
                return;
            }
            return;
        }
        a(Boolean.TRUE);
        if (l() == null) {
            b(callbacks);
        }
        M1 m14 = this.f24055t;
        if (m14 == null || !a(this.f24050o, String.valueOf(m14.I()), callbacks) || (m12 = this.f24055t) == null || !m12.e(o())) {
            return;
        }
        InterfaceC3269z5 p12 = p();
        if (p12 != null) {
            String TAG2 = this.f24051p;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) p12).d(TAG2, "AdManager state - LOADING");
        }
        a((byte) 1);
        d(null);
        M1 m15 = this.f24055t;
        Intrinsics.checkNotNull(m15);
        m15.e(adSize);
        M1 m16 = this.f24055t;
        Intrinsics.checkNotNull(m16);
        m16.e(z10);
    }

    @Override // com.inmobi.media.AbstractC3230we
    public void a(@Nullable byte[] bArr, @NotNull PublisherCallbacks callbacks) {
        M1 m12;
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).a(str, Q1.a(str, "TAG", "load 2 ", this));
        }
        if (Intrinsics.areEqual(u(), Boolean.TRUE)) {
            AbstractC2984h7.a((byte) 1, "InMobi", "Cannot call load(byte[]) API after load() API is called");
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                String TAG = this.f24051p;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) p11).b(TAG, "Cannot call load(byte[]) API after load() API is called");
                return;
            }
            return;
        }
        a(Boolean.FALSE);
        a((byte) 1);
        b(callbacks);
        if (this.f24055t != null) {
            M1 m13 = this.f24054s;
            if ((m13 == null || !m13.Y()) && (m12 = this.f24055t) != null && m12.e((byte) 1)) {
                InterfaceC3269z5 p12 = p();
                if (p12 != null) {
                    String TAG2 = this.f24051p;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) p12).a(TAG2, "timer started - load banner");
                }
                M1 m14 = this.f24055t;
                if (m14 != null) {
                    m14.e0();
                }
                M1 m15 = this.f24055t;
                if (m15 != null) {
                    m15.a(bArr);
                }
            }
        }
    }

    public final void a(@NotNull RelativeLayout banner) {
        Z I;
        Intrinsics.checkNotNullParameter(banner, "banner");
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).a(str, Q1.a(str, "TAG", "displayAd ", this));
        }
        M1 m12 = this.f24054s;
        InterfaceC3231x k10 = m12 != null ? m12.k() : null;
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = k10 instanceof GestureDetector$OnGestureListenerC2941ec ? (GestureDetector$OnGestureListenerC2941ec) k10 : null;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            return;
        }
        Xe viewableAd = gestureDetector$OnGestureListenerC2941ec.getViewableAd();
        M1 m13 = this.f24054s;
        if (m13 != null && (I = m13.I()) != null && I.p()) {
            gestureDetector$OnGestureListenerC2941ec.e();
        }
        ViewParent parent = gestureDetector$OnGestureListenerC2941ec.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        View d10 = viewableAd.d();
        viewableAd.a(new HashMap());
        M1 m14 = this.f24055t;
        if (m14 != null) {
            m14.F0();
        }
        M1 m15 = this.f24054s;
        if (m15 != null && m15.Q() == 8) {
            View view = new View(banner.getContext());
            view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            view.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            a(viewGroup, banner, layoutParams, view);
            J();
        } else {
            a(viewGroup, banner, layoutParams, d10);
        }
        M1 m16 = this.f24055t;
        if (m16 != null) {
            m16.g();
        }
    }

    private static final void a(ViewGroup viewGroup, RelativeLayout relativeLayout, RelativeLayout.LayoutParams layoutParams, View view) {
        if (viewGroup == null) {
            relativeLayout.addView(view, layoutParams);
            return;
        }
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
    }

    @Override // com.inmobi.media.AbstractC3230we
    public void a(@NotNull WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        super.a(watermarkData);
        M1 m12 = this.f24052q;
        if (m12 != null) {
            m12.a(watermarkData);
        }
        M1 m13 = this.f24053r;
        if (m13 != null) {
            m13.a(watermarkData);
        }
    }

    public final int a(int i10, int i11) {
        AdConfig j10;
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).c(str, Q1.a(str, "TAG", "getRefreshInterval ", this));
        }
        M1 m12 = this.f24055t;
        return (m12 == null || (j10 = m12.j()) == null) ? i11 : i10 < j10.getMinimumRefreshInterval() ? j10.getMinimumRefreshInterval() : i10;
    }

    public final boolean a(long j10) {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = this.f24051p;
            ((A5) p10).c(str, Q1.a(str, "TAG", "checkForRefreshRate ", this));
        }
        M1 m12 = this.f24055t;
        if (m12 == null) {
            return false;
        }
        AdConfig j11 = m12.j();
        Intrinsics.checkNotNull(j11);
        int minimumRefreshInterval = j11.getMinimumRefreshInterval();
        if (SystemClock.elapsedRealtime() - j10 < minimumRefreshInterval * 1000) {
            a((short) 2175);
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                String TAG = this.f24051p;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) p11).b(TAG, "Early refresh request");
            }
            M1 m13 = this.f24055t;
            InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST);
            b(m13, inMobiAdRequestStatus.setCustomMessage("Ad cannot be refreshed before " + minimumRefreshInterval + " seconds"));
            String TAG2 = this.f24051p;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            StringBuilder sb2 = new StringBuilder("Ad cannot be refreshed before ");
            sb2.append(minimumRefreshInterval);
            sb2.append(" seconds (AdPlacement Id = ");
            M1 m14 = this.f24055t;
            sb2.append(m14 != null ? m14.I() : null);
            sb2.append(')');
            AbstractC2984h7.a((byte) 1, TAG2, sb2.toString());
            InterfaceC3269z5 p12 = p();
            if (p12 != null) {
                String TAG3 = this.f24051p;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                StringBuilder sb3 = new StringBuilder("Ad cannot be refreshed before ");
                sb3.append(minimumRefreshInterval);
                sb3.append(" seconds (AdPlacement Id = ");
                M1 m15 = this.f24055t;
                sb3.append(m15 != null ? m15.I() : null);
                sb3.append(')');
                ((A5) p12).b(TAG3, sb3.toString());
            }
            return false;
        }
        return true;
    }
}
