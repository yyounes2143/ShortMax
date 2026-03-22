package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.TelemetryConfig;
import com.inmobi.media.C3063m6;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* renamed from: com.inmobi.media.m6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3063m6 extends S0 {
    public int N;
    public boolean O;
    public Nd P;
    public Function0 Q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3063m6(@NotNull Context context, @NotNull Z adPlacement, @Nullable F0 f02) {
        super(context, adPlacement, f02);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adPlacement, "adPlacement");
        this.P = new Nd();
        Intrinsics.checkNotNullExpressionValue("m6", "TAG");
        adPlacement.l();
        a(context, adPlacement, f02);
        c("activity");
    }

    public static final void c(C3063m6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(this$0.r());
    }

    public static final void d(C3063m6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b(this$0.r());
    }

    public static final /* synthetic */ String e() {
        return "m6";
    }

    public final boolean D0() {
        if (f0()) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                ((A5) interfaceC3269z5).a("m6", "Some of the dependency libraries for Interstitial not found");
            }
            a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES), true, (short) 2007);
            return false;
        }
        F0 r10 = r();
        if (r10 == null) {
            return false;
        }
        byte Q = Q();
        if (Q == 1) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).b("InMobiInterstitial", AbstractC3230we.f25399n + I());
            }
            a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD), false, (short) 2008);
        } else if (Q == 7 || Q == 6) {
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                ((A5) interfaceC3269z53).b("InMobiInterstitial", AbstractC3230we.f25395j + I());
            }
            a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE), false, (short) 2010);
        } else if (Q == 2) {
            if (!Intrinsics.areEqual("html", E()) && !Intrinsics.areEqual("htmlUrl", E())) {
                e(r10);
            } else {
                InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
                if (interfaceC3269z54 != null) {
                    ((A5) interfaceC3269z54).b("InMobiInterstitial", AbstractC3230we.f25399n + I());
                }
                a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD), false, (short) 2011);
            }
        } else {
            if (4 == Q()) {
                if (W()) {
                    g();
                } else {
                    InterfaceC3269z5 interfaceC3269z55 = this.f24083j;
                    if (interfaceC3269z55 != null) {
                        Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                        ((A5) interfaceC3269z55).a("m6", "An ad is ready with the ad unit. Signaling ad load success ...");
                    }
                    F0 r11 = r();
                    if (r11 == null) {
                        InterfaceC3269z5 interfaceC3269z56 = this.f24083j;
                        if (interfaceC3269z56 != null) {
                            ((A5) interfaceC3269z56).b("InMobiInterstitial", "Listener was garbage collected. Unable to give callback");
                        }
                    } else {
                        e(r11);
                        f(r11);
                    }
                    return false;
                }
            }
            e0();
            return true;
        }
        return false;
    }

    public final boolean E0() {
        InterfaceC3269z5 interfaceC3269z5;
        C2976h m10 = m();
        if (m10 == null) {
            return false;
        }
        AdConfig j10 = j();
        Intrinsics.checkNotNull(j10);
        boolean a10 = m10.a(j10.getCacheConfig(q()).getTimeToLive());
        if (a10 && (interfaceC3269z5 = this.f24083j) != null) {
            Intrinsics.checkNotNullExpressionValue("m6", "TAG");
            ((A5) interfaceC3269z5).b("m6", "Top ad has expired, failing show of ad.");
        }
        return !a10;
    }

    @Override // com.inmobi.media.S0
    @Nullable
    public Integer F() {
        AdConfig j10 = j();
        if (j10 != null) {
            return Integer.valueOf(j10.getMinimumRefreshInterval());
        }
        return null;
    }

    public final void F0() {
        InterfaceC3231x k10 = k();
        if (k10 == null) {
            return;
        }
        this.O = true;
        k10.e();
    }

    @NotNull
    public final Nd G0() {
        return this.P;
    }

    public final boolean H0() {
        if (Q() == 4) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0059, code lost:
        r0 = D();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005d, code lost:
        if (r0 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005f, code lost:
        r0.post(new ub.f5(r6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void I0() {
        /*
            r6 = this;
            java.lang.String r0 = "Cannot handle markupType: "
            com.inmobi.media.z5 r1 = r6.f24083j
            java.lang.String r2 = "TAG"
            java.lang.String r3 = "m6"
            if (r1 == 0) goto L14
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)
            com.inmobi.media.A5 r1 = (com.inmobi.media.A5) r1
            java.lang.String r4 = "renderAdPostInternetCheck"
            r1.a(r3, r4)
        L14:
            r6.k0()
            boolean r1 = r6.o0()     // Catch: java.lang.IllegalStateException -> L4f
            if (r1 == 0) goto L1e
            return
        L1e:
            com.inmobi.media.U0 r1 = r6.s()     // Catch: java.lang.IllegalStateException -> L4f
            r1.getClass()     // Catch: java.lang.IllegalStateException -> L4f
            long r4 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.IllegalStateException -> L4f
            r1.f24234g = r4     // Catch: java.lang.IllegalStateException -> L4f
            r6.d0()     // Catch: java.lang.IllegalStateException -> L4f
            java.lang.String r1 = r6.E()     // Catch: java.lang.IllegalStateException -> L4f
            int r4 = r1.hashCode()     // Catch: java.lang.IllegalStateException -> L4f
            r5 = -1084172778(0xffffffffbf60d616, float:-0.8782667)
            if (r4 == r5) goto L68
            r5 = 3213227(0x3107ab, float:4.50269E-39)
            if (r4 == r5) goto L51
            r5 = 1236050372(0x49aca1c4, float:1414200.5)
            if (r4 == r5) goto L46
            goto L70
        L46:
            java.lang.String r4 = "htmlUrl"
            boolean r1 = r1.equals(r4)     // Catch: java.lang.IllegalStateException -> L4f
            if (r1 != 0) goto L59
            goto L70
        L4f:
            r0 = move-exception
            goto L9c
        L51:
            java.lang.String r4 = "html"
            boolean r1 = r1.equals(r4)     // Catch: java.lang.IllegalStateException -> L4f
            if (r1 == 0) goto L70
        L59:
            android.os.Handler r0 = r6.D()     // Catch: java.lang.IllegalStateException -> L4f
            if (r0 == 0) goto Lb7
            ub.f5 r1 = new ub.f5     // Catch: java.lang.IllegalStateException -> L4f
            r1.<init>()     // Catch: java.lang.IllegalStateException -> L4f
            r0.post(r1)     // Catch: java.lang.IllegalStateException -> L4f
            goto Lb7
        L68:
            java.lang.String r4 = "inmobiJson"
            boolean r1 = r1.equals(r4)     // Catch: java.lang.IllegalStateException -> L4f
            if (r1 != 0) goto L8d
        L70:
            com.inmobi.media.z5 r1 = r6.f24083j     // Catch: java.lang.IllegalStateException -> L4f
            if (r1 == 0) goto Lb7
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)     // Catch: java.lang.IllegalStateException -> L4f
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.IllegalStateException -> L4f
            r4.<init>(r0)     // Catch: java.lang.IllegalStateException -> L4f
            java.lang.String r0 = r6.E()     // Catch: java.lang.IllegalStateException -> L4f
            r4.append(r0)     // Catch: java.lang.IllegalStateException -> L4f
            java.lang.String r0 = r4.toString()     // Catch: java.lang.IllegalStateException -> L4f
            com.inmobi.media.A5 r1 = (com.inmobi.media.A5) r1     // Catch: java.lang.IllegalStateException -> L4f
            r1.a(r3, r0)     // Catch: java.lang.IllegalStateException -> L4f
            goto Lb7
        L8d:
            com.inmobi.media.z5 r0 = r6.f24083j     // Catch: java.lang.IllegalStateException -> L4f
            if (r0 == 0) goto Lb7
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)     // Catch: java.lang.IllegalStateException -> L4f
            java.lang.String r1 = "Waiting for Vast Processing"
            com.inmobi.media.A5 r0 = (com.inmobi.media.A5) r0     // Catch: java.lang.IllegalStateException -> L4f
            r0.a(r3, r1)     // Catch: java.lang.IllegalStateException -> L4f
            goto Lb7
        L9c:
            com.inmobi.media.z5 r1 = r6.f24083j
            if (r1 == 0) goto Laa
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)
            com.inmobi.media.A5 r1 = (com.inmobi.media.A5) r1
            java.lang.String r2 = "Exception while loading ad."
            r1.a(r3, r2, r0)
        Laa:
            com.inmobi.ads.InMobiAdRequestStatus r0 = new com.inmobi.ads.InMobiAdRequestStatus
            com.inmobi.ads.InMobiAdRequestStatus$StatusCode r1 = com.inmobi.ads.InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR
            r0.<init>(r1)
            r1 = 1
            r2 = 2134(0x856, float:2.99E-42)
            r6.b(r0, r1, r2)
        Lb7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3063m6.I0():void");
    }

    @Override // com.inmobi.media.S0
    public final byte J() {
        return (byte) 1;
    }

    public boolean J0() {
        if (2 == Q()) {
            return true;
        }
        return false;
    }

    public final void K0() {
        C2976h m10;
        String str;
        short s10;
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
            ((A5) interfaceC3269z5).c(e10, "submitAdNotReady " + this);
        }
        Nd nd2 = this.P;
        U0 s11 = s();
        if (this.A) {
            m10 = b(this.f24097x);
        } else {
            m10 = m();
        }
        Boolean bool = null;
        if (m10 != null) {
            str = m10.p();
        } else {
            str = null;
        }
        C3248y0 y10 = y();
        if (y10 != null) {
            bool = y10.o();
        }
        Boolean bool2 = bool;
        String E = E();
        byte Q = Q();
        W adNotReadyMetadata = new W(s11, str, bool2, E, Q);
        nd2.getClass();
        Intrinsics.checkNotNullParameter(adNotReadyMetadata, "adNotReadyMetadata");
        HashMap hashMap = new HashMap();
        long j10 = s11.f24230c;
        ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
        hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j10));
        if (Q == 0) {
            s10 = 2204;
        } else if (Q == 1) {
            s10 = 2205;
        } else if (Q == 2) {
            s10 = 2206;
        } else if (Q == 3) {
            s10 = 2207;
        } else if (Q == 6) {
            s10 = 2208;
        } else if (Q == 7) {
            s10 = 2209;
        } else if (Q == 8) {
            s10 = 2242;
        } else {
            s10 = 2210;
        }
        hashMap.put("errorCode", Short.valueOf(s10));
        if (E != null) {
            hashMap.put("markupType", E);
        }
        if (str != null) {
            hashMap.put("creativeType", "\"" + str + '\"');
        }
        if (bool2 != null) {
            hashMap.put("isRewarded", bool2);
        }
        String a10 = s11.a();
        if (a10.length() > 0) {
            hashMap.put("metadataBlob", a10);
        }
        hashMap.put("adType", s11.f24228a.q());
        hashMap.put("networkType", L3.q());
        hashMap.put("plId", Long.valueOf(s11.f24228a.I().l()));
        hashMap.put("isAdLoaded", Boolean.valueOf(nd2.f23917a));
        String m11 = s11.f24228a.I().m();
        if (m11 != null) {
            hashMap.put("plType", m11);
        }
        Pd pd2 = Pd.f23988a;
        Pd.b("AdNotReady", hashMap, Td.f24224a);
    }

    public final void L0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("InMobiInterstitial", "Successfully loaded Interstitial ad markup in the WebView for placement id: " + I());
        }
        i();
        r0();
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.InterfaceC2861a0
    public void a(int i10, @NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
    }

    public final short b(Context context) {
        int i10;
        try {
            InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                ((A5) interfaceC3269z5).a("m6", ">>> Starting InMobiAdActivity to display interstitial ad ...");
            }
            InterfaceC3231x container = k();
            if (container == null) {
                return (short) 2155;
            }
            if (Intrinsics.areEqual("unknown", container.getMarkupType())) {
                return (short) 2156;
            }
            SparseArray sparseArray = InMobiAdActivity.f23426k;
            Intrinsics.checkNotNullParameter(container, "container");
            int hashCode = container.hashCode();
            InMobiAdActivity.f23426k.put(hashCode, container);
            Intent intent = new Intent(context, InMobiAdActivity.class);
            InterfaceC3269z5 obj = this.f24083j;
            if (obj != null) {
                String uuid = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
                HashMap hashMap = AbstractC3062m5.f25030a;
                String key = uuid.toString();
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(obj, "obj");
                AbstractC3062m5.f25030a.put(key, new WeakReference(obj));
                intent.putExtra("loggerCacheKey", uuid.toString());
            }
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX", hashCode);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 102);
            String E = E();
            if (Intrinsics.areEqual(E, "html")) {
                i10 = 200;
            } else {
                i10 = Intrinsics.areEqual(E, "htmlUrl") ? 202 : 201;
            }
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE", i10);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN", true);
            if (context == null) {
                return (short) 2157;
            }
            if (b0()) {
                if (C() == -1) {
                    a(System.currentTimeMillis());
                }
                if (z() > 0) {
                    intent.setFlags(603979776);
                }
            }
            Uc.f24267a.a(context, intent);
            return (short) 0;
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).b("InMobiInterstitial", "Cannot show ad; SDK encountered an unexpected error");
            }
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            return (short) 2154;
        }
    }

    @Override // com.inmobi.media.S0
    @UiThread
    public void c0() {
        if (D0()) {
            super.c0();
        }
    }

    @Override // com.inmobi.media.S0
    public void g() {
        super.g();
        this.Q = null;
    }

    public final void h(@Nullable F0 f02) {
        short b10 = b(t());
        if (f02 == null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("InMobiInterstitial", "Listener was garbage collected.Unable to give callback");
            }
        } else if (b10 != 0) {
            a(true, b10);
        } else {
            f02.e();
        }
    }

    public final void i(F0 f02) {
        if (f02 == null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("InMobiInterstitial", "Listener was garbage collected. Unable to give callback");
            }
            a(true, (short) 2151);
            return;
        }
        Function0 function0 = this.Q;
        if (function0 != null) {
            function0.invoke();
        } else if (Q() == 8) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                ((A5) interfaceC3269z52).b("m6", "unload has been called on this ad. Dont show. ");
            }
            Intrinsics.checkNotNullExpressionValue("m6", "TAG");
            AbstractC2984h7.a((byte) 2, "m6", "Failed to show Ad as creative has called unload() on the Ad");
            a(true, (short) 2239);
        } else if (!H0()) {
            AbstractC2984h7.a((byte) 2, "InMobiInterstitial", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                ((A5) interfaceC3269z53).b("m6", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            }
            Intrinsics.checkNotNullExpressionValue("m6", "TAG");
            AbstractC2984h7.a((byte) 1, "m6", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            a(true, (short) 2152);
        } else {
            g(f02);
            d((byte) 6);
            if (!Intrinsics.areEqual("html", E()) && !Intrinsics.areEqual("htmlUrl", E())) {
                A v10 = v();
                int hashCode = hashCode();
                C2951f6 c2951f6 = new C2951f6(this, f02);
                v10.getClass();
                A.a(hashCode, c2951f6);
            } else if (W()) {
                b(f02, (short) 2153);
                InterfaceC3231x k10 = k();
                if (k10 != null) {
                    k10.b();
                }
            } else {
                h(f02);
            }
        }
    }

    @UiThread
    public final void j(@Nullable final F0 f02) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            i(f02);
        } else {
            ((ExecutorC3096o7) AbstractC3268z4.f25482d.getValue()).f25116a.post(new Runnable() { // from class: ub.h5
                @Override // java.lang.Runnable
                public final void run() {
                    C3063m6.a(C3063m6.this, f02);
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
                Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                ((A5) interfaceC3269z5).a("m6", "renderAd without internet check");
            }
            I0();
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("m6", "TAG");
            ((A5) interfaceC3269z52).a("m6", "renderAd");
        }
        a(new C3031k6(this), new C3047l6(this));
    }

    @Override // com.inmobi.media.S0
    public void k0() {
        super.k0();
        this.N = 0;
    }

    @Override // com.inmobi.media.S0
    @UiThread
    public void m(@Nullable GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        super.m(gestureDetector$OnGestureListenerC2941ec);
        if (b0()) {
            int indexOf = this.f24080g.indexOf(gestureDetector$OnGestureListenerC2941ec);
            if (indexOf < A()) {
                InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
                if (interfaceC3269z5 != null) {
                    Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                    ((A5) interfaceC3269z5).a("m6", "Ignoring loaded ad with index " + indexOf + " as current rendering index is " + A());
                    return;
                }
                return;
            }
            B().add(Integer.valueOf(indexOf));
            for (int i10 = 0; i10 < indexOf; i10++) {
                if (this.f24080g.get(i10) != null) {
                    return;
                }
            }
            if (Q() == 2) {
                InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
                if (interfaceC3269z52 != null) {
                    ((A5) interfaceC3269z52).a("m6", X8.a("m6", "TAG", "Providing success based on index ", indexOf));
                }
                b((byte) 1);
                i(indexOf);
                L0();
            }
        } else if (Q() == 2) {
            b((byte) 1);
            L0();
        }
    }

    @Override // com.inmobi.media.S0
    public void o(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (b0()) {
            if (!a(renderView)) {
                C0();
            }
        } else {
            C0();
        }
        super.o(renderView);
    }

    @Override // com.inmobi.media.S0
    @NotNull
    public String q() {
        return "int";
    }

    @Override // com.inmobi.media.S0
    public void q0() {
        F0 r10 = r();
        if (r10 != null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                ((A5) interfaceC3269z5).a("m6", "callback - onFetchSuccess");
            }
            e(r10);
            return;
        }
        b((short) 2188);
        InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("m6", "TAG");
            ((A5) interfaceC3269z52).b("m6", "listener is null");
        }
    }

    @Override // com.inmobi.media.S0
    @UiThread
    public void r0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("m6", "TAG");
            ((A5) interfaceC3269z5).d("m6", "AdUnit " + this + " state - READY");
        }
        d((byte) 4);
        U0 s10 = s();
        s10.getClass();
        s10.f24236i = SystemClock.elapsedRealtime();
        u0();
        z0();
        this.P.f23917a = true;
        F0 r10 = r();
        if (r10 != null && r10.a()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                ((A5) interfaceC3269z52).a("m6", "signaling Success");
            }
            f(r10);
        }
    }

    @Override // com.inmobi.media.S0
    @Nullable
    public GestureDetector$OnGestureListenerC2941ec w() {
        GestureDetector$OnGestureListenerC2941ec w10 = super.w();
        if (this.O && w10 != null) {
            w10.e();
        }
        return w10;
    }

    public static final void e(C3063m6 this$0) {
        LinkedList<C2976h> f10;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.s0();
        if (this$0.b0()) {
            C3248y0 y10 = this$0.y();
            int size = (y10 == null || (f10 = y10.f()) == null) ? 0 : f10.size();
            for (int i10 = 1; i10 < size; i10++) {
                this$0.h(this$0.z() + 1);
                this$0.s0();
            }
        }
    }

    @Override // com.inmobi.media.S0
    public void c(@NotNull String monetizationContext) {
        Intrinsics.checkNotNullParameter(monetizationContext, "monetizationContext");
        super.c("activity");
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public synchronized void d(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        super.d(renderView);
        Handler D = D();
        if (D != null) {
            D.post(new Runnable() { // from class: ub.k5
                @Override // java.lang.Runnable
                public final void run() {
                    C3063m6.c(C3063m6.this);
                }
            });
        }
    }

    public final void a(@NotNull Nd nd2) {
        Intrinsics.checkNotNullParameter(nd2, "<set-?>");
        this.P = nd2;
    }

    @Override // com.inmobi.media.S0
    public void a(@Nullable byte[] bArr) {
        if (D0()) {
            super.a(bArr);
        }
    }

    public static final void a(C3063m6 this$0, F0 f02) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.i(f02);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public synchronized void e(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        super.e(renderView);
        Handler D = D();
        if (D != null) {
            D.post(new Runnable() { // from class: ub.l5
                @Override // java.lang.Runnable
                public final void run() {
                    C3063m6.d(C3063m6.this);
                }
            });
        }
    }

    public static final void a(final C3063m6 this$0, GestureDetector$OnGestureListenerC2941ec renderView, Context context) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        final int indexOf = this$0.f24080g.indexOf(renderView);
        ArrayList list = this$0.f24080g;
        Intrinsics.checkNotNullParameter(list, "list");
        if (indexOf < 0 || indexOf >= list.size()) {
            return;
        }
        short b10 = this$0.b(context);
        if (b10 != 0) {
            this$0.g(indexOf);
        }
        this$0.b(indexOf, b10 == 0);
        Handler D = this$0.D();
        if (D != null) {
            D.post(new Runnable() { // from class: ub.g5
                @Override // java.lang.Runnable
                public final void run() {
                    C3063m6.a(C3063m6.this, indexOf);
                }
            });
        }
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.InterfaceC2861a0
    @WorkerThread
    public void a(@NotNull GestureDetector$OnGestureListenerC2941ec renderView, @Nullable Context context) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
            ((A5) interfaceC3269z5).c(e10, "closeCurrentPodAd " + this);
        }
        if (b0()) {
            Integer higher = B().higher(Integer.valueOf(this.f24080g.indexOf(renderView)));
            if (higher != null) {
                a(higher.intValue(), renderView, context);
            } else {
                b();
            }
        }
    }

    @Override // com.inmobi.media.S0
    @UiThread
    public void a(@Nullable F0 f02) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            StringBuilder a10 = H6.a("m6", "TAG", "handleAdScreenDismissed ");
            a10.append((int) Q());
            ((A5) interfaceC3269z5).c("m6", a10.toString());
        }
        if (Q() == 7) {
            int i10 = this.N - 1;
            this.N = i10;
            if (i10 == 1) {
                d((byte) 6);
                InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
                if (interfaceC3269z52 != null) {
                    Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                    ((A5) interfaceC3269z52).d("m6", "AdUnit " + this + " state - RENDERED");
                }
            }
        } else if (Q() == 6 || Q() == 8) {
            this.N--;
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                ((A5) interfaceC3269z53).a("InMobiInterstitial", "Interstitial ad dismissed for placement id: " + I());
            }
            if (f02 != null) {
                f02.b();
                return;
            }
            InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
            if (interfaceC3269z54 != null) {
                ((A5) interfaceC3269z54).c("InMobiInterstitial", "Listener was garbage collected. Unable to give callback");
            }
        }
    }

    @Override // com.inmobi.media.S0
    @UiThread
    public void b(@Nullable F0 f02) {
        if (Q() == 6) {
            int i10 = this.N + 1;
            this.N = i10;
            if (i10 == 1) {
                InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
                if (interfaceC3269z5 != null) {
                    ((A5) interfaceC3269z5).a("InMobiInterstitial", "Successfully displayed Interstitial for placement id: " + I());
                }
                if (f02 != null) {
                    b((byte) 4);
                    d(f02);
                    return;
                }
                return;
            }
            d((byte) 7);
        } else if (Q() == 7) {
            this.N++;
        }
    }

    @Override // com.inmobi.media.S0
    public void a(boolean z10, @NotNull InMobiAdRequestStatus status) {
        String placementType;
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("m6", "TAG");
            ((A5) interfaceC3269z5).c("m6", "onDidParseAfterFetch - parsingResult - " + z10);
        }
        super.a(z10, status);
        if (Q() == 2) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).a("InMobiInterstitial", "Interstitial ad successfully fetched for placement id: " + I());
            }
            if (Intrinsics.areEqual(E(), "inmobiJson") && (placementType = I().m()) != null) {
                EnumC2868a7 enumC2868a7 = Cb.f23540a;
                InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
                Intrinsics.checkNotNullParameter("intNative", "logType");
                Intrinsics.checkNotNullParameter(placementType, "placementType");
                TelemetryConfig.LoggingConfig loggingConfig = Cb.f23543d.getLoggingConfig();
                if (interfaceC3269z53 != null) {
                    EnumC2868a7 logLevel = Cb.a("intNative", placementType, loggingConfig);
                    double b10 = Cb.b("intNative", placementType, loggingConfig);
                    C3253y5 config = new C3253y5(logLevel, b10);
                    Intrinsics.checkNotNullParameter(config, "config");
                    Objects.toString(config);
                    Ab ab2 = ((A5) interfaceC3269z53).f23459a;
                    if (ab2 != null) {
                        Intrinsics.checkNotNullParameter(config, "config");
                        Objects.toString(config);
                        Objects.toString(ab2.f23482i);
                        if (!ab2.f23482i.get()) {
                            C2902c7 c2902c7 = ab2.f23478e;
                            c2902c7.getClass();
                            Intrinsics.checkNotNullParameter(logLevel, "logLevel");
                            c2902c7.f24550a = logLevel;
                            ab2.f23479f.f23986a = b10;
                        }
                    }
                }
            }
            q0();
        }
    }

    public final void b(@Nullable F0 f02, short s10) {
        a(true, s10);
        d((byte) 0);
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.InterfaceC2861a0
    @WorkerThread
    public void b() {
        if (b0()) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                ((A5) interfaceC3269z5).a("m6", "Closing the ad as closeAll is called");
            }
            Handler D = D();
            if (D != null) {
                D.post(new Runnable() { // from class: ub.j5
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3063m6.b(C3063m6.this);
                    }
                });
            }
        }
    }

    public static final void b(C3063m6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f24083j;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("S0", "TAG");
            ((A5) interfaceC3269z5).a("S0", "clearAdPods " + this$0);
        }
        if (this$0.A) {
            this$0.h();
            this$0.f24080g.clear();
            this$0.f24096w = 0;
            this$0.f24097x = 0;
            this$0.f24099z.clear();
        }
        InterfaceC3269z5 interfaceC3269z52 = this$0.f24083j;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).c("InMobiInterstitial", "Interstitial ad dismissed for placement id: " + this$0.I());
        }
        if (this$0.r() != null) {
            F0 r10 = this$0.r();
            if (r10 != null) {
                r10.b();
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = this$0.f24083j;
        if (interfaceC3269z53 != null) {
            ((A5) interfaceC3269z53).c("InMobiInterstitial", "Listener was garbage collected. Unable to give callback");
        }
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.Te
    @UiThread
    public void a(@NotNull C2976h ad2, boolean z10, short s10) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
        if (!z10) {
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, s10);
            return;
        }
        try {
            super.a(ad2, z10, s10);
        } catch (IllegalStateException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
            if (interfaceC3269z5 != null) {
                StringBuilder a10 = H6.a("m6", "TAG", "Exception while onVastProcessCompleted : ");
                a10.append(e10.getMessage());
                ((A5) interfaceC3269z5).b("m6", a10.toString());
            }
        }
        C2976h m10 = m();
        if (m10 == null) {
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 55);
        } else if (m10.G()) {
            b(true);
            V();
        } else {
            a(m10);
        }
    }

    @Override // com.inmobi.media.S0
    @UiThread
    public void a(@NotNull Z placement, boolean z10) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        super.a(placement, z10);
        if (!z10) {
            if (Intrinsics.areEqual(I(), placement)) {
                if (2 == Q() || 4 == Q()) {
                    d((byte) 0);
                    InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
                    if (interfaceC3269z5 != null) {
                        Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                        ((A5) interfaceC3269z5).d("m6", "AdUnit " + this + " state - CREATED");
                    }
                    b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE), false, (short) 0);
                }
            }
        } else if (Intrinsics.areEqual(I(), placement) && 2 == Q()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                ((A5) interfaceC3269z52).a("m6", "Asset are ready now");
            }
            if (a0()) {
                c(true);
                f();
                return;
            }
            r0();
        }
    }

    @Override // com.inmobi.media.S0
    @UiThread
    public void a(@Nullable GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec, short s10) {
        super.a(gestureDetector$OnGestureListenerC2941ec, s10);
        if (b0()) {
            int indexOf = this.f24080g.indexOf(gestureDetector$OnGestureListenerC2941ec);
            boolean z10 = false;
            S0.a(this, indexOf, false, 2, null);
            int size = this.f24080g.size();
            boolean z11 = true;
            boolean z12 = true;
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    z10 = z11;
                    i10 = -1;
                    break;
                }
                if (i10 != indexOf && this.f24080g.get(i10) != null) {
                    if (B().contains(Integer.valueOf(i10))) {
                        break;
                    }
                    z11 = false;
                    z12 = false;
                }
                i10++;
            }
            if (i10 != -1) {
                if (z12 && Q() == 2) {
                    b((byte) 1);
                    i(i10);
                    InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
                    if (interfaceC3269z5 != null) {
                        StringBuilder a10 = H6.a("m6", "TAG", "Providing success based on currIndex ");
                        a10.append(A());
                        a10.append(" as ");
                        a10.append(indexOf);
                        a10.append(" failed");
                        ((A5) interfaceC3269z5).a("m6", a10.toString());
                    }
                    L0();
                }
            } else if (z10 && Q() == 2) {
                InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
                if (interfaceC3269z52 != null) {
                    ((A5) interfaceC3269z52).a("InMobiInterstitial", "Failed to load the Interstitial markup in the WebView for placement id: " + I());
                }
                b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, s10);
            }
        } else if (Q() == 2) {
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                ((A5) interfaceC3269z53).a("InMobiInterstitial", "Failed to load the Interstitial markup in the WebView for placement id: " + I());
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, s10);
        }
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.InterfaceC2861a0
    @WorkerThread
    public void a(int i10, @NotNull final GestureDetector$OnGestureListenerC2941ec renderView, @Nullable final Context context) {
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (!b0()) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                ((A5) interfaceC3269z5).a("m6", "Cannot show an pod ad as isPod is not set.");
            }
        } else if (B().contains(Integer.valueOf(i10)) && i10 > this.f24080g.indexOf(renderView) && i10 < this.f24080g.size() && this.f24080g.get(i10) != null && ((gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) this.f24080g.get(i10)) == null || gestureDetector$OnGestureListenerC2941ec.f24711x0)) {
            if (context == null) {
                context = t();
            }
            super.a(i10, renderView, context);
            Handler D = D();
            if (D != null) {
                D.post(new Runnable() { // from class: ub.i5
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3063m6.a(C3063m6.this, renderView, context);
                    }
                });
            }
        } else {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                ((A5) interfaceC3269z52).a("m6", "Cannot show an pod ad with invalid index passed");
            }
            b(this.f24080g.indexOf(renderView), false);
        }
    }

    public static final void a(C3063m6 this$0, int i10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(i10, false);
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.InterfaceC2861a0
    @WorkerThread
    public boolean a(@NotNull GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (b0()) {
            return B().higher(Integer.valueOf(this.f24080g.indexOf(renderView))) != null;
        }
        return false;
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.InterfaceC2943ee
    public void a(byte b10) {
        if (b10 == 1) {
            if (b0()) {
                if (Q() == 2) {
                    if (B().isEmpty()) {
                        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
                        if (interfaceC3269z5 != null) {
                            Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                            ((A5) interfaceC3269z5).b("m6", "RenderView time out, none of the ad provided success");
                        }
                        h();
                        b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2139);
                        return;
                    }
                    b((byte) 1);
                    InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
                    if (interfaceC3269z52 != null) {
                        StringBuilder a10 = H6.a("m6", "TAG", "RenderView time out, providing success based on ");
                        a10.append(B().first());
                        ((A5) interfaceC3269z52).a("m6", a10.toString());
                    }
                    Integer first = B().first();
                    Intrinsics.checkNotNullExpressionValue(first, "first(...)");
                    i(first.intValue());
                    L0();
                    int size = this.f24080g.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        if (!B().contains(Integer.valueOf(i10))) {
                            S0.a(this, i10, false, 2, null);
                        }
                    }
                    return;
                }
                h();
                return;
            }
            super.a(b10);
            return;
        }
        super.a(b10);
    }

    @Override // com.inmobi.media.S0, com.inmobi.media.AbstractC2973gc
    public void a(@NotNull GestureDetector$OnGestureListenerC2941ec renderView, boolean z10) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        super.a(renderView, z10);
        byte Q = Q();
        if (Q == 4) {
            this.Q = new C3015j6(this, z10 ? (short) 2220 : (short) 2219);
        } else if (Q != 6) {
            if (Q == 7) {
                short s10 = z10 ? (short) 2224 : (short) 2223;
                AbstractC2984h7.a((byte) 2, "InMobiInterstitial", "RenderProcess of the WebView has crashed. Please create another adUnit");
                InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
                if (interfaceC3269z5 != null) {
                    Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                    ((A5) interfaceC3269z5).b("m6", "RenderProcess of the WebView has crashed. Please create another adUnit");
                }
                renderView.a(z10, s10);
                Activity fullScreenActivity = renderView.getFullScreenActivity();
                if (fullScreenActivity != null) {
                    InterfaceC3269z5 interfaceC3269z52 = renderView.f24680i;
                    if (interfaceC3269z52 != null) {
                        String TAG = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((A5) interfaceC3269z52).c(TAG, "fullScreenActivity is not null and finishing");
                    }
                    fullScreenActivity.finish();
                }
                a(r());
            }
        } else {
            short s11 = z10 ? (short) 2222 : (short) 2221;
            AbstractC2984h7.a((byte) 2, "InMobiInterstitial", "RenderProcess of the WebView has crashed. Please create another adUnit");
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                Intrinsics.checkNotNullExpressionValue("m6", "TAG");
                ((A5) interfaceC3269z53).b("m6", "RenderProcess of the WebView has crashed. Please create another adUnit");
            }
            Activity fullScreenActivity2 = renderView.getFullScreenActivity();
            if (fullScreenActivity2 != null) {
                InterfaceC3269z5 interfaceC3269z54 = renderView.f24680i;
                if (interfaceC3269z54 != null) {
                    String TAG2 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) interfaceC3269z54).c(TAG2, "fullScreenActivity is not null and finishing");
                }
                fullScreenActivity2.finish();
            }
            if (this.N == 0) {
                a(true, s11);
                return;
            }
            renderView.a(z10, s11);
            a(r());
        }
    }
}
