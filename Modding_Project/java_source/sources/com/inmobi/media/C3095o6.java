package com.inmobi.media;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.WatermarkData;
import com.inmobi.ads.controllers.PublisherCallbacks;
import com.inmobi.media.C3095o6;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@SourceDebugExtension({"SMAP\nInterstitialUnifiedAdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InterstitialUnifiedAdManager.kt\ncom/inmobi/ads/controllers/InterstitialUnifiedAdManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,372:1\n1#2:373\n*E\n"})
/* renamed from: com.inmobi.media.o6 */
/* loaded from: classes5.dex */
public final class C3095o6 extends AbstractC3230we {
    @Nullable

    /* renamed from: o */
    private C3063m6 f25114o;

    /* renamed from: p */
    private boolean f25115p;

    public static final void b(C3095o6 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        InterfaceC3269z5 p10 = this$0.p();
        if (p10 != null) {
            ((A5) p10).a("InterstitialUnifiedAdManager", "callback - onAdLoadSucceeded");
        }
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onAdLoadSucceeded(info);
        }
    }

    public static final void c(C3095o6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3269z5 p10 = this$0.p();
        if (p10 != null) {
            ((A5) p10).a("InterstitialUnifiedAdManager", "callback - onAdDisplayFailed");
        }
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onAdDisplayFailed();
        }
        InterfaceC3269z5 p11 = this$0.p();
        if (p11 != null) {
            ((A5) p11).a();
        }
        this$0.y();
    }

    private final void e(final AdMetaInfo adMetaInfo) {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            ((A5) p10).c("InterstitialUnifiedAdManager", "onLoadSuccess");
        }
        super.c(adMetaInfo);
        InterfaceC3269z5 p11 = p();
        if (p11 != null) {
            ((A5) p11).d("InterstitialUnifiedAdManager", "AdManager state - LOADED");
        }
        a((byte) 2);
        s().post(new Runnable() { // from class: ub.o5
            @Override // java.lang.Runnable
            public final void run() {
                C3095o6.b(C3095o6.this, adMetaInfo);
            }
        });
    }

    public boolean C() {
        if (this.f25114o != null) {
            return true;
        }
        return false;
    }

    public final void D() throws IllegalStateException {
        C2976h c2976h;
        S0 j10;
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            ((A5) p10).a("InterstitialUnifiedAdManager", "render");
        }
        C3063m6 c3063m6 = this.f25114o;
        if (c3063m6 != null) {
            if (c3063m6.H0() && n() != null) {
                InterfaceC3269z5 p11 = p();
                if (p11 != null) {
                    ((A5) p11).c("InterstitialUnifiedAdManager", "already in ready state");
                }
                AdMetaInfo n10 = n();
                Intrinsics.checkNotNull(n10);
                e(n10);
                return;
            } else if (this.f25115p) {
                InterfaceC3269z5 p12 = p();
                if (p12 != null) {
                    ((A5) p12).b("InMobi", AbstractC3230we.f25396k);
                }
                AbstractC2984h7.a((byte) 1, "InMobi", AbstractC3230we.f25396k);
                b(this.f25114o, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                C3063m6 c3063m62 = this.f25114o;
                if (c3063m62 != null) {
                    c3063m62.b((short) 2128);
                    return;
                }
                return;
            } else {
                C3063m6 c3063m63 = this.f25114o;
                Z z10 = null;
                if (c3063m63 != null) {
                    c2976h = c3063m63.m();
                } else {
                    c2976h = null;
                }
                C3063m6 c3063m64 = this.f25114o;
                if (c3063m64 != null) {
                    z10 = c3063m64.I();
                }
                boolean a10 = a("InMobi", String.valueOf(z10));
                if (c2976h == null) {
                    InterfaceC3269z5 p13 = p();
                    if (p13 != null) {
                        ((A5) p13).b("InterstitialUnifiedAdManager", "ad is null. failure");
                    }
                    b(this.f25114o, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                    C3063m6 c3063m65 = this.f25114o;
                    if (c3063m65 != null) {
                        c3063m65.a((short) 2166);
                    }
                }
                if (n() == null) {
                    InterfaceC3269z5 p14 = p();
                    if (p14 != null) {
                        ((A5) p14).b("InterstitialUnifiedAdManager", "ad meta info is null. failure");
                    }
                    b(this.f25114o, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                    C3063m6 c3063m66 = this.f25114o;
                    if (c3063m66 != null) {
                        c3063m66.a((short) 2167);
                    }
                }
                if (c2976h != null && a10) {
                    if (v() && (j10 = j()) != null) {
                        j10.e((byte) 1);
                    }
                    InterfaceC3269z5 p15 = p();
                    if (p15 != null) {
                        ((A5) p15).d("InterstitialUnifiedAdManager", "AdManager state - LOADING_INTO_VIEW");
                    }
                    a((byte) 8);
                    C3063m6 c3063m67 = this.f25114o;
                    if (c3063m67 != null) {
                        c3063m67.j0();
                        return;
                    }
                    return;
                }
                return;
            }
        }
        throw new IllegalStateException(AbstractC3230we.f25398m);
    }

    public final void E() {
        C3063m6 c3063m6;
        Nd G0;
        C3063m6 c3063m62 = this.f25114o;
        if ((c3063m62 == null || (G0 = c3063m62.G0()) == null || !G0.f23918b) && (c3063m6 = this.f25114o) != null) {
            c3063m6.K0();
        }
    }

    public final void F() {
        Nd nd2;
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            ((A5) p10).a("InterstitialUnifiedAdManager", "show");
        }
        C3063m6 c3063m6 = this.f25114o;
        if (c3063m6 != null) {
            nd2 = c3063m6.G0();
        } else {
            nd2 = null;
        }
        if (nd2 != null) {
            nd2.f23918b = true;
        }
        C3063m6 c3063m62 = this.f25114o;
        if (c3063m62 != null) {
            c3063m62.w0();
        }
        if (x()) {
            if (!G4.f23672a.a()) {
                if (this.f25114o != null) {
                    a(true, (short) 2141);
                    return;
                }
                return;
            }
            C3063m6 c3063m63 = this.f25114o;
            if (c3063m63 != null && c3063m63.e((byte) 4)) {
                this.f25115p = true;
                C3063m6 c3063m64 = this.f25114o;
                if (c3063m64 != null) {
                    c3063m64.j(this);
                }
            }
        }
    }

    public final void a(@Nullable C3063m6 c3063m6) {
        this.f25114o = c3063m6;
    }

    @Override // com.inmobi.media.F0
    public void d() {
        s().post(new Runnable() { // from class: ub.r5
            @Override // java.lang.Runnable
            public final void run() {
                C3095o6.b(C3095o6.this);
            }
        });
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            ((A5) p10).d("InterstitialUnifiedAdManager", "AdManager state - DISPLAY_FAILED");
        }
        a((byte) 6);
        C3063m6 c3063m6 = this.f25114o;
        if (c3063m6 != null) {
            c3063m6.g();
        }
        InterfaceC3269z5 p11 = p();
        if (p11 != null) {
            ((A5) p11).a();
        }
    }

    @Override // com.inmobi.media.F0
    public void g() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            ((A5) p10).a("InterstitialUnifiedAdManager", "showTimeOut");
        }
        S0 j10 = j();
        if (j10 != null) {
            if (j10.Q() != 6 && j10.Q() != 7) {
                a(true, (short) 2159);
            } else {
                j10.a(this);
            }
        }
    }

    @Override // com.inmobi.media.AbstractC3230we
    @Nullable
    public S0 j() {
        return this.f25114o;
    }

    @VisibleForTesting
    public static /* synthetic */ void A() {
    }

    private final void a(boolean z10, short s10) {
        C3063m6 c3063m6;
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            ((A5) p10).c("InterstitialUnifiedAdManager", "onShowFailure");
        }
        if (s10 != 0 && (c3063m6 = this.f25114o) != null) {
            c3063m6.c(s10);
        }
        s().post(new Runnable() { // from class: ub.p5
            @Override // java.lang.Runnable
            public final void run() {
                C3095o6.c(C3095o6.this);
            }
        });
        if (z10) {
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                ((A5) p11).d("InterstitialUnifiedAdManager", "AdManager state - FAILED");
            }
            a((byte) 6);
            C3063m6 c3063m62 = this.f25114o;
            if (c3063m62 != null) {
                c3063m62.g();
            }
        }
        InterfaceC3269z5 p12 = p();
        if (p12 != null) {
            ((A5) p12).a();
        }
    }

    @SuppressLint({"SwitchIntDef"})
    private final boolean x() {
        byte q10 = q();
        if (q10 == 1) {
            InterfaceC3269z5 p10 = p();
            if (p10 != null) {
                ((A5) p10).b("InMobi", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            }
            AbstractC2984h7.a((byte) 1, "InMobi", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            a(false, (short) 2147);
            return false;
        } else if (q10 == 7) {
            AbstractC2984h7.a((byte) 1, "InMobi", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                ((A5) p11).b("InMobi", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            }
            a(false, (short) 2168);
            return false;
        } else if (q10 == 5) {
            if (this.f25114o != null) {
                StringBuilder sb2 = new StringBuilder(AbstractC3230we.f25395j);
                C3063m6 c3063m6 = this.f25114o;
                sb2.append(c3063m6 != null ? c3063m6.I() : null);
                AbstractC2984h7.a((byte) 1, "InMobi", sb2.toString());
                InterfaceC3269z5 p12 = p();
                if (p12 != null) {
                    StringBuilder sb3 = new StringBuilder(AbstractC3230we.f25395j);
                    C3063m6 c3063m62 = this.f25114o;
                    sb3.append(c3063m62 != null ? c3063m62.I() : null);
                    ((A5) p12).b("InMobi", sb3.toString());
                }
                a(false, (short) 2148);
                return false;
            }
            return false;
        } else if (this.f25115p) {
            C3063m6 c3063m63 = this.f25114o;
            if (c3063m63 != null) {
                c3063m63.c((short) 2149);
            }
            AbstractC2984h7.a((byte) 1, "InMobi", AbstractC3230we.f25396k);
            InterfaceC3269z5 p13 = p();
            if (p13 != null) {
                ((A5) p13).b("InMobi", AbstractC3230we.f25396k);
            }
            return false;
        } else {
            return true;
        }
    }

    private final void y() {
        C3063m6 c3063m6 = this.f25114o;
        if (c3063m6 != null) {
            c3063m6.b((byte) 4);
        }
    }

    public final boolean B() {
        C3063m6 c3063m6 = this.f25114o;
        if (c3063m6 != null && 2 == q()) {
            return c3063m6.H0();
        }
        return false;
    }

    @Nullable
    public final C3063m6 z() {
        return this.f25114o;
    }

    @Override // com.inmobi.media.AbstractC3230we, com.inmobi.media.F0
    public void b(@NotNull final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            ((A5) p10).c("InterstitialUnifiedAdManager", "onAdFetchSuccess");
        }
        d(info);
        if (this.f25114o == null) {
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                ((A5) p11).b("InterstitialUnifiedAdManager", "onAdFetchSuccess - adUnit is null - fail");
            }
            a((S0) null, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            a((short) 2190);
            return;
        }
        super.b(info);
        s().post(new Runnable() { // from class: ub.q5
            @Override // java.lang.Runnable
            public final void run() {
                C3095o6.a(C3095o6.this, info);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC3230we, com.inmobi.media.F0
    public void c(@NotNull AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            ((A5) p10).c("InterstitialUnifiedAdManager", "onAdLoadSucceeded");
        }
        if (this.f25114o == null) {
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                ((A5) p11).b("InterstitialUnifiedAdManager", "adUnit is null");
            }
            c(null, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            return;
        }
        e(info);
    }

    public static /* synthetic */ void a(C3095o6 c3095o6, Wa wa2, Context context, boolean z10, String str, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        if ((i10 & 8) != 0) {
            str = "intHtml";
        }
        c3095o6.a(wa2, context, z10, str);
    }

    public final void a(@NotNull Wa pubSettings, @NotNull Context context, boolean z10, @NotNull String logType) {
        C3063m6 c3063m6;
        C3063m6 c3063m62;
        Intrinsics.checkNotNullParameter(pubSettings, "pubSettings");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(logType, "logType");
        if (this.f25114o == null) {
            this.f25114o = new C3063m6(context, new X("int").a(pubSettings.f24337a).c(pubSettings.f24338b).a(pubSettings.f24339c).e(pubSettings.f24341e).b(pubSettings.f24342f).a(), this);
        }
        if (z10) {
            w();
        }
        String str = pubSettings.f24341e;
        if (str != null) {
            InterfaceC3269z5 p10 = p();
            if (p10 != null) {
                ((A5) p10).a();
            }
            a(Cb.a(logType, str, false));
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                ((A5) p11).a("InterstitialUnifiedAdManager", "Ad Unit initialised");
            }
            InterfaceC3269z5 p12 = p();
            if (p12 != null && (c3063m62 = this.f25114o) != null) {
                c3063m62.a(p12);
            }
            InterfaceC3269z5 p13 = p();
            if (p13 != null) {
                ((A5) p13).a("InterstitialUnifiedAdManager", "adding interstitialAdUnit in referenceTracker");
            }
            C3063m6 c3063m63 = this.f25114o;
            Intrinsics.checkNotNull(c3063m63);
            Cb.a(c3063m63, p());
        }
        C3063m6 c3063m64 = this.f25114o;
        if (c3063m64 != null) {
            c3063m64.a(context);
        }
        C3063m6 c3063m65 = this.f25114o;
        if (c3063m65 != null) {
            c3063m65.a(pubSettings.f24339c);
        }
        C3063m6 c3063m66 = this.f25114o;
        if (c3063m66 != null) {
            c3063m66.c("activity");
        }
        if (pubSettings.f24340d && (c3063m6 = this.f25114o) != null) {
            c3063m6.F0();
        }
        WatermarkData t10 = t();
        if (t10 != null) {
            C3063m6 c3063m67 = this.f25114o;
            if (c3063m67 != null) {
                c3063m67.a(t10);
            }
            InterfaceC3269z5 p14 = p();
            if (p14 != null) {
                ((A5) p14).c("InterstitialUnifiedAdManager", "setting up watermark");
            }
        }
    }

    public final void c(@NotNull PublisherCallbacks callbacks) {
        C3063m6 c3063m6;
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        if (l() == null) {
            b(callbacks);
        }
        if (Intrinsics.areEqual(u(), Boolean.FALSE)) {
            C3063m6 c3063m62 = this.f25114o;
            if (c3063m62 != null) {
                c3063m62.a((short) 2006);
            }
            callbacks.onAdLoadFailed(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD));
            InterfaceC3269z5 p10 = p();
            if (p10 != null) {
                ((A5) p10).b("InMobi", "Cannot call load() API after calling load(byte[])");
            }
            AbstractC2984h7.a((byte) 1, "InMobi", "Cannot call load() API after calling load(byte[])");
        } else if (this.f25115p) {
            C3063m6 c3063m63 = this.f25114o;
            if (c3063m63 != null) {
                c3063m63.a((short) 2004);
            }
            callbacks.onAdLoadFailed(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                ((A5) p11).b("InMobi", AbstractC3230we.f25396k);
            }
            AbstractC2984h7.a((byte) 1, "InMobi", AbstractC3230we.f25396k);
        } else {
            a(Boolean.TRUE);
            C3063m6 c3063m64 = this.f25114o;
            if (c3063m64 == null || !a("InMobi", String.valueOf(c3063m64.I()), callbacks) || (c3063m6 = this.f25114o) == null || !c3063m6.e(o())) {
                return;
            }
            a((byte) 1);
            InterfaceC3269z5 p12 = p();
            if (p12 != null) {
                StringBuilder sb2 = new StringBuilder("Fetching an Interstitial ad for placement id: ");
                C3063m6 c3063m65 = this.f25114o;
                sb2.append(c3063m65 != null ? c3063m65.I() : null);
                ((A5) p12).c("InterstitialUnifiedAdManager", sb2.toString());
            }
            StringBuilder sb3 = new StringBuilder("Fetching an Interstitial ad for placement id: ");
            C3063m6 c3063m66 = this.f25114o;
            sb3.append(c3063m66 != null ? c3063m66.I() : null);
            AbstractC2984h7.a((byte) 2, "InterstitialUnifiedAdManager", sb3.toString());
            C3063m6 c3063m67 = this.f25114o;
            if (c3063m67 != null) {
                c3063m67.g(this);
            }
            C3063m6 c3063m68 = this.f25114o;
            if (c3063m68 != null) {
                c3063m68.c0();
            }
        }
    }

    public static final void b(C3095o6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3269z5 p10 = this$0.p();
        if (p10 != null) {
            ((A5) p10).a("InterstitialUnifiedAdManager", "callback - onAdDisplayFailed");
        }
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onAdDisplayFailed();
        }
        this$0.y();
    }

    @Override // com.inmobi.media.AbstractC3230we, com.inmobi.media.F0
    public void b() {
        s().post(new Runnable() { // from class: ub.s5
            @Override // java.lang.Runnable
            public final void run() {
                C3095o6.a(C3095o6.this);
            }
        });
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            ((A5) p10).d("InterstitialUnifiedAdManager", "AdManager state - CREATED");
        }
        a((byte) 0);
        a((Boolean) null);
        C3063m6 c3063m6 = this.f25114o;
        if (c3063m6 != null) {
            c3063m6.g();
        }
        InterfaceC3269z5 p11 = p();
        if (p11 != null) {
            ((A5) p11).a();
        }
    }

    @SuppressLint({"SwitchIntDef"})
    private final void c(S0 s02, InMobiAdRequestStatus inMobiAdRequestStatus) {
        byte q10 = q();
        if (q10 == 8 || q10 == 1) {
            b(s02, inMobiAdRequestStatus);
        } else if (q10 == 2) {
            AbstractC2984h7.a((byte) 1, "InMobi", "Unable to Show Ad, canShowAd Failed");
            InterfaceC3269z5 p10 = p();
            if (p10 != null) {
                ((A5) p10).b("InMobi", "Unable to Show Ad, canShowAd Failed");
            }
            a(true, (short) 0);
        } else if (q10 == 5) {
            AbstractC2984h7.a((byte) 1, "InMobi", "Ad will be dismissed, Internal error");
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                ((A5) p11).b("InMobi", "Ad will be dismissed, Internal error");
            }
            y();
            b();
        } else {
            AbstractC2984h7.a((byte) 1, "InMobi", "Invalid state passed in fireErrorScenarioCallback");
            InterfaceC3269z5 p12 = p();
            if (p12 != null) {
                ((A5) p12).b("InMobi", "Invalid state passed in fireErrorScenarioCallback");
            }
        }
    }

    public static final void a(C3095o6 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        InterfaceC3269z5 p10 = this$0.p();
        if (p10 != null) {
            ((A5) p10).a("InterstitialUnifiedAdManager", "callback - onAdFetchSuccessful");
        }
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onAdFetchSuccessful(info);
        }
    }

    public static final void a(C3095o6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3269z5 p10 = this$0.p();
        if (p10 != null) {
            ((A5) p10).a("InterstitialUnifiedAdManager", "callback - onAdDismissed");
        }
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onAdDismissed();
        }
    }

    @Override // com.inmobi.media.AbstractC3230we, com.inmobi.media.F0
    public void a(@NotNull AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        super.a(info);
        S0 j10 = j();
        if (j10 != null) {
            j10.x0();
        }
        this.f25115p = false;
    }

    @Override // com.inmobi.media.AbstractC3230we
    public void a(@NotNull WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        super.a(watermarkData);
        C3063m6 c3063m6 = this.f25114o;
        if (c3063m6 != null) {
            c3063m6.a(watermarkData);
        }
    }
}
