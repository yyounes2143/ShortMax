package com.applovin.impl;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class d8 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f7829a;

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f7833e;

    /* renamed from: f  reason: collision with root package name */
    private final ViewTreeObserver.OnPreDrawListener f7834f;

    /* renamed from: g  reason: collision with root package name */
    private final WeakReference f7835g;

    /* renamed from: h  reason: collision with root package name */
    private final long f7836h;

    /* renamed from: k  reason: collision with root package name */
    private int f7839k;

    /* renamed from: l  reason: collision with root package name */
    private float f7840l;

    /* renamed from: m  reason: collision with root package name */
    private float f7841m;

    /* renamed from: n  reason: collision with root package name */
    private long f7842n;

    /* renamed from: b  reason: collision with root package name */
    private final Object f7830b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final Rect f7831c = new Rect();

    /* renamed from: i  reason: collision with root package name */
    private WeakReference f7837i = new WeakReference(null);

    /* renamed from: j  reason: collision with root package name */
    private WeakReference f7838j = new WeakReference(null);

    /* renamed from: o  reason: collision with root package name */
    private long f7843o = Long.MIN_VALUE;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f7832d = new Handler(Looper.getMainLooper());

    /* loaded from: classes2.dex */
    public interface a {
        void onLogVisibilityImpression();
    }

    public d8(final View view, com.applovin.impl.sdk.k kVar, a aVar) {
        this.f7829a = kVar.O();
        this.f7836h = ((Long) kVar.a(v4.f10379w1)).longValue();
        this.f7835g = new WeakReference(view);
        final WeakReference weakReference = new WeakReference(aVar);
        this.f7833e = new Runnable() { // from class: com.applovin.impl.u9
            @Override // java.lang.Runnable
            public final void run() {
                d8.this.a(weakReference);
            }
        };
        this.f7834f = new ViewTreeObserver.OnPreDrawListener() { // from class: com.applovin.impl.v9
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                boolean a10;
                a10 = d8.this.a(view);
                return a10;
            }
        };
    }

    private void c(View view) {
        View b10 = b8.b((View) this.f7835g.get());
        if (b10 == null) {
            b10 = b8.b(view);
        }
        if (b10 == null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7829a.a("VisibilityTracker", "Unable to set view tree observer due to no root view.");
                return;
            }
            return;
        }
        ViewTreeObserver viewTreeObserver = b10.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7829a.k("VisibilityTracker", "Unable to set view tree observer since the view tree observer is not alive.");
                return;
            }
            return;
        }
        this.f7837i = new WeakReference(viewTreeObserver);
        viewTreeObserver.addOnPreDrawListener(this.f7834f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(WeakReference weakReference) {
        View view = (View) this.f7835g.get();
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        View view2 = (View) this.f7838j.get();
        if (viewGroup == null || view2 == null) {
            return;
        }
        if (a(viewGroup, view2)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7829a.a("VisibilityTracker", "View met visibility requirements. Logging visibility impression..");
            }
            b();
            a aVar = (a) weakReference.get();
            if (aVar != null) {
                aVar.onLogVisibilityImpression();
                return;
            }
            return;
        }
        a();
    }

    public void b() {
        synchronized (this.f7830b) {
            this.f7832d.removeMessages(0);
            b((View) this.f7835g.get());
            this.f7843o = Long.MIN_VALUE;
            this.f7838j.clear();
        }
    }

    private boolean b(View view, View view2) {
        if (view2 == null || view2.getVisibility() != 0 || view.getParent() == null || view2.getWidth() <= 0 || view2.getHeight() <= 0 || !view2.getGlobalVisibleRect(this.f7831c)) {
            return false;
        }
        long pxToDp = AppLovinSdkUtils.pxToDp(view2.getContext(), this.f7831c.width()) * AppLovinSdkUtils.pxToDp(view2.getContext(), this.f7831c.height());
        if (pxToDp < this.f7839k) {
            return false;
        }
        if ((((float) pxToDp) / (AppLovinSdkUtils.pxToDp(view2.getContext(), view2.getWidth()) * AppLovinSdkUtils.pxToDp(view2.getContext(), view2.getHeight()))) * 100.0f < this.f7840l) {
            return false;
        }
        return (((float) ((long) (this.f7831c.width() * this.f7831c.height()))) / ((float) ((long) (view2.getWidth() * view2.getHeight())))) * 100.0f >= this.f7841m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(View view) {
        a();
        b(view);
        return true;
    }

    public void a(e3 e3Var) {
        View m02;
        if (e3Var instanceof y2) {
            m02 = e3Var.y();
        } else if (!(e3Var instanceof a3)) {
            return;
        } else {
            m02 = ((a3) e3Var).m0();
        }
        a(e3Var.e0(), e3Var.g0(), e3Var.h0(), e3Var.i0(), m02);
    }

    private void b(View view) {
        ViewTreeObserver viewTreeObserver = (ViewTreeObserver) this.f7837i.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f7834f);
        } else if (view != null) {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnPreDrawListener(this.f7834f);
            } else if (com.applovin.impl.sdk.o.a()) {
                this.f7829a.a("VisibilityTracker", "Could not remove on pre-draw listener. View tree observer is not alive.");
            }
        } else if (com.applovin.impl.sdk.o.a()) {
            this.f7829a.a("VisibilityTracker", "Could not remove on pre-draw listener. Root view is null.");
        }
        this.f7837i.clear();
    }

    public void a(int i10, float f10, float f11, long j10, View view) {
        synchronized (this.f7830b) {
            try {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f7829a;
                    oVar.a("VisibilityTracker", "Tracking visibility for " + view);
                }
                b();
                WeakReference weakReference = new WeakReference(view);
                this.f7838j = weakReference;
                this.f7839k = i10;
                this.f7840l = f10;
                this.f7841m = f11;
                this.f7842n = j10;
                c((View) weakReference.get());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void a() {
        this.f7832d.postDelayed(this.f7833e, this.f7836h);
    }

    private boolean a(View view, View view2) {
        if (b(view, view2)) {
            if (this.f7843o == Long.MIN_VALUE) {
                this.f7843o = SystemClock.uptimeMillis();
            }
            return SystemClock.uptimeMillis() - this.f7843o >= this.f7842n;
        }
        return false;
    }
}
