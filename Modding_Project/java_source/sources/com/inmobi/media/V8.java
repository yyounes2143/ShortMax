package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.annotation.UiThread;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.controllers.PublisherCallbacks;
import com.inmobi.media.V8;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata
@SourceDebugExtension({"SMAP\nNativeUnifiedAdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeUnifiedAdManager.kt\ncom/inmobi/ads/controllers/NativeUnifiedAdManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n1#2:213\n*E\n"})
/* loaded from: classes5.dex */
public final class V8 extends AbstractC3230we {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final String f24311o;

    /* renamed from: p  reason: collision with root package name */
    private final String f24312p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private C2903c8 f24313q;

    public V8(@NotNull PublisherCallbacks callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        this.f24311o = "InMobi";
        this.f24312p = V8.class.getSimpleName();
        b(callbacks);
    }

    public static /* synthetic */ void a(V8 v82, Wa wa2, Context context, boolean z10, String str, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        if ((i10 & 8) != 0) {
            str = "native";
        }
        v82.a(wa2, context, z10, str);
    }

    @Nullable
    public final String D() {
        InterfaceC3231x k10;
        C3113p8 c3113p8;
        C3097o8 c3097o8;
        C3081n8 c3081n8;
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 == null || (k10 = c2903c8.k()) == null) {
            return null;
        }
        Object dataModel = k10.getDataModel();
        if (dataModel instanceof C3113p8) {
            c3113p8 = (C3113p8) dataModel;
        } else {
            c3113p8 = null;
        }
        if (c3113p8 == null || (c3097o8 = c3113p8.f25149p) == null || (c3081n8 = c3097o8.f25118b) == null) {
            return null;
        }
        return c3081n8.f25054a;
    }

    @Nullable
    public final JSONObject E() {
        InterfaceC3231x k10;
        C3113p8 c3113p8;
        C3097o8 c3097o8;
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 == null || (k10 = c2903c8.k()) == null) {
            return null;
        }
        Object dataModel = k10.getDataModel();
        if (dataModel instanceof C3113p8) {
            c3113p8 = (C3113p8) dataModel;
        } else {
            c3113p8 = null;
        }
        if (c3113p8 == null || (c3097o8 = c3113p8.f25149p) == null) {
            return null;
        }
        return c3097o8.f25117a;
    }

    public final boolean F() {
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 != null && c2903c8.Q() == 4) {
            return true;
        }
        return false;
    }

    public final boolean G() {
        InterfaceC3231x k10;
        C3113p8 c3113p8;
        C3097o8 c3097o8;
        C3081n8 c3081n8;
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 != null && (k10 = c2903c8.k()) != null) {
            Object dataModel = k10.getDataModel();
            if (dataModel instanceof C3113p8) {
                c3113p8 = (C3113p8) dataModel;
            } else {
                c3113p8 = null;
            }
            if (c3113p8 != null && (c3097o8 = c3113p8.f25149p) != null && (c3081n8 = c3097o8.f25118b) != null) {
                return c3081n8.f25060g;
            }
        }
        return false;
    }

    public boolean H() {
        if (this.f24313q != null) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Boolean I() {
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 != null) {
            return Boolean.valueOf(c2903c8.k() instanceof C2870a9);
        }
        return null;
    }

    @UiThread
    public final void J() {
        C2903c8 c2903c8;
        if (Intrinsics.areEqual(u(), Boolean.FALSE)) {
            InterfaceC3269z5 p10 = p();
            if (p10 != null) {
                ((A5) p10).b(this.f24311o, "Cannot call load() API after calling load(byte[])");
                return;
            }
            return;
        }
        a(Boolean.TRUE);
        C2903c8 c2903c82 = this.f24313q;
        if (c2903c82 != null && a(this.f24311o, String.valueOf(c2903c82.I()), l()) && (c2903c8 = this.f24313q) != null && c2903c8.e((byte) 1)) {
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                String TAG = this.f24312p;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) p11).a(TAG, "internal load timer started");
            }
            a((byte) 1);
            C2903c8 c2903c83 = this.f24313q;
            if (c2903c83 != null) {
                c2903c83.c0();
            }
        }
    }

    public final void K() {
        T7 t72;
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String TAG = this.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).a(TAG, "pause called");
        }
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 != null) {
            InterfaceC3269z5 interfaceC3269z5 = c2903c8.f24083j;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                ((A5) interfaceC3269z5).c("c8", "onPause");
            }
            if (c2903c8.Q() == 4 && !(c2903c8.t() instanceof Activity)) {
                InterfaceC3231x k10 = c2903c8.k();
                if (k10 instanceof T7) {
                    t72 = (T7) k10;
                } else {
                    t72 = null;
                }
                if (t72 != null) {
                    t72.l();
                }
            }
        }
    }

    public final void L() {
        T7 t72;
        C3113p8 c3113p8;
        C2920d8 c2920d8;
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String TAG = this.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).c(TAG, "reportAdClickAndOpenLandingPage");
        }
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 != null) {
            InterfaceC3269z5 interfaceC3269z5 = c2903c8.f24083j;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                ((A5) interfaceC3269z5).c("c8", "reportAdClickAndOpenLandingPage");
            }
            InterfaceC3231x k10 = c2903c8.k();
            if (k10 != null) {
                if (k10 instanceof T7) {
                    t72 = (T7) k10;
                } else {
                    t72 = null;
                }
                if (t72 != null) {
                    c3113p8 = t72.f24177b;
                } else {
                    c3113p8 = null;
                }
                if (c3113p8 != null) {
                    C3097o8 c3097o8 = c3113p8.f25149p;
                    if (c3097o8 != null) {
                        c2920d8 = c3097o8.f25119c;
                    } else {
                        c2920d8 = null;
                    }
                    if (c2920d8 != null) {
                        InterfaceC3269z5 interfaceC3269z52 = c2903c8.f24083j;
                        if (interfaceC3269z52 != null) {
                            Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                            ((A5) interfaceC3269z52).a("c8", "reporting ad click and opening landing page");
                        }
                        t72.a((View) null, c2920d8);
                        t72.a(c2920d8, true);
                        return;
                    }
                    return;
                }
                return;
            }
            InterfaceC3269z5 interfaceC3269z53 = c2903c8.f24083j;
            if (interfaceC3269z53 != null) {
                Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                ((A5) interfaceC3269z53).b("c8", "container is null. ignoring");
            }
        }
    }

    public final void M() {
        T7 t72;
        We we2;
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String TAG = this.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).a(TAG, "resume called");
        }
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 != null) {
            InterfaceC3269z5 interfaceC3269z5 = c2903c8.f24083j;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("c8", "TAG");
                ((A5) interfaceC3269z5).c("c8", "onResume");
            }
            if (c2903c8.Q() == 4 && !(c2903c8.t() instanceof Activity)) {
                InterfaceC3231x k10 = c2903c8.k();
                if (k10 instanceof T7) {
                    t72 = (T7) k10;
                } else {
                    t72 = null;
                }
                if (t72 != null) {
                    InterfaceC3269z5 interfaceC3269z52 = t72.f24185j;
                    if (interfaceC3269z52 != null) {
                        String TAG2 = t72.f24188m;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((A5) interfaceC3269z52).c(TAG2, "onResume");
                    }
                    t72.f24196u = false;
                    T8 a10 = T7.a(t72.g());
                    if (a10 != null) {
                        a10.c();
                    }
                    t72.p();
                    Context d10 = t72.d();
                    if (d10 != null && (we2 = t72.f24191p) != null) {
                        we2.a(d10, (byte) 0);
                    }
                }
            }
        }
    }

    public final void N() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String TAG = this.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).c(TAG, "takeAction");
        }
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 != null) {
            T7 G = c2903c8.G();
            if (G != null) {
                InterfaceC3269z5 interfaceC3269z5 = G.f24185j;
                if (interfaceC3269z5 != null) {
                    String TAG2 = G.f24188m;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) interfaceC3269z5).c(TAG2, "takeAction");
                }
                C2920d8 c2920d8 = G.E;
                String str = G.F;
                Intent intent = G.G;
                Context context = (Context) G.f24199x.get();
                if (c2920d8 != null && str != null) {
                    G.a(c2920d8, c2920d8.f24584g, str, null);
                    return;
                } else if (intent != null && context != null) {
                    Uc.f24267a.a(context, intent);
                    return;
                } else {
                    return;
                }
            }
            return;
        }
        InterfaceC3269z5 p11 = p();
        if (p11 != null) {
            String TAG3 = this.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((A5) p11).b(TAG3, "InMobiNative is not initialized. Ignoring takeAction");
        }
    }

    @Override // com.inmobi.media.AbstractC3230we, com.inmobi.media.F0
    public void b(@NotNull final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String TAG = this.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).c(TAG, "onAdFetchSuccess");
        }
        d(info);
        InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 == null) {
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                String TAG2 = this.f24312p;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) p11).b(TAG2, "adunit is null. load failed.");
            }
            a((S0) null, inMobiAdRequestStatus);
        } else if (c2903c8.m() == null) {
            InterfaceC3269z5 p12 = p();
            if (p12 != null) {
                String TAG3 = this.f24312p;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((A5) p12).b(TAG3, "adObject is null. load failed");
            }
            a((S0) null, inMobiAdRequestStatus);
        } else {
            super.b(info);
            s().post(new Runnable() { // from class: ub.q2
                @Override // java.lang.Runnable
                public final void run() {
                    V8.a(V8.this, info);
                }
            });
            if (F()) {
                return;
            }
            InterfaceC3269z5 p13 = p();
            if (p13 != null) {
                String TAG4 = this.f24312p;
                Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                ((A5) p13).a(TAG4, "ad is ready. start ad render");
            }
            C2903c8 c2903c82 = this.f24313q;
            if (c2903c82 != null) {
                c2903c82.j0();
            }
        }
    }

    @Override // com.inmobi.media.AbstractC3230we, com.inmobi.media.F0
    public void c(@NotNull final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String TAG = this.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).b(TAG, "onAdLoadSucceeded");
        }
        super.c(info);
        a((byte) 2);
        InterfaceC3269z5 p11 = p();
        if (p11 != null) {
            String TAG2 = this.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) p11).d(TAG2, "AdManager state - LOADED");
        }
        s().post(new Runnable() { // from class: ub.p2
            @Override // java.lang.Runnable
            public final void run() {
                V8.b(V8.this, info);
            }
        });
    }

    @Override // com.inmobi.media.F0
    public void d() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String TAG = this.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).b(TAG, "onAdShowFailed");
        }
        InterfaceC3269z5 p11 = p();
        if (p11 != null) {
            ((A5) p11).a();
        }
    }

    @Override // com.inmobi.media.F0
    public void f() {
        s().post(new Runnable() { // from class: ub.n2
            @Override // java.lang.Runnable
            public final void run() {
                V8.b(V8.this);
            }
        });
    }

    @Override // com.inmobi.media.F0
    public void i() {
        s().post(new Runnable() { // from class: ub.l2
            @Override // java.lang.Runnable
            public final void run() {
                V8.c(V8.this);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC3230we
    @Nullable
    public S0 j() {
        return this.f24313q;
    }

    @Nullable
    public final String A() {
        InterfaceC3231x k10;
        C3097o8 c3097o8;
        C3081n8 c3081n8;
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 == null || (k10 = c2903c8.k()) == null) {
            return null;
        }
        Object dataModel = k10.getDataModel();
        C3113p8 c3113p8 = dataModel instanceof C3113p8 ? (C3113p8) dataModel : null;
        if (c3113p8 == null || (c3097o8 = c3113p8.f25149p) == null || (c3081n8 = c3097o8.f25118b) == null) {
            return null;
        }
        return c3081n8.f25056c;
    }

    @Nullable
    public final String B() {
        InterfaceC3231x k10;
        C3097o8 c3097o8;
        C3081n8 c3081n8;
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 == null || (k10 = c2903c8.k()) == null) {
            return null;
        }
        Object dataModel = k10.getDataModel();
        C3113p8 c3113p8 = dataModel instanceof C3113p8 ? (C3113p8) dataModel : null;
        if (c3113p8 == null || (c3097o8 = c3113p8.f25149p) == null || (c3081n8 = c3097o8.f25118b) == null) {
            return null;
        }
        return c3081n8.f25059f;
    }

    public final float C() {
        InterfaceC3231x k10;
        C3097o8 c3097o8;
        C3081n8 c3081n8;
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 != null && (k10 = c2903c8.k()) != null) {
            Object dataModel = k10.getDataModel();
            C3113p8 c3113p8 = dataModel instanceof C3113p8 ? (C3113p8) dataModel : null;
            if (c3113p8 != null && (c3097o8 = c3113p8.f25149p) != null && (c3081n8 = c3097o8.f25118b) != null) {
                return c3081n8.f25058e;
            }
        }
        return 0.0f;
    }

    public final void a(@NotNull Wa pubSettings, @NotNull Context context, boolean z10, @NotNull String logType) {
        C2903c8 c2903c8;
        Intrinsics.checkNotNullParameter(pubSettings, "pubSettings");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(logType, "logType");
        C2903c8 c2903c82 = this.f24313q;
        if (c2903c82 == null) {
            X a10 = new X("native").a(pubSettings.f24337a);
            Intrinsics.checkNotNullParameter(context, "context");
            this.f24313q = new C2903c8(context, a10.d(context instanceof Activity ? "activity" : "others").c(pubSettings.f24338b).a(pubSettings.f24339c).a(pubSettings.f24340d).e(pubSettings.f24341e).b(pubSettings.f24342f).a(), this);
        } else {
            c2903c82.a(context);
            C2903c8 c2903c83 = this.f24313q;
            if (c2903c83 != null) {
                Intrinsics.checkNotNullParameter(context, "context");
                c2903c83.c(context instanceof Activity ? "activity" : "others");
            }
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
            if (p11 != null && (c2903c8 = this.f24313q) != null) {
                c2903c8.a(p11);
            }
            InterfaceC3269z5 p12 = p();
            if (p12 != null) {
                String TAG = this.f24312p;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) p12).a(TAG, "adding mNativeAdUnit to referenceTracker");
            }
            C2903c8 c2903c84 = this.f24313q;
            Intrinsics.checkNotNull(c2903c84);
            Cb.a(c2903c84, p());
        }
        InterfaceC3269z5 p13 = p();
        if (p13 != null) {
            String TAG2 = this.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) p13).a(TAG2, "load called");
        }
        C2903c8 c2903c85 = this.f24313q;
        if (c2903c85 != null) {
            c2903c85.a(pubSettings.f24339c);
        }
    }

    public final void x() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String TAG = this.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).a(TAG, "destroy called");
        }
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 != null) {
            c2903c8.D0();
        }
        this.f24313q = null;
        InterfaceC3269z5 p11 = p();
        if (p11 != null) {
            ((A5) p11).a();
        }
    }

    @Nullable
    public final String y() {
        InterfaceC3231x k10;
        C3097o8 c3097o8;
        C3081n8 c3081n8;
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 == null || (k10 = c2903c8.k()) == null) {
            return null;
        }
        Object dataModel = k10.getDataModel();
        C3113p8 c3113p8 = dataModel instanceof C3113p8 ? (C3113p8) dataModel : null;
        if (c3113p8 == null || (c3097o8 = c3113p8.f25149p) == null || (c3081n8 = c3097o8.f25118b) == null) {
            return null;
        }
        return c3081n8.f25057d;
    }

    @Nullable
    public final String z() {
        InterfaceC3231x k10;
        C3097o8 c3097o8;
        C3081n8 c3081n8;
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 == null || (k10 = c2903c8.k()) == null) {
            return null;
        }
        Object dataModel = k10.getDataModel();
        C3113p8 c3113p8 = dataModel instanceof C3113p8 ? (C3113p8) dataModel : null;
        if (c3113p8 == null || (c3097o8 = c3113p8.f25149p) == null || (c3081n8 = c3097o8.f25118b) == null) {
            return null;
        }
        return c3081n8.f25055b;
    }

    @Override // com.inmobi.media.F0
    public void c() {
        s().post(new Runnable() { // from class: ub.o2
            @Override // java.lang.Runnable
            public final void run() {
                V8.a(V8.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(V8 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3269z5 p10 = this$0.p();
        if (p10 != null) {
            String TAG = this$0.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).a(TAG, "callback - onVideoSkipped");
        }
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onVideoSkipped();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(V8 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        InterfaceC3269z5 p10 = this$0.p();
        if (p10 != null) {
            String TAG = this$0.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).a(TAG, "callback - onAdLoadSucceeded");
        }
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onAdLoadSucceeded(info);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(V8 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3269z5 p10 = this$0.p();
        if (p10 != null) {
            String TAG = this$0.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).a(TAG, "callback - onVideoCompleted");
        }
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onVideoCompleted();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(V8 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        InterfaceC3269z5 p10 = this$0.p();
        if (p10 != null) {
            String TAG = this$0.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).a(TAG, "callback - onAdFetchSuccessful");
        }
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onAdFetchSuccessful(info);
        }
    }

    public final void a(@NotNull Wa pubSettings, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(pubSettings, "pubSettings");
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.f24313q == null) {
            a(this, pubSettings, context, false, null, 8, null);
        }
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String TAG = this.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).c(TAG, "showOnLockScreen");
        }
        C2903c8 c2903c8 = this.f24313q;
        if (c2903c8 != null) {
            c2903c8.O = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(V8 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3269z5 p10 = this$0.p();
        if (p10 != null) {
            String TAG = this$0.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).a(TAG, "callback - onAdImpressed");
        }
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onAdImpressed();
        }
    }

    @Override // com.inmobi.media.F0
    public void a(final boolean z10) {
        s().post(new Runnable() { // from class: ub.m2
            @Override // java.lang.Runnable
            public final void run() {
                V8.a(V8.this, z10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(V8 this$0, boolean z10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3269z5 p10 = this$0.p();
        if (p10 != null) {
            String TAG = this$0.f24312p;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) p10).a(TAG, "callback -onAudioStateChanged - " + z10);
        }
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onAudioStateChanged(z10);
        }
    }
}
