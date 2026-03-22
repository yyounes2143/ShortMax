package com.inmobi.media;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.TelemetryConfig;
import com.inmobi.media.T7;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
/* loaded from: classes5.dex */
public class T7 implements InterfaceC3231x, Application.ActivityLifecycleCallbacks {
    public boolean A;
    public int B;
    public T7 C;
    public boolean D;
    public C2920d8 E;
    public String F;
    public Intent G;
    public GestureDetector$OnGestureListenerC2941ec H;
    public GestureDetector$OnGestureListenerC2941ec I;
    public T7 J;
    public byte K;
    public S7 L;
    public final A M;
    public final P7 N;
    public final L7 O;
    public final Q7 P;
    public final K7 Q;
    public LinkedHashMap R;
    public final String S;
    public final O7 T;

    /* renamed from: a  reason: collision with root package name */
    public final byte f24176a;

    /* renamed from: b  reason: collision with root package name */
    public final C3113p8 f24177b;

    /* renamed from: c  reason: collision with root package name */
    public final String f24178c;

    /* renamed from: d  reason: collision with root package name */
    public final Set f24179d;

    /* renamed from: e  reason: collision with root package name */
    public final long f24180e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f24181f;

    /* renamed from: g  reason: collision with root package name */
    public final String f24182g;

    /* renamed from: h  reason: collision with root package name */
    public final C2932e3 f24183h;

    /* renamed from: i  reason: collision with root package name */
    public final S6 f24184i;

    /* renamed from: j  reason: collision with root package name */
    public final InterfaceC3269z5 f24185j;

    /* renamed from: k  reason: collision with root package name */
    public final ms.i f24186k;

    /* renamed from: l  reason: collision with root package name */
    public final R7 f24187l;

    /* renamed from: m  reason: collision with root package name */
    public final String f24188m;

    /* renamed from: n  reason: collision with root package name */
    public final HashSet f24189n;

    /* renamed from: o  reason: collision with root package name */
    public final ArrayList f24190o;

    /* renamed from: p  reason: collision with root package name */
    public We f24191p;

    /* renamed from: q  reason: collision with root package name */
    public D8 f24192q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f24193r;

    /* renamed from: s  reason: collision with root package name */
    public final AdConfig f24194s;

    /* renamed from: t  reason: collision with root package name */
    public boolean f24195t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f24196u;

    /* renamed from: v  reason: collision with root package name */
    public T7 f24197v;

    /* renamed from: w  reason: collision with root package name */
    public P0 f24198w;

    /* renamed from: x  reason: collision with root package name */
    public WeakReference f24199x;

    /* renamed from: y  reason: collision with root package name */
    public int f24200y;

    /* renamed from: z  reason: collision with root package name */
    public WeakReference f24201z;

    public T7(Context context, byte b10, C3113p8 mNativeDataModel, String impressionId, Set set, AdConfig adConfig, long j10, boolean z10, String creativeId, C2932e3 c2932e3, S6 s62, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mNativeDataModel, "mNativeDataModel");
        Intrinsics.checkNotNullParameter(impressionId, "impressionId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(creativeId, "creativeId");
        this.f24176a = b10;
        this.f24177b = mNativeDataModel;
        this.f24178c = impressionId;
        this.f24179d = set;
        this.f24180e = j10;
        this.f24181f = z10;
        this.f24182g = creativeId;
        this.f24183h = c2932e3;
        this.f24184i = s62;
        this.f24185j = interfaceC3269z5;
        this.f24186k = kotlin.c.b(N7.f23884a);
        this.f24187l = new R7(this);
        this.f24188m = T7.class.getSimpleName();
        this.f24189n = new HashSet();
        this.f24190o = new ArrayList();
        this.f24194s = adConfig;
        this.f24197v = this;
        this.f24199x = new WeakReference(null);
        this.f24200y = -1;
        this.N = new P7(this);
        this.O = new L7(this);
        this.P = new Q7(this);
        this.Q = new K7(this);
        this.f24199x = new WeakReference(context);
        Uc.a(context, this);
        C2985h8 c2985h8 = mNativeDataModel.f25138e;
        if (c2985h8 != null) {
            c2985h8.f24811y = System.currentTimeMillis();
        }
        this.K = (byte) -1;
        this.M = A.f23444a;
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: ub.f2
            @Override // java.lang.Runnable
            public final void run() {
                T7.a(T7.this);
            }
        });
        this.S = "native";
        this.T = new O7(this);
    }

    public final C2920d8 a(C3113p8 c3113p8, C2920d8 asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        if (c3113p8 == null) {
            return null;
        }
        String str = asset.f24585h;
        if (str.length() == 0) {
            asset.f24588k = (byte) 0;
            return asset;
        }
        String[] strArr = (String[]) new Regex("\\|").q(str, 0).toArray(new String[0]);
        if (strArr.length == 1) {
            asset.f24588k = a(strArr[0]);
            return asset;
        }
        C2920d8 m10 = c3113p8.m(strArr[0]);
        if (m10 == null) {
            return a(c3113p8.f25140g, asset);
        }
        if (Intrinsics.areEqual(m10, asset)) {
            return null;
        }
        m10.f24588k = a(strArr[1]);
        InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
        if (interfaceC3269z5 != null) {
            String str2 = this.f24188m;
            StringBuilder a10 = H6.a(str2, "TAG", "Referenced asset (");
            a10.append(m10.f24579b);
            a10.append(')');
            ((A5) interfaceC3269z5).a(str2, a10.toString());
        }
        return m10;
    }

    public final C2920d8 b(C3113p8 c3113p8, C2920d8 c2920d8) {
        InterfaceC3269z5 interfaceC3269z5;
        if (c3113p8 == null) {
            return null;
        }
        String str = c2920d8.f24593p;
        String str2 = c2920d8.f24594q;
        C2920d8 a10 = a(c2920d8, c3113p8, str);
        if (a10 == null) {
            a10 = a(c2920d8, c3113p8, str2);
        }
        if (a10 != null && (interfaceC3269z5 = this.f24185j) != null) {
            String str3 = this.f24188m;
            StringBuilder a11 = H6.a(str3, "TAG", "Referenced asset (");
            a11.append(a10.f24579b);
            a11.append(')');
            ((A5) interfaceC3269z5).a(str3, a11.toString());
        }
        return a10;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public final boolean c() {
        return this.f24195t;
    }

    public final Context d() {
        Activity f10 = f();
        return f10 != null ? f10 : (Context) this.f24199x.get();
    }

    public final Activity f() {
        WeakReference weakReference = this.f24201z;
        if (weakReference != null) {
            return (Activity) weakReference.get();
        }
        return null;
    }

    public final View g() {
        We we2 = this.f24191p;
        if (we2 != null) {
            return we2.b();
        }
        return null;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public final AdConfig getAdConfig() {
        return this.f24194s;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public final String getAdType() {
        return this.S;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public String getCreativeId() {
        return this.f24182g;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public final Object getDataModel() {
        return this.f24177b;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public InterfaceC3215w getFullScreenEventsListener() {
        return this.N;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public String getImpressionId() {
        return this.f24178c;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public final String getMarkupType() {
        return "inmobiJson";
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public final byte getPlacementType() {
        return this.f24176a;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public View getVideoContainerView() {
        return null;
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public Xe getViewableAd() {
        C2971ga c2971ga;
        We c3051la;
        Context j10 = j();
        if (this.f24191p == null && j10 != null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
            if (interfaceC3269z5 != null) {
                String TAG = this.f24188m;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).c(TAG, "fireLoadedAndServedBeacons");
            }
            C2985h8 c2985h8 = this.f24177b.f25138e;
            if (c2985h8 != null) {
                HashMap a10 = a(c2985h8);
                a((byte) 1, a10);
                a((byte) 2, a10);
            }
            this.f24191p = new M5(j10, this, new C2893bf(this, this.H, this.f24185j), this.f24185j);
            Set<C3135qe> set = this.f24179d;
            if (set != null) {
                for (C3135qe c3135qe : set) {
                    try {
                        if (c3135qe.f25216a == 3) {
                            InterfaceC3269z5 interfaceC3269z52 = this.f24185j;
                            if (interfaceC3269z52 != null) {
                                String TAG2 = this.f24188m;
                                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                                ((A5) interfaceC3269z52).a(TAG2, "OMID tracker");
                            }
                            Object obj = c3135qe.f25217b.get("omidAdSession");
                            if (obj instanceof C2971ga) {
                                c2971ga = (C2971ga) obj;
                            } else {
                                c2971ga = null;
                            }
                            We we2 = this.f24191p;
                            if (c2971ga != null && we2 != null) {
                                if (this.K == 0) {
                                    c3051la = new C3035ka(this, we2, c2971ga, this.f24185j);
                                } else {
                                    c3051la = new C3051la(this, we2, c2971ga, this.f24185j);
                                }
                                this.f24191p = c3051la;
                            } else {
                                InterfaceC3269z5 interfaceC3269z53 = this.f24185j;
                                if (interfaceC3269z53 != null) {
                                    String TAG3 = this.f24188m;
                                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                                    ((A5) interfaceC3269z53).b(TAG3, "Did not find a OMID ad session; the OMID decorator will not be applied.");
                                }
                            }
                        }
                    } catch (Exception e10) {
                        InterfaceC3269z5 interfaceC3269z54 = this.f24185j;
                        if (interfaceC3269z54 != null) {
                            String str = this.f24188m;
                            ((A5) interfaceC3269z54).b(str, rf.a(e10, H6.a(str, "TAG", "Exception occurred while creating the Display viewable ad : ")));
                        }
                        S5 s52 = S5.f24132a;
                        S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
                    }
                }
            }
        }
        return this.f24191p;
    }

    public final D8 h() {
        C3240x8 c3240x8;
        We we2 = this.f24191p;
        C3240x8 c3240x82 = null;
        if (we2 != null) {
            c3240x8 = we2.c();
        } else {
            c3240x8 = null;
        }
        if (c3240x8 != null) {
            c3240x82 = c3240x8;
        }
        if (c3240x82 != null) {
            this.f24192q = c3240x82.f25432e;
        }
        return this.f24192q;
    }

    public ef i() {
        return this.T;
    }

    public final Context j() {
        if (1 != this.f24176a && !k()) {
            return (Context) this.f24199x.get();
        }
        return f();
    }

    public boolean k() {
        if (this.f24176a == 0 && f() != null) {
            return true;
        }
        return false;
    }

    public void l() {
        We we2;
        C2879b1 c2879b1;
        InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onPause");
        }
        this.f24196u = true;
        T8 a10 = a(g());
        if (a10 != null) {
            a10.b();
        }
        D8 h10 = h();
        if (h10 != null && (c2879b1 = h10.f23581l) != null) {
            c2879b1.a();
        }
        Context d10 = d();
        if (d10 != null && (we2 = this.f24191p) != null) {
            we2.a(d10, (byte) 1);
        }
    }

    public final void m() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "reportFirstPageRendered");
        }
        C2985h8 b10 = this.f24177b.b(0);
        if (!this.f24189n.contains(0) && b10 != null && !this.f24195t) {
            this.f24189n.add(0);
            b10.f24811y = System.currentTimeMillis();
            if (this.f24193r) {
                HashMap a10 = a(b10);
                InterfaceC3269z5 interfaceC3269z52 = this.f24185j;
                if (interfaceC3269z52 != null) {
                    String TAG2 = this.f24188m;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) interfaceC3269z52).a(TAG2, "Page-view impression record request");
                }
                b10.a("page_view", a10, (L7) null, this.f24185j);
                return;
            }
            this.f24190o.add(b10);
        }
    }

    public boolean n() {
        return false;
    }

    public final void o() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: ub.g2
            @Override // java.lang.Runnable
            public final void run() {
                T7.d(T7.this);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onActivityDestroyed");
        }
        We we2 = this.f24191p;
        if (we2 != null) {
            we2.a(activity, (byte) 2);
        }
        C2932e3 c2932e3 = this.f24183h;
        if (c2932e3 != null) {
            c2932e3.b();
        }
        Context context = (Context) this.f24199x.get();
        if (context instanceof Activity) {
            ((Activity) context).getApplication().unregisterActivityLifecycleCallbacks(this);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        We we2;
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (Intrinsics.areEqual(d(), activity)) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
            if (interfaceC3269z5 != null) {
                String TAG = this.f24188m;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).c(TAG, "onResume");
            }
            this.f24196u = false;
            T8 a10 = a(g());
            if (a10 != null) {
                a10.c();
            }
            p();
            Context d10 = d();
            if (d10 != null && (we2 = this.f24191p) != null) {
                we2.a(d10, (byte) 0);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (Intrinsics.areEqual(d(), activity)) {
            l();
        }
    }

    public final void p() {
        C2879b1 c2879b1;
        D8 h10 = h();
        if (h10 != null && (c2879b1 = h10.f23581l) != null && !c2879b1.f24516c) {
            c2879b1.f24516c = true;
            c2879b1.a(c2879b1.f24515b);
        }
    }

    public final void q() {
        P0 p02;
        InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "unlockRewards");
        }
        if (n()) {
            this.A = true;
            HashMap rewards = this.f24177b.f25141h;
            if (rewards != null && (p02 = this.f24198w) != null) {
                Intrinsics.checkNotNullParameter(rewards, "rewards");
                InterfaceC3269z5 interfaceC3269z52 = p02.f23966a.f24083j;
                if (interfaceC3269z52 != null) {
                    String e10 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
                    ((A5) interfaceC3269z52).a(e10, "onAdRewardsUnlocked");
                }
                if (!p02.f23966a.Z()) {
                    F0 f02 = (F0) p02.f23967b.get();
                    if (f02 != null) {
                        f02.b(new HashMap(rewards));
                        return;
                    }
                    InterfaceC3269z5 interfaceC3269z53 = p02.f23966a.f24083j;
                    if (interfaceC3269z53 != null) {
                        ((A5) interfaceC3269z53).b("InMobi", "Listener was garbage collected.Unable to give callback");
                    }
                }
            }
        }
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public final void setFullScreenActivityContext(Activity activity) {
        this.f24201z = new WeakReference(activity);
    }

    public static final void d(T7 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.A = true;
        this$0.b((C2920d8) null);
    }

    public void c(C2920d8 asset) {
        T8 a10;
        ValueAnimator valueAnimator;
        Intrinsics.checkNotNullParameter(asset, "asset");
        InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "triggerAssetAction");
        }
        byte b10 = asset.f24588k;
        if (b10 == 0 || b10 == 5) {
            return;
        }
        if (b10 == 2) {
            this.A = true;
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.H;
            if (gestureDetector$OnGestureListenerC2941ec != null) {
                InterfaceC3269z5 interfaceC3269z52 = gestureDetector$OnGestureListenerC2941ec.f24680i;
                if (interfaceC3269z52 != null) {
                    String TAG2 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) interfaceC3269z52).a(TAG2, "skipToInterActive");
                }
                gestureDetector$OnGestureListenerC2941ec.c("window.imraid.broadcastEvent('skip');");
            }
            T8 a11 = a(g());
            if (a11 != null) {
                a11.b();
            }
            b(asset);
            C2932e3 c2932e3 = this.f24183h;
            if (c2932e3 == null || c2932e3.f24628g.get()) {
                return;
            }
            c2932e3.f24625d.f24850h = 1;
            Intrinsics.checkNotNull(c2932e3.f24624c);
        } else if (b10 == 3) {
            try {
                GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = this.H;
                if (gestureDetector$OnGestureListenerC2941ec2 != null) {
                    InterfaceC3269z5 interfaceC3269z53 = gestureDetector$OnGestureListenerC2941ec2.f24680i;
                    if (interfaceC3269z53 != null) {
                        String TAG3 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                        Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                        ((A5) interfaceC3269z53).a(TAG3, "replayToInterActive");
                    }
                    gestureDetector$OnGestureListenerC2941ec2.c("window.imraid.broadcastEvent('replay');");
                }
                View g10 = g();
                if (g10 != null) {
                    ViewParent parent = g10.getParent();
                    ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    if (viewGroup != null) {
                        viewGroup.removeView(g10);
                    }
                }
                T7 t72 = this.f24197v;
                T7 t73 = t72 != null ? t72 : null;
                if (t73 != null && (a10 = a(t73.g())) != null && (valueAnimator = a10.f24215n) != null && valueAnimator.isRunning()) {
                    valueAnimator.setCurrentPlayTime(a10.f24207f * 1000);
                    a10.f24213l = 360 * 1.0f;
                    a10.invalidate();
                }
                if (!Intrinsics.areEqual("VIDEO", asset.f24580c)) {
                    InterfaceC3269z5 interfaceC3269z54 = this.f24185j;
                    if (interfaceC3269z54 != null) {
                        String TAG4 = this.f24188m;
                        Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                        ((A5) interfaceC3269z54).b(TAG4, "Action 3 not valid for asset of type: " + asset.f24580c);
                    }
                } else if (t72 instanceof C2870a9) {
                    View videoContainerView = ((C2870a9) t72).getVideoContainerView();
                    C3066m9 c3066m9 = videoContainerView instanceof C3066m9 ? (C3066m9) videoContainerView : null;
                    if (c3066m9 != null) {
                        C3050l9 videoView = c3066m9.getVideoView();
                        Object tag = videoView.getTag();
                        C2904c9 c2904c9 = tag instanceof C2904c9 ? (C2904c9) tag : null;
                        if (c2904c9 != null) {
                            if (c2904c9.c()) {
                                videoView.k();
                            } else {
                                videoView.c();
                            }
                        } else if (1 == this.f24176a) {
                            videoView.k();
                        } else {
                            videoView.c();
                        }
                        if (c2904c9 != null) {
                            a(c2904c9);
                        }
                        videoView.start();
                    }
                }
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z55 = this.f24185j;
                if (interfaceC3269z55 != null) {
                    String str = this.f24188m;
                    ((A5) interfaceC3269z55).b(str, rf.a(e10, H6.a(str, "TAG", "Encountered unexpected error in handling replay action on video: ")));
                }
                AbstractC2984h7.a((byte) 2, "InMobi", "SDK encountered unexpected error in replaying video");
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            }
        } else if (b10 == 1) {
            try {
                GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec3 = this.H;
                if (gestureDetector$OnGestureListenerC2941ec3 != null) {
                    InterfaceC3269z5 interfaceC3269z56 = gestureDetector$OnGestureListenerC2941ec3.f24680i;
                    if (interfaceC3269z56 != null) {
                        String TAG5 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                        Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                        ((A5) interfaceC3269z56).a(TAG5, "closeToInterActive");
                    }
                    gestureDetector$OnGestureListenerC2941ec3.c("window.imraid.broadcastEvent('close');");
                }
                a();
            } catch (Exception e11) {
                InterfaceC3269z5 interfaceC3269z57 = this.f24185j;
                if (interfaceC3269z57 != null) {
                    String str2 = this.f24188m;
                    ((A5) interfaceC3269z57).b(str2, rf.a(e11, H6.a(str2, "TAG", "Encountered unexpected error in handling exit action on video: ")));
                }
                AbstractC2984h7.a((byte) 2, "InMobi", "SDK encountered unexpected error in exiting video");
                S5 s53 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e11, NotificationCompat.CATEGORY_EVENT));
            }
        } else if (b10 == 4) {
            try {
                if (this.f24176a == 0) {
                    InterfaceC3269z5 interfaceC3269z58 = this.f24185j;
                    if (interfaceC3269z58 != null) {
                        String TAG6 = this.f24188m;
                        Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
                        ((A5) interfaceC3269z58).c(TAG6, "launchFullscreen");
                    }
                    T7 c10 = c(this);
                    if (c10 == null) {
                        return;
                    }
                    P0 p02 = c10.f24198w;
                    if (p02 != null) {
                        p02.e();
                    }
                    A a12 = this.M;
                    int hashCode = hashCode();
                    M7 m72 = new M7(this, c10);
                    a12.getClass();
                    A.a(hashCode, m72);
                }
            } catch (Exception e12) {
                InterfaceC3269z5 interfaceC3269z59 = this.f24185j;
                if (interfaceC3269z59 != null) {
                    String str3 = this.f24188m;
                    ((A5) interfaceC3269z59).b(str3, rf.a(e12, H6.a(str3, "TAG", "Encountered unexpected error in handling fullscreen action ")));
                }
                AbstractC2984h7.a((byte) 2, "InMobi", "SDK encountered unexpected error in launching fullscreen ad");
                S5 s54 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e12, NotificationCompat.CATEGORY_EVENT));
            }
        } else {
            this.A = true;
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec4 = this.H;
            if (gestureDetector$OnGestureListenerC2941ec4 != null) {
                InterfaceC3269z5 interfaceC3269z510 = gestureDetector$OnGestureListenerC2941ec4.f24680i;
                if (interfaceC3269z510 != null) {
                    String TAG7 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                    Intrinsics.checkNotNullExpressionValue(TAG7, "TAG");
                    ((A5) interfaceC3269z510).a(TAG7, "skipToInterActive");
                }
                gestureDetector$OnGestureListenerC2941ec4.c("window.imraid.broadcastEvent('skip');");
            }
            T8 a13 = a(g());
            if (a13 != null) {
                a13.b();
            }
            b(asset);
        }
    }

    public void b(View view) {
        P0 p02;
        if (this.f24193r || this.f24195t) {
            return;
        }
        this.f24193r = true;
        C2932e3 c2932e3 = this.f24183h;
        if (c2932e3 != null) {
            c2932e3.a();
        }
        InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "A viewable impression is reported on ad view.");
        }
        C2985h8 c2985h8 = this.f24177b.f25138e;
        if (c2985h8 != null) {
            c2985h8.a("Impression", a(c2985h8), this.O, this.f24185j);
        }
        m();
        Iterator it = this.f24190o.iterator();
        while (it.hasNext()) {
            C2920d8 c2920d8 = (C2920d8) it.next();
            HashMap a10 = a(c2920d8);
            InterfaceC3269z5 interfaceC3269z52 = this.f24185j;
            if (interfaceC3269z52 != null) {
                String TAG2 = this.f24188m;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).a(TAG2, "Page-view impression record request");
            }
            c2920d8.a("page_view", a10, (L7) null, this.f24185j);
        }
        this.f24190o.clear();
        We we2 = this.f24191p;
        if (we2 != null) {
            we2.a((byte) 0);
        }
        T7 c10 = c(this);
        if (c10 == null || (p02 = c10.f24198w) == null) {
            return;
        }
        p02.f();
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public final void e() {
    }

    public final void a(Context context) {
        this.f24199x = new WeakReference(context);
        Uc.a(context, this);
    }

    public static final void a(T7 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        A a10 = this$0.M;
        int hashCode = this$0.hashCode();
        Q7 q72 = this$0.P;
        a10.getClass();
        A.a(hashCode, q72);
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public final void a(byte b10, Map map) {
        C2985h8 c2985h8;
        if (this.f24195t || b10 == 0 || b10 == 3) {
            return;
        }
        if (b10 == 1) {
            C2985h8 c2985h82 = this.f24177b.f25138e;
            if (c2985h82 != null) {
                InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
                if (interfaceC3269z5 != null) {
                    String TAG = this.f24188m;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z5).a(TAG, "reportAdLoad");
                }
                c2985h82.a("load", (HashMap) map, (L7) null, this.f24185j);
            }
        } else if (b10 != 2 || (c2985h8 = this.f24177b.f25138e) == null) {
        } else {
            InterfaceC3269z5 interfaceC3269z52 = this.f24185j;
            if (interfaceC3269z52 != null) {
                String TAG2 = this.f24188m;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).a(TAG2, "reportAdServed");
            }
            c2985h8.a("client_fill", (HashMap) map, (L7) null, this.f24185j);
        }
    }

    public static final void b(T7 it) {
        Intrinsics.checkNotNullParameter(it, "$it");
        A a10 = it.M;
        int hashCode = it.hashCode();
        Q7 q72 = it.P;
        a10.getClass();
        A.a(hashCode, q72);
    }

    public final void a(View view, C2920d8 asset) {
        String str;
        P0 p02;
        Intrinsics.checkNotNullParameter(asset, "asset");
        if (this.f24195t) {
            return;
        }
        m();
        C2920d8 b10 = b(this.f24177b, asset);
        if (b10 != null) {
            HashMap a10 = a(b10);
            a(b10, a10);
            if (!Intrinsics.areEqual(b10, asset)) {
                a(asset, a10);
            }
        } else {
            InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
            if (interfaceC3269z5 != null) {
                String TAG = this.f24188m;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).b(TAG, "Couldn't find an asset reference for this asset click URL");
            }
            a(asset, a(asset));
        }
        T7 c10 = c(this);
        if (c10 == null) {
            return;
        }
        String str2 = asset.f24593p;
        if (str2 != null) {
            int length = str2.length() - 1;
            int i10 = 0;
            boolean z10 = false;
            while (i10 <= length) {
                boolean z11 = Intrinsics.compare((int) str2.charAt(!z10 ? i10 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    }
                    length--;
                } else if (z11) {
                    i10++;
                } else {
                    z10 = true;
                }
            }
            str = I7.a(length, 1, str2, i10);
        } else {
            str = null;
        }
        if (B2.a(str) && (p02 = c10.f24198w) != null) {
            p02.a();
        }
        C2920d8 a11 = a(this.f24177b, asset);
        if (a11 != null) {
            if (view != null && Intrinsics.areEqual("VIDEO", a11.f24580c) && 5 == a11.f24588k) {
                view.setVisibility(4);
                asset.f24599v = 4;
            }
            c(a11);
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24185j;
        if (interfaceC3269z52 != null) {
            String TAG2 = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) interfaceC3269z52).b(TAG2, "Couldn't find an asset reference for this asset action! Ignoring the asset action ...");
        }
    }

    public final void b(C2920d8 c2920d8) {
        Xe viewableAd;
        InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "showEndCard");
        }
        T7 t72 = this.J;
        if (t72 != null && g() != null) {
            try {
                View g10 = g();
                ViewGroup viewGroup = g10 instanceof ViewGroup ? (ViewGroup) g10 : null;
                View a10 = (viewGroup == null || (viewableAd = t72.getViewableAd()) == null) ? null : viewableAd.a(null, viewGroup, false);
                if (a10 != null) {
                    if (viewGroup != null) {
                        viewGroup.addView(a10);
                    }
                    a10.setClickable(true);
                    t72.p();
                    if (c2920d8 instanceof C2904c9) {
                        Ve d10 = ((C2904c9) c2920d8).d();
                        Le le2 = d10 != null ? ((Ue) d10).f24288j : null;
                        if (le2 == null) {
                            return;
                        }
                        le2.f23827g = true;
                        return;
                    }
                    return;
                }
                InterfaceC3269z5 interfaceC3269z52 = this.f24185j;
                if (interfaceC3269z52 != null) {
                    String TAG2 = this.f24188m;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) interfaceC3269z52).b(TAG2, "Could not inflate the end card. Closing the ad");
                }
                a();
                return;
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z53 = this.f24185j;
                if (interfaceC3269z53 != null) {
                    String TAG3 = this.f24188m;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((A5) interfaceC3269z53).a(TAG3, "Failed to show end card Exception", e10);
                }
                a();
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
                return;
            }
        }
        InterfaceC3269z5 interfaceC3269z54 = this.f24185j;
        if (interfaceC3269z54 != null) {
            String TAG4 = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            ((A5) interfaceC3269z54).b(TAG4, "End card container is null; end card will not be shown");
        }
        AbstractC2984h7.a((byte) 2, "InMobi", "Failed to show end card");
        a();
    }

    @Override // com.inmobi.media.InterfaceC3231x
    public void b() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "destroyContainer");
        }
        if (this.f24195t) {
            return;
        }
        this.f24195t = true;
        C2932e3 c2932e3 = this.f24183h;
        if (c2932e3 != null) {
            c2932e3.b();
        }
        this.f24200y = -1;
        T7 t72 = this.C;
        if (t72 != null) {
            t72.a();
        }
        this.f24198w = null;
        D8 h10 = h();
        if (h10 != null) {
            C2879b1 c2879b1 = h10.f23581l;
            Iterator it = c2879b1.f24515b.iterator();
            while (it.hasNext()) {
                ((C2862a1) it.next()).f24469a.cancel();
            }
            c2879b1.f24515b.clear();
            h10.f23583n = true;
            h10.f23578i.clear();
            h10.f23585p = null;
            L8 l82 = h10.f23579j;
            if (l82 != null) {
                l82.destroy();
            }
            h10.f23579j = null;
        }
        this.f24192q = null;
        this.f24190o.clear();
        We we2 = this.f24191p;
        if (we2 != null) {
            we2.e();
        }
        We we3 = this.f24191p;
        if (we3 != null) {
            we3.a();
        }
        Context context = (Context) this.f24199x.get();
        if (context instanceof Activity) {
            ((Activity) context).getApplication().unregisterActivityLifecycleCallbacks(this);
        }
        this.f24199x.clear();
        WeakReference weakReference = this.f24201z;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.H = null;
        T7 t73 = this.J;
        if (t73 != null) {
            t73.b();
        }
        this.J = null;
        A a10 = this.M;
        int hashCode = hashCode();
        a10.getClass();
        SparseArray sparseArray = A.f23445b;
        sparseArray.remove(hashCode);
        Intrinsics.checkNotNullExpressionValue(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "TAG");
        sparseArray.size();
    }

    public final C2920d8 a(C2920d8 c2920d8, C3113p8 c3113p8, String str) {
        if (AbstractC3266z2.a((Context) this.f24199x.get(), str) || str == null || str.length() == 0) {
            return c2920d8;
        }
        String[] strArr = (String[]) new Regex("\\|").q(str, 0).toArray(new String[0]);
        C2920d8 m10 = c3113p8.m(strArr[0]);
        if (m10 == null) {
            return b(c3113p8.f25140g, c2920d8);
        }
        if (Intrinsics.areEqual(m10, c2920d8)) {
            return null;
        }
        if (strArr.length <= 2) {
            m10.f24589l = (byte) 1;
        } else {
            m10.f24589l = AbstractC3065m8.a(strArr[2]);
        }
        return m10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
        if (r7.equals("replay") == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0089, code lost:
        if (r7.equals("reload") == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008d, code lost:
        return 3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte a(java.lang.String r7) {
        /*
            java.util.Locale r0 = java.util.Locale.US
            java.lang.String r1 = "US"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r7 = r7.toLowerCase(r0)
            java.lang.String r0 = "this as java.lang.String).toLowerCase(locale)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r0)
            int r0 = r7.length()
            r1 = 1
            int r0 = r0 - r1
            r2 = 0
            r3 = r2
            r4 = r3
        L19:
            if (r3 > r0) goto L3e
            if (r4 != 0) goto L1f
            r5 = r3
            goto L20
        L1f:
            r5 = r0
        L20:
            char r5 = r7.charAt(r5)
            r6 = 32
            int r5 = kotlin.jvm.internal.Intrinsics.compare(r5, r6)
            if (r5 > 0) goto L2e
            r5 = r1
            goto L2f
        L2e:
            r5 = r2
        L2f:
            if (r4 != 0) goto L38
            if (r5 != 0) goto L35
            r4 = r1
            goto L19
        L35:
            int r3 = r3 + 1
            goto L19
        L38:
            if (r5 != 0) goto L3b
            goto L3e
        L3b:
            int r0 = r0 + (-1)
            goto L19
        L3e:
            java.lang.String r7 = com.inmobi.media.I7.a(r0, r1, r7, r3)
            int r0 = r7.hashCode()
            switch(r0) {
                case -934641255: goto L83;
                case -934524953: goto L7a;
                case 0: goto L74;
                case 3127582: goto L6b;
                case 3443508: goto L60;
                case 3532159: goto L55;
                case 110066619: goto L4a;
                default: goto L49;
            }
        L49:
            goto L8b
        L4a:
            java.lang.String r0 = "fullscreen"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L53
            goto L8b
        L53:
            r1 = 4
            goto L8e
        L55:
            java.lang.String r0 = "skip"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L5e
            goto L8b
        L5e:
            r1 = 2
            goto L8e
        L60:
            java.lang.String r0 = "play"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L69
            goto L8b
        L69:
            r1 = 5
            goto L8e
        L6b:
            java.lang.String r0 = "exit"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L8e
            goto L8b
        L74:
            java.lang.String r0 = ""
            r7.equals(r0)
            goto L8b
        L7a:
            java.lang.String r0 = "replay"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L8d
            goto L8b
        L83:
            java.lang.String r0 = "reload"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L8d
        L8b:
            r1 = r2
            goto L8e
        L8d:
            r1 = 3
        L8e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.T7.a(java.lang.String):byte");
    }

    public final void a(C2920d8 asset, boolean z10) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        C3113p8 c3113p8 = this.f24177b;
        if (!c3113p8.f25150q || this.f24195t) {
            return;
        }
        C2920d8 b10 = b(c3113p8, asset);
        if (b10 != null) {
            HashMap a10 = a(b10);
            String str = asset.f24584g;
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            b10.f24584g = str;
            String str2 = null;
            R6 r62 = ((TelemetryConfig.LandingPageConfig) this.f24186k.getValue()).getNativeEnabled() ? new R6(this.f24184i, J6.a(b10.f24593p), 0, 12) : null;
            J6.a(F6.f23634d, r62, (Integer) null, 12);
            if (Intrinsics.areEqual("VIDEO", b10.f24580c) || b10.f24583f) {
                InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
                if (interfaceC3269z5 != null) {
                    String TAG = this.f24188m;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z5).a(TAG, "Asset interaction requested");
                }
                String str3 = b10.f24584g;
                We we2 = this.f24191p;
                if (we2 != null) {
                    we2.a((byte) 4);
                }
                if (Intrinsics.areEqual("NO_ACTION", str3)) {
                    J6.a(F6.f23635e, r62, (Integer) 10, 8);
                    return;
                }
                String str4 = b10.f24593p;
                if (2 == b10.f24589l) {
                    Intrinsics.checkNotNull(b10, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset");
                    Ve d10 = ((C2904c9) b10).d();
                    Le le2 = d10 != null ? ((Ue) d10).f24288j : null;
                    String str5 = le2 != null ? le2.f23823c : null;
                    if (str5 != null) {
                        int length = str5.length() - 1;
                        int i10 = 0;
                        boolean z11 = false;
                        while (i10 <= length) {
                            boolean z12 = Intrinsics.compare((int) str5.charAt(!z11 ? i10 : length), 32) <= 0;
                            if (z11) {
                                if (!z12) {
                                    break;
                                }
                                length--;
                            } else if (z12) {
                                i10++;
                            } else {
                                z11 = true;
                            }
                        }
                        str2 = I7.a(length, 1, str5, i10);
                    }
                    if (B2.a(str2)) {
                        str4 = str5;
                    }
                }
                if (!AbstractC3266z2.a(d(), str4)) {
                    InterfaceC3269z5 interfaceC3269z52 = this.f24185j;
                    if (interfaceC3269z52 != null) {
                        String TAG2 = this.f24188m;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((A5) interfaceC3269z52).b(TAG2, "Invalid url:" + str4 + " will use fallback");
                    }
                    str4 = b10.f24594q;
                    if (!AbstractC3266z2.a(d(), str4)) {
                        InterfaceC3269z5 interfaceC3269z53 = this.f24185j;
                        if (interfaceC3269z53 != null) {
                            String str6 = this.f24188m;
                            ((A5) interfaceC3269z53).b(str6, I6.a(str6, "TAG", "Invalid fallback url:", str4));
                        }
                        J6.a(F6.f23635e, r62, (Integer) 3, 8);
                        return;
                    }
                }
                boolean z13 = T9.f24217a;
                Intrinsics.checkNotNull(str4);
                String a11 = T9.a(str4, a10);
                C2932e3 c2932e3 = this.f24183h;
                if (c2932e3 != null && !c2932e3.f24628g.get()) {
                    c2932e3.f24625d.f24849g = 1;
                    Intrinsics.checkNotNull(c2932e3.f24624c);
                }
                if (this.D && !z10) {
                    T7 c10 = c(this);
                    if (c10 == null) {
                        return;
                    }
                    P0 p02 = c10.f24198w;
                    if (p02 != null) {
                        if (Intrinsics.areEqual("INAPP", str3) && AbstractC3266z2.a(a11)) {
                            p02.e();
                        } else {
                            p02.g();
                        }
                    }
                    this.E = b10;
                    this.F = a11;
                    return;
                }
                a(b10, str3, a11, r62);
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z54 = this.f24185j;
        if (interfaceC3269z54 != null) {
            String TAG3 = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((A5) interfaceC3269z54).b(TAG3, "Couldn't find an asset reference for this asset click URL");
        }
    }

    public static T7 c(T7 t72) {
        if (t72 == null) {
            return null;
        }
        if (t72.f() != null || Intrinsics.areEqual(t72, t72.f24197v)) {
            return t72;
        }
        T7 t73 = t72.f24197v;
        return c(t73 != null ? t73 : null);
    }

    public final void a(C2920d8 c2920d8, HashMap hashMap) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "Click impression record requested");
        }
        if (2 == c2920d8.f24589l) {
            C2904c9 c2904c9 = c2920d8 instanceof C2904c9 ? (C2904c9) c2920d8 : null;
            Ve d10 = c2904c9 != null ? c2904c9.d() : null;
            Le le2 = d10 != null ? ((Ue) d10).f24288j : null;
            if ((le2 != null ? le2.f23823c : null) != null && c2920d8.f24593p != null) {
                if (le2.f23826f.isEmpty()) {
                    return;
                }
                Iterator it = le2.a("click").iterator();
                while (it.hasNext()) {
                    C2920d8.a((U8) it.next(), hashMap, (L7) null, this.f24185j);
                }
                return;
            }
            InterfaceC3269z5 interfaceC3269z52 = this.f24185j;
            if (interfaceC3269z52 != null) {
                String TAG2 = this.f24188m;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).a(TAG2, "reportAdClick");
            }
            c2920d8.a("click", hashMap, (L7) null, this.f24185j);
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24185j;
        if (interfaceC3269z53 != null) {
            String TAG3 = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((A5) interfaceC3269z53).a(TAG3, "reportAdClick");
        }
        c2920d8.a("click", hashMap, (L7) null, this.f24185j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0025, code lost:
        if (kotlin.text.StringsKt.G("card_scrollable", r1.f24579b, true) != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.HashMap a(com.inmobi.media.C2920d8 r9) {
        /*
            r8 = this;
            java.lang.String r0 = "asset"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.util.HashMap r0 = new java.util.HashMap
            r1 = 4
            r0.<init>(r1)
            boolean r1 = r8.f24195t
            if (r1 == 0) goto L10
            return r0
        L10:
            java.lang.String r1 = "child"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r1)
            boolean r1 = r9 instanceof com.inmobi.media.C2985h8
            r2 = 1
            java.lang.String r3 = "card_scrollable"
            if (r1 == 0) goto L28
            r1 = r9
            com.inmobi.media.h8 r1 = (com.inmobi.media.C2985h8) r1
            java.lang.String r4 = r1.f24579b
            boolean r4 = kotlin.text.StringsKt.G(r3, r4, r2)
            if (r4 == 0) goto L28
            goto L40
        L28:
            com.inmobi.media.h8 r9 = r9.f24595r
            r1 = 0
            if (r9 == 0) goto L2e
            goto L2f
        L2e:
            r9 = r1
        L2f:
            if (r9 == 0) goto L40
            java.lang.String r4 = r9.f24579b
            boolean r4 = kotlin.text.StringsKt.G(r3, r4, r2)
            if (r4 == 0) goto L3b
            r1 = r9
            goto L40
        L3b:
            com.inmobi.media.h8 r9 = r9.f24595r
            if (r9 == 0) goto L2e
            goto L2f
        L40:
            long r2 = java.lang.System.currentTimeMillis()
            r4 = 0
            if (r1 == 0) goto L4f
            long r6 = r1.f24811y
            int r9 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r9 == 0) goto L4f
            r2 = r6
        L4f:
            com.inmobi.media.p8 r9 = r8.f24177b
            com.inmobi.media.h8 r9 = r9.f25138e
            if (r9 == 0) goto L57
            long r4 = r9.f24811y
        L57:
            java.lang.String r9 = java.lang.String.valueOf(r4)
            java.lang.String r1 = "$LTS"
            r0.put(r1, r9)
            java.lang.String r9 = java.lang.String.valueOf(r2)
            java.lang.String r1 = "$STS"
            r0.put(r1, r9)
            long r1 = java.lang.System.currentTimeMillis()
            java.lang.String r9 = java.lang.String.valueOf(r1)
            java.lang.String r1 = "$TS"
            r0.put(r1, r9)
            com.inmobi.media.p8 r9 = r8.f24177b
            java.util.Map r9 = r9.f25153t
            if (r9 != 0) goto L81
            java.util.HashMap r9 = new java.util.HashMap
            r9.<init>()
        L81:
            r0.putAll(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.T7.a(com.inmobi.media.d8):java.util.HashMap");
    }

    public static T8 a(View view) {
        View findViewWithTag = view != null ? view.findViewWithTag("timerView") : null;
        if (findViewWithTag instanceof T8) {
            return (T8) findViewWithTag;
        }
        return null;
    }

    public final void a(C2904c9 c2904c9) {
        Ve d10 = c2904c9.d();
        Le le2 = d10 != null ? ((Ue) d10).f24288j : null;
        if (le2 == null || !le2.f23827g) {
            return;
        }
        InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "Invoking close end card trackers.");
        }
        Iterator it = le2.a("closeEndCard").iterator();
        while (it.hasNext()) {
            C2920d8.a((U8) it.next(), a((C2920d8) c2904c9), (L7) null, this.f24185j);
        }
        le2.f23827g = false;
    }

    public final void a() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "dismissCurrentViewContainer");
        }
        if (this.f24195t) {
            return;
        }
        try {
            T7 container = c(this);
            if (container == null) {
                return;
            }
            container.q();
            SparseArray sparseArray = InMobiAdActivity.f23426k;
            Intrinsics.checkNotNullParameter(container, "container");
            InMobiAdActivity.f23426k.remove(container.hashCode());
            if (container instanceof C2870a9) {
                View videoContainerView = container.getVideoContainerView();
                C3066m9 c3066m9 = videoContainerView instanceof C3066m9 ? (C3066m9) videoContainerView : null;
                if (c3066m9 != null) {
                    C3050l9 videoView = c3066m9.getVideoView();
                    Object tag = videoView.getTag();
                    if (tag instanceof C2904c9) {
                        HashMap hashMap = ((C2904c9) tag).f24597t;
                        hashMap.put("seekPosition", Integer.valueOf(videoView.getCurrentPosition()));
                        hashMap.put("lastMediaVolume", Integer.valueOf(videoView.getVolume()));
                        C2920d8 c2920d8 = ((C2904c9) tag).f24600w;
                        if (c2920d8 instanceof C2904c9) {
                            ((C2904c9) c2920d8).a((C2904c9) tag);
                        }
                        a((C2904c9) tag);
                    }
                }
            }
            WeakReference weakReference = container.f24201z;
            Activity activity = weakReference != null ? (Activity) weakReference.get() : null;
            if (activity instanceof InMobiAdActivity) {
                ((InMobiAdActivity) activity).f23433e = true;
                ((InMobiAdActivity) activity).finish();
                int i10 = this.f24200y;
                if (i10 != -1) {
                    ((InMobiAdActivity) activity).overridePendingTransition(0, i10);
                }
            }
            final T7 t72 = this.f24197v;
            if (t72 == null) {
                t72 = null;
            }
            if (t72 != null) {
                t72.C = null;
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: ub.e2
                    @Override // java.lang.Runnable
                    public final void run() {
                        T7.b(T7.this);
                    }
                });
            }
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24185j;
            if (interfaceC3269z52 != null) {
                String str = this.f24188m;
                ((A5) interfaceC3269z52).b(str, rf.a(e10, H6.a(str, "TAG", "Encountered unexpected error in handling exit action on video: ")));
            }
            AbstractC2984h7.a((byte) 2, "InMobi", "SDK encountered unexpected error in exiting video");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    public final void a(C2920d8 asset, String interactionMode, String url, R6 r62) {
        boolean isCCTEnabled;
        Unit unit;
        P0 p02;
        Unit unit2;
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(interactionMode, "interactionMode");
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
        if (interfaceC3269z5 != null) {
            String TAG = this.f24188m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "openUrl");
        }
        if (Intrinsics.areEqual("EMBEDDED", interactionMode)) {
            if (r62 != null) {
                r62.f24066g = "IN_CUSTOM";
            }
            Integer a10 = a(url, asset, r62);
            if (a10 != null) {
                J6.a(F6.f23637g, r62, Integer.valueOf(a10.intValue()), 8);
                unit2 = Unit.f60915a;
            } else {
                unit2 = null;
            }
            if (unit2 == null) {
                J6.a(F6.f23636f, r62, (Integer) null, 12);
            }
        } else if (Intrinsics.areEqual("INAPP", interactionMode)) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24185j;
            if (interfaceC3269z52 != null) {
                String TAG2 = this.f24188m;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).c(TAG2, "openUrlInCCT");
            }
            Context context = (Context) this.f24199x.get();
            if (context == null) {
                return;
            }
            if (f() == null && (p02 = this.f24198w) != null) {
                p02.e();
            }
            String a11 = AbstractC3235x3.a(context);
            try {
                isCCTEnabled = this.f24194s.isCCTEnabled();
            } catch (Exception e10) {
                e = e10;
            }
            try {
                if (a11 != null && isCCTEnabled) {
                    new C3027k2(url, null, context, this.Q, this.f24187l, r62, "NATIVE").a();
                    return;
                }
                InterfaceC3269z5 interfaceC3269z53 = this.f24185j;
                if (interfaceC3269z53 != null) {
                    String TAG3 = this.f24188m;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((A5) interfaceC3269z53).a(TAG3, "ChromeCustomTab fallback to Embedded");
                }
                if (r62 != null) {
                    r62.f24066g = "IN_CUSTOM";
                }
                Integer a12 = a(url, asset, r62);
                if (a12 != null) {
                    J6.a(F6.f23637g, r62, Integer.valueOf(a12.intValue()), 8);
                    unit = Unit.f60915a;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    J6.a(F6.f23636f, r62, (Integer) null, 12);
                }
            } catch (Exception e11) {
                e = e11;
                Exception exc = e;
                try {
                    AbstractC3266z2.a(context, url, this.f24187l, "NATIVE");
                    if (r62 != null) {
                        r62.f24066g = "EX_NATIVE";
                    }
                    J6.a(F6.f23636f, r62, (Integer) null, 12);
                } catch (Exception e12) {
                    InterfaceC3269z5 interfaceC3269z54 = this.f24185j;
                    if (interfaceC3269z54 != null) {
                        String TAG4 = this.f24188m;
                        Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                        ((A5) interfaceC3269z54).a(TAG4, "Exception occurred while opening External ", e12);
                    }
                    J6.a(F6.f23637g, r62, (Integer) 9, 8);
                }
                InterfaceC3269z5 interfaceC3269z55 = this.f24185j;
                if (interfaceC3269z55 != null) {
                    String TAG5 = this.f24188m;
                    Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                    ((A5) interfaceC3269z55).a(TAG5, "Fallback to External while opening cct", exc);
                }
            }
        } else {
            String str = asset.f24594q;
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(asset, "asset");
            InterfaceC3269z5 interfaceC3269z56 = this.f24185j;
            if (interfaceC3269z56 != null) {
                String TAG6 = this.f24188m;
                Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
                ((A5) interfaceC3269z56).c(TAG6, "openUrlUsingExternalBrowser");
            }
            if (this.f24199x.get() == null) {
                return;
            }
            if (r62 != null) {
                r62.f24066g = "EX_NATIVE";
            }
            String a13 = AbstractC3266z2.a((Context) this.f24199x.get(), this.f24187l, url, str);
            if (a13 != null) {
                T7 c10 = c(this);
                if (c10 == null) {
                    return;
                }
                P0 p03 = c10.f24198w;
                if (!this.D && p03 != null) {
                    p03.g();
                }
                if (Intrinsics.areEqual(a13, str)) {
                    asset.a("TRACKER_EVENT_TYPE_FALLBACK_URL", a(asset), (L7) null, this.f24185j);
                }
                J6.a(F6.f23636f, r62, (Integer) null, 12);
                return;
            }
            J6.a(F6.f23637g, r62, (Integer) 6, 8);
        }
    }

    public final Integer a(String url, C2920d8 asset, R6 r62) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(asset, "asset");
        try {
            Context context = (Context) this.f24199x.get();
            if (context == null) {
                return 7;
            }
            if (AbstractC3266z2.a(url)) {
                InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
                if (interfaceC3269z5 != null) {
                    String TAG = this.f24188m;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z5).c(TAG, "openUrlUsingEmbeddedBrowser");
                }
                InMobiAdActivity.f23427l = null;
                S7 s72 = this.L;
                if (s72 == null) {
                    s72 = new S7(this);
                    this.L = s72;
                }
                InMobiAdActivity.f23428m = s72;
                Intent intent = new Intent(context, InMobiAdActivity.class);
                intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 100);
                intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.IN_APP_BROWSER_URL", url);
                intent.putExtra(HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, this.f24180e);
                intent.putExtra("creativeId", getCreativeId());
                intent.putExtra("impressionId", getImpressionId());
                intent.putExtra("allowAutoRedirection", this.f24181f);
                if (r62 != null) {
                    intent.putExtra("lpTelemetryControlInfo", r62);
                }
                if (asset.f24586i) {
                    intent.putExtra("supportLockScreen", true);
                }
                Uc.f24267a.a(context, intent);
                return null;
            }
            return 10;
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24185j;
            if (interfaceC3269z52 != null) {
                String TAG2 = this.f24188m;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).a(TAG2, "Error while opening Embedded Browser", e10);
            }
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            return 9;
        }
    }
}
