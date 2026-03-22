package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.Window;
import com.inmobi.adquality.models.AdQualityControl;
import com.inmobi.adquality.models.AdQualityResult;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.C3089o0;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.o0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3089o0 {

    /* renamed from: a  reason: collision with root package name */
    public final AdConfig.AdQualityConfig f25073a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC3269z5 f25074b;

    /* renamed from: c  reason: collision with root package name */
    public final AtomicBoolean f25075c;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicBoolean f25076d;

    /* renamed from: e  reason: collision with root package name */
    public final AtomicBoolean f25077e;

    /* renamed from: f  reason: collision with root package name */
    public final CopyOnWriteArrayList f25078f;

    /* renamed from: g  reason: collision with root package name */
    public AdQualityControl f25079g;

    /* renamed from: h  reason: collision with root package name */
    public EnumC2927df f25080h;

    /* renamed from: i  reason: collision with root package name */
    public AdQualityResult f25081i;

    /* renamed from: j  reason: collision with root package name */
    public String f25082j;

    /* renamed from: k  reason: collision with root package name */
    public JSONObject f25083k;

    /* renamed from: l  reason: collision with root package name */
    public final AtomicBoolean f25084l;

    public C3089o0(AdConfig.AdQualityConfig adQualityConfig, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(adQualityConfig, "adQualityConfig");
        this.f25073a = adQualityConfig;
        this.f25074b = interfaceC3269z5;
        this.f25075c = new AtomicBoolean(false);
        this.f25076d = new AtomicBoolean(false);
        this.f25077e = new AtomicBoolean(false);
        this.f25078f = new CopyOnWriteArrayList();
        this.f25080h = EnumC2927df.f24611a;
        this.f25082j = "";
        this.f25083k = new JSONObject();
        this.f25084l = new AtomicBoolean(false);
    }

    public final boolean a() {
        if (this.f25075c.get()) {
            a("ad quality session is already in progress. skipping...");
            return false;
        } else if (!this.f25073a.getEnabled()) {
            a("config kill switch - false. ad quality will skip");
            return false;
        } else if (this.f25079g == null) {
            a("setup not done. skipping");
            return false;
        } else {
            EnumC2927df enumC2927df = this.f25080h;
            if (enumC2927df == EnumC2927df.f24611a || enumC2927df == EnumC2927df.f24612b) {
                a("ad view is not visible. skipping");
                return false;
            }
            return true;
        }
    }

    public final void a(AdQualityResult adQualityResult, boolean z10) {
        if (adQualityResult.getBeaconUrl().length() == 0) {
            a("beacon is empty");
            return;
        }
        C3211vb process = new C3211vb(adQualityResult);
        C2993i0 c2993i0 = new C2993i0(this, z10);
        C3009j0 shouldProcess = C3009j0.f24880a;
        Intrinsics.checkNotNullParameter(process, "process");
        Intrinsics.checkNotNullParameter(shouldProcess, "shouldProcess");
        ScheduledExecutorService scheduledExecutorService = C2945f0.f24716a;
        C2945f0.a(0L, new C2911d(shouldProcess, process, c2993i0));
    }

    public final void a(final GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec, final long j10, final boolean z10, final Jb jb2) {
        a("isCapture started - " + this.f25084l.get() + ", isReporting - " + z10);
        if (this.f25084l.get() && !z10) {
            a((Exception) null, "Screenshot process already in progress... skipping...");
        } else {
            gestureDetector$OnGestureListenerC2941ec.post(new Runnable() { // from class: ub.m5
                @Override // java.lang.Runnable
                public final void run() {
                    C3089o0.a(C3089o0.this, gestureDetector$OnGestureListenerC2941ec, j10, z10, jb2);
                }
            });
        }
    }

    public static final void a(C3089o0 this$0, View adView, long j10, boolean z10, Jb jb2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adView, "$adView");
        Intrinsics.checkNotNullParameter("AdQualityManager", ITTVideoEngineEventSource.KEY_TAG);
        Intrinsics.checkNotNullParameter("starting capture - draw", "message");
        Log.i("AdQualityManager", "starting capture - draw");
        this$0.getClass();
        Intrinsics.checkNotNullParameter(adView, "adView");
        Qc process = new Qc(adView, this$0.f25073a);
        if (!z10) {
            this$0.f25078f.add(process);
        }
        C3057m0 c3057m0 = new C3057m0(this$0, process, z10, jb2);
        C3073n0 shouldProcess = new C3073n0(this$0);
        Intrinsics.checkNotNullParameter(process, "process");
        Intrinsics.checkNotNullParameter(shouldProcess, "shouldProcess");
        ScheduledExecutorService scheduledExecutorService = C2945f0.f24716a;
        C2945f0.a(j10, new C2911d(shouldProcess, process, c3057m0));
        this$0.f25084l.set(!z10);
    }

    public final void a(final Activity activity, final long j10, final boolean z10, final Jb jb2) {
        a("isCapture started - " + this.f25084l.get() + ", isReporting - " + z10);
        if (this.f25084l.get() && !z10) {
            a((Exception) null, "Screenshot process already in progress... skipping...");
        } else {
            activity.getWindow().getDecorView().post(new Runnable() { // from class: ub.n5
                @Override // java.lang.Runnable
                public final void run() {
                    C3089o0.a(C3089o0.this, activity, j10, z10, jb2);
                }
            });
        }
    }

    public static final void a(C3089o0 this$0, Activity activity, long j10, boolean z10, Jb jb2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(activity, "$activity");
        this$0.a("activity is visible");
        Window window = activity.getWindow();
        Intrinsics.checkNotNullExpressionValue(window, "getWindow(...)");
        Intrinsics.checkNotNullParameter(window, "window");
        Qa process = new Qa(window, this$0.f25073a);
        if (!z10) {
            this$0.f25078f.add(process);
        }
        C3057m0 c3057m0 = new C3057m0(this$0, process, z10, jb2);
        C3073n0 shouldProcess = new C3073n0(this$0);
        Intrinsics.checkNotNullParameter(process, "process");
        Intrinsics.checkNotNullParameter(shouldProcess, "shouldProcess");
        ScheduledExecutorService scheduledExecutorService = C2945f0.f24716a;
        C2945f0.a(j10, new C2911d(shouldProcess, process, c3057m0));
        this$0.f25084l.set(!z10);
    }

    public final void a(String str, byte[] bArr, boolean z10) {
        Context d10 = Uc.d();
        if (d10 != null) {
            Dd process = new Dd(d10.getFilesDir().getAbsolutePath() + "/adQuality/screenshots", bArr);
            if (!z10) {
                this.f25078f.add(process);
            }
            C3025k0 c3025k0 = new C3025k0(this, z10, process, str);
            C3041l0 shouldProcess = C3041l0.f24942a;
            Intrinsics.checkNotNullParameter(process, "process");
            Intrinsics.checkNotNullParameter(shouldProcess, "shouldProcess");
            ScheduledExecutorService scheduledExecutorService = C2945f0.f24716a;
            C2945f0.a(0L, new C2911d(shouldProcess, process, c3025k0));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0097  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(boolean r13) {
        /*
            r12 = this;
            java.lang.String r0 = "AdQualityManager"
            java.lang.String r1 = "tag"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            java.lang.String r2 = "checking for trigger"
            java.lang.String r3 = "message"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r3)
            android.util.Log.i(r0, r2)
            com.inmobi.adquality.models.AdQualityControl r2 = r12.f25079g
            if (r2 == 0) goto Le2
            java.lang.String r7 = r2.getBeacon()
            if (r7 == 0) goto Le2
            java.util.concurrent.CopyOnWriteArrayList r2 = r12.f25078f
            boolean r2 = r2.isEmpty()
            r11 = 1
            if (r2 == 0) goto L53
            java.util.concurrent.atomic.AtomicBoolean r2 = r12.f25076d
            boolean r2 = r2.get()
            if (r2 == 0) goto L53
            java.util.concurrent.atomic.AtomicBoolean r2 = r12.f25077e
            boolean r2 = r2.get()
            if (r2 != 0) goto L53
            java.util.concurrent.atomic.AtomicBoolean r13 = r12.f25077e
            r13.set(r11)
            java.lang.String r13 = "session end - queuing result"
            r12.a(r13)
            com.inmobi.adquality.models.AdQualityResult r13 = r12.f25081i
            if (r13 != 0) goto L4f
            com.inmobi.adquality.models.AdQualityResult r13 = new com.inmobi.adquality.models.AdQualityResult
            r9 = 8
            r10 = 0
            java.lang.String r5 = "null"
            r6 = 0
            r8 = 0
            r4 = r13
            r4.<init>(r5, r6, r7, r8, r9, r10)
        L4f:
            r12.a(r13, r11)
            return
        L53:
            java.util.concurrent.atomic.AtomicBoolean r2 = r12.f25076d
            boolean r2 = r2.get()
            if (r2 == 0) goto La8
            if (r13 != 0) goto La8
            java.util.concurrent.atomic.AtomicBoolean r13 = r12.f25077e
            boolean r13 = r13.get()
            if (r13 != 0) goto La8
            java.util.concurrent.atomic.AtomicBoolean r13 = r12.f25077e
            r13.set(r11)
            java.lang.String r13 = "session stop - queuing result"
            r12.a(r13)
            java.util.concurrent.ScheduledExecutorService r13 = com.inmobi.media.C2945f0.f24716a
            if (r13 == 0) goto L93
            r13.shutdown()
            r13.shutdownNow()     // Catch: java.lang.InterruptedException -> L7a
            goto L93
        L7a:
            r13.shutdownNow()     // Catch: java.lang.Exception -> L7e
            goto L8c
        L7e:
            r13 = move-exception
            java.lang.String r0 = "AdQualityComponent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            java.lang.String r1 = "shutdown fail"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r3)
            android.util.Log.e(r0, r1, r13)
        L8c:
            java.lang.Thread r13 = java.lang.Thread.currentThread()
            r13.interrupt()
        L93:
            com.inmobi.adquality.models.AdQualityResult r13 = r12.f25081i
            if (r13 != 0) goto La4
            com.inmobi.adquality.models.AdQualityResult r13 = new com.inmobi.adquality.models.AdQualityResult
            r9 = 8
            r10 = 0
            java.lang.String r5 = "null"
            r6 = 0
            r8 = 0
            r4 = r13
            r4.<init>(r5, r6, r7, r8, r9, r10)
        La4:
            r12.a(r13, r11)
            return
        La8:
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            java.lang.String r2 = "list size - "
            r13.<init>(r2)
            java.util.concurrent.CopyOnWriteArrayList r2 = r12.f25078f
            int r2 = r2.size()
            r13.append(r2)
            java.lang.String r2 = " session end triggered - "
            r13.append(r2)
            java.util.concurrent.atomic.AtomicBoolean r2 = r12.f25076d
            boolean r2 = r2.get()
            r13.append(r2)
            java.lang.String r2 = " queue triggered - "
            r13.append(r2)
            java.util.concurrent.atomic.AtomicBoolean r2 = r12.f25077e
            r13.append(r2)
            java.lang.String r2 = " waiting"
            r13.append(r2)
            java.lang.String r13 = r13.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r3)
            android.util.Log.i(r0, r13)
        Le2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3089o0.a(boolean):void");
    }

    public final void a(String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25074b;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("AdQualityManager", str);
        }
    }

    public final void a(Exception exc, String str) {
        Unit unit;
        if (exc != null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25074b;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).a("AdQualityManager", str, exc);
                unit = Unit.f60915a;
            } else {
                unit = null;
            }
            if (unit != null) {
                return;
            }
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f25074b;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).b("AdQualityManager", AbstractC2977h0.a("Error with null exception : ", str));
            Unit unit2 = Unit.f60915a;
        }
    }
}
