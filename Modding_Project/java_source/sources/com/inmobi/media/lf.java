package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class lf {

    /* renamed from: a  reason: collision with root package name */
    public final WeakHashMap f25000a;

    /* renamed from: b  reason: collision with root package name */
    public final ff f25001b;

    /* renamed from: c  reason: collision with root package name */
    public final Handler f25002c;

    /* renamed from: d  reason: collision with root package name */
    public final byte f25003d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC3269z5 f25004e;

    /* renamed from: f  reason: collision with root package name */
    public final int f25005f;

    /* renamed from: g  reason: collision with root package name */
    public final ArrayList f25006g;

    /* renamed from: h  reason: collision with root package name */
    public long f25007h;

    /* renamed from: i  reason: collision with root package name */
    public final AtomicBoolean f25008i;

    /* renamed from: j  reason: collision with root package name */
    public hf f25009j;

    /* renamed from: k  reason: collision with root package name */
    public final ms.i f25010k;

    /* renamed from: l  reason: collision with root package name */
    public final ms.i f25011l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f25012m;

    public lf(ff visibilityChecker, byte b10, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(visibilityChecker, "visibilityChecker");
        WeakHashMap weakHashMap = new WeakHashMap(10);
        Handler handler = new Handler(Looper.getMainLooper());
        this.f25000a = weakHashMap;
        this.f25001b = visibilityChecker;
        this.f25002c = handler;
        this.f25003d = b10;
        this.f25004e = interfaceC3269z5;
        this.f25005f = 50;
        this.f25006g = new ArrayList(50);
        this.f25008i = new AtomicBoolean(true);
        this.f25010k = kotlin.c.b(new jf(this));
        this.f25011l = kotlin.c.b(new kf(this));
    }

    public final void a(View view, Object obj, int i10) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(view, "rootView");
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC3269z5 interfaceC3269z5 = this.f25004e;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("VisibilityTracker", "add view to tracker - minPercent - " + i10 + "  " + this);
        }
        Cif cif = (Cif) this.f25000a.get(view);
        if (cif == null) {
            cif = new Cif();
            this.f25000a.put(view, cif);
            this.f25007h++;
        }
        cif.f24863a = i10;
        long j10 = this.f25007h;
        cif.f24864b = j10;
        cif.f24865c = view;
        cif.f24866d = obj;
        long j11 = this.f25005f;
        if (j10 % j11 == 0) {
            long j12 = j10 - j11;
            for (Map.Entry entry : this.f25000a.entrySet()) {
                View view2 = (View) entry.getKey();
                if (((Cif) entry.getValue()).f24864b < j12) {
                    this.f25006g.add(view2);
                }
            }
            Iterator it = this.f25006g.iterator();
            while (it.hasNext()) {
                View view3 = (View) it.next();
                Intrinsics.checkNotNull(view3);
                a(view3);
            }
            this.f25006g.clear();
        }
        if (this.f25000a.size() == 1) {
            f();
        }
    }

    public void b() {
        InterfaceC3269z5 interfaceC3269z5 = this.f25004e;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("VisibilityTracker", "destroy " + this);
        }
        a();
        this.f25009j = null;
        this.f25008i.set(true);
    }

    public abstract int c();

    public abstract void d();

    public void e() {
        InterfaceC3269z5 interfaceC3269z5 = this.f25004e;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("VisibilityTracker", "pause " + this);
        }
        ((gf) this.f25010k.getValue()).run();
        this.f25002c.removeCallbacksAndMessages(null);
        this.f25012m = false;
        this.f25008i.set(true);
    }

    public void f() {
        InterfaceC3269z5 interfaceC3269z5 = this.f25004e;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("VisibilityTracker", "resume " + this);
        }
        this.f25008i.set(false);
        g();
    }

    public final void g() {
        if (!this.f25012m && !this.f25008i.get()) {
            this.f25012m = true;
            ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25481c.getValue()).schedule((Runnable) this.f25011l.getValue(), c(), TimeUnit.MILLISECONDS);
        }
    }

    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC3269z5 interfaceC3269z5 = this.f25004e;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("VisibilityTracker", "removed view from tracker " + this);
        }
        if (((Cif) this.f25000a.remove(view)) != null) {
            this.f25007h--;
            if (this.f25000a.isEmpty()) {
                e();
            }
        }
    }

    public final void a() {
        InterfaceC3269z5 interfaceC3269z5 = this.f25004e;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("VisibilityTracker", "clear " + this);
        }
        this.f25000a.clear();
        this.f25002c.removeMessages(0);
        this.f25012m = false;
    }
}
