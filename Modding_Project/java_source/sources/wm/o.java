package wm;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: VisibilityTrackerImpl.java */
/* loaded from: classes7.dex */
public class o implements wm.a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<View> f69959a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final io.bidmachine.core.i f69960b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final p f69961c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final ViewTreeObserver.OnPreDrawListener f69962d = new d();
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f69963e = new b();
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final Runnable f69964f = new c();
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final Object f69965g = new Object();
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f69966h = new AtomicBoolean(false);
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final AtomicBoolean f69967i = new AtomicBoolean(false);

    /* renamed from: j  reason: collision with root package name */
    private boolean f69968j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f69969k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f69970l;

    /* renamed from: m  reason: collision with root package name */
    private long f69971m;

    /* compiled from: VisibilityTrackerImpl.java */
    /* loaded from: classes7.dex */
    private class b implements vm.a {
        private b() {
        }

        @Override // vm.a, fr.h
        public void b(@NonNull Throwable th2) throws Throwable {
            super.b(th2);
            o.this.r();
        }

        @Override // fr.h
        public void s() throws Throwable {
            if (!o.this.p()) {
                o.this.r();
            }
        }
    }

    /* compiled from: VisibilityTrackerImpl.java */
    /* loaded from: classes7.dex */
    private class c implements vm.a {
        private c() {
        }

        @Override // fr.h
        public void s() throws Throwable {
            o.this.stop();
        }
    }

    /* compiled from: VisibilityTrackerImpl.java */
    /* loaded from: classes7.dex */
    private class d implements ViewTreeObserver.OnPreDrawListener {
        private d() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            o.this.G();
            return true;
        }
    }

    public o(@NonNull View view, @NonNull io.bidmachine.core.i iVar, @NonNull p pVar) {
        this.f69959a = new WeakReference<>(view);
        this.f69960b = iVar;
        this.f69961c = pVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String A(String str) {
        return String.format("Show wasn't tracked: global visibility verification failed - %s", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String B(float f10, float f11, String str) {
        return String.format("Show wasn't tracked: ad view not completely visible (%s / %s) - %s", Float.valueOf(f10), Float.valueOf(f11), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String C(String str) {
        return String.format("Show wasn't tracked: content or root layout not found - %s", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String D(String str) {
        return String.format("Show wasn't tracked: ad view is out of current window - %s", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String E(View view) {
        return String.format("Start tracking - %s", view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String F(View view) {
        return String.format("Stop tracking - %s", view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        if (!this.f69967i.compareAndSet(false, true)) {
            return;
        }
        io.bidmachine.core.g.h(this.f69963e);
        io.bidmachine.core.g.a0(this.f69963e, 100L);
    }

    private float H(@NonNull Rect rect, @NonNull Rect rect2) {
        int width = rect.width() * rect.height();
        if (width == 0) {
            return 0.0f;
        }
        return (width - (Math.max(0, Math.min(rect.right, rect2.right) - Math.max(rect.left, rect2.left)) * Math.max(0, Math.min(rect.bottom, rect2.bottom) - Math.max(rect.top, rect2.top)))) / width;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean p() {
        View s10 = s();
        if (s10 == null) {
            stop();
            return true;
        } else if (this.f69968j && this.f69969k) {
            stop();
            return true;
        } else {
            long b10 = this.f69960b.b();
            if (t(s10, this.f69960b.a(), this.f69960b.d(), this.f69960b.c()) && this.f69961c.a()) {
                this.f69968j = true;
                if (!this.f69970l && !this.f69969k) {
                    io.bidmachine.core.g.a0(this.f69964f, b10);
                    this.f69971m = System.currentTimeMillis();
                    this.f69970l = true;
                }
            } else if (!this.f69969k) {
                io.bidmachine.core.g.h(this.f69964f);
                this.f69971m = 0L;
                this.f69970l = false;
            }
            return false;
        }
    }

    @Nullable
    private View q(@NonNull View view) {
        View view2 = null;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            view2 = (View) parent;
            if (view2.getId() == 16908290) {
                break;
            }
        }
        return view2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        this.f69967i.set(false);
        G();
    }

    private boolean t(@NonNull View view, final float f10, boolean z10, boolean z11) {
        final String view2;
        try {
            view2 = view.toString();
        } catch (Exception e10) {
            io.bidmachine.core.a.m(e10);
        }
        if (!view.isShown()) {
            io.bidmachine.core.a.a(new hr.b() { // from class: wm.g
                @Override // hr.b
                public final Object get() {
                    String w10;
                    w10 = o.w(view2);
                    return w10;
                }
            });
            return false;
        } else if (io.bidmachine.core.g.P(view)) {
            io.bidmachine.core.a.a(new hr.b() { // from class: wm.h
                @Override // hr.b
                public final Object get() {
                    String x10;
                    x10 = o.x(view2);
                    return x10;
                }
            });
            return false;
        } else if (!z10 && !view.hasWindowFocus()) {
            io.bidmachine.core.a.a(new hr.b() { // from class: wm.i
                @Override // hr.b
                public final Object get() {
                    String y10;
                    y10 = o.y(view2);
                    return y10;
                }
            });
            return false;
        } else {
            float width = view.getWidth() * view.getHeight();
            if (width == 0.0f) {
                io.bidmachine.core.a.a(new hr.b() { // from class: wm.j
                    @Override // hr.b
                    public final Object get() {
                        String z12;
                        z12 = o.z(view2);
                        return z12;
                    }
                });
                return false;
            }
            Rect rect = new Rect();
            if (!view.getGlobalVisibleRect(rect)) {
                io.bidmachine.core.a.a(new hr.b() { // from class: wm.k
                    @Override // hr.b
                    public final Object get() {
                        String A;
                        A = o.A(view2);
                        return A;
                    }
                });
                return false;
            }
            final float width2 = (rect.width() * rect.height()) / width;
            if (width2 < f10) {
                io.bidmachine.core.a.a(new hr.b() { // from class: wm.l
                    @Override // hr.b
                    public final Object get() {
                        String B;
                        B = o.B(width2, f10, view2);
                        return B;
                    }
                });
                return false;
            }
            View q10 = q(view);
            if (q10 == null) {
                io.bidmachine.core.a.a(new hr.b() { // from class: wm.m
                    @Override // hr.b
                    public final Object get() {
                        String C;
                        C = o.C(view2);
                        return C;
                    }
                });
                return false;
            }
            Rect rect2 = new Rect();
            q10.getGlobalVisibleRect(rect2);
            if (!Rect.intersects(rect, rect2)) {
                io.bidmachine.core.a.a(new hr.b() { // from class: wm.n
                    @Override // hr.b
                    public final Object get() {
                        String D;
                        D = o.D(view2);
                        return D;
                    }
                });
                return false;
            }
            if (!z11) {
                ViewGroup viewGroup = (ViewGroup) view.getRootView();
                ViewGroup viewGroup2 = (ViewGroup) view.getParent();
                final int i10 = 0;
                while (viewGroup2 != null) {
                    for (int indexOfChild = viewGroup2.indexOfChild(view) + 1; indexOfChild < viewGroup2.getChildCount(); indexOfChild++) {
                        final View childAt = viewGroup2.getChildAt(indexOfChild);
                        if (childAt.getVisibility() == 0) {
                            Rect F = io.bidmachine.core.g.F(childAt);
                            if (Rect.intersects(rect, F)) {
                                final float H = H(rect, F);
                                if (H < f10) {
                                    io.bidmachine.core.a.a(new hr.b() { // from class: wm.d
                                        @Override // hr.b
                                        public final Object get() {
                                            String u10;
                                            u10 = o.u(H, f10, view2, childAt);
                                            return u10;
                                        }
                                    });
                                    return false;
                                }
                                i10++;
                                if (i10 >= 3) {
                                    io.bidmachine.core.a.a(new hr.b() { // from class: wm.e
                                        @Override // hr.b
                                        public final Object get() {
                                            String v10;
                                            v10 = o.v(i10, view2);
                                            return v10;
                                        }
                                    });
                                    return false;
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                    if (viewGroup2 != viewGroup) {
                        ViewGroup viewGroup3 = viewGroup2;
                        viewGroup2 = (ViewGroup) viewGroup2.getParent();
                        view = viewGroup3;
                    } else {
                        viewGroup2 = null;
                    }
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String u(float f10, float f11, String str, View view) {
        return String.format("Show wasn't tracked: ad view is covered by another view (visible percent - %s / %s, ad view - %s, overlapping view - %s)", Float.valueOf(f10), Float.valueOf(f11), str, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String v(int i10, String str) {
        return String.format("Show wasn't tracked: ad view is covered by too many views (overlapping views count - %s, ad view - %s)", Integer.valueOf(i10), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String w(String str) {
        return String.format("Show wasn't tracked: view visibility verification failed - %s", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String x(String str) {
        return String.format("Show wasn't tracked: view transparent verification failed - %s", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String y(String str) {
        return String.format("Show wasn't tracked: window focus verification failed - %s", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String z(String str) {
        return String.format("Show wasn't tracked: view size verification failed - %s", str);
    }

    @Nullable
    @VisibleForTesting
    View s() {
        return this.f69959a.get();
    }

    @Override // wm.a
    public void start() {
        synchronized (this.f69965g) {
            try {
                if (!this.f69966h.compareAndSet(false, true)) {
                    return;
                }
                final View s10 = s();
                if (s10 == null) {
                    stop();
                    return;
                }
                io.bidmachine.core.a.a(new hr.b() { // from class: wm.c
                    @Override // hr.b
                    public final Object get() {
                        String E;
                        E = o.E(s10);
                        return E;
                    }
                });
                s10.getViewTreeObserver().addOnPreDrawListener(this.f69962d);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // wm.a
    public void stop() {
        synchronized (this.f69965g) {
            try {
                this.f69966h.set(false);
                final View s10 = s();
                if (s10 != null) {
                    io.bidmachine.core.a.a(new hr.b() { // from class: wm.f
                        @Override // hr.b
                        public final Object get() {
                            String F;
                            F = o.F(s10);
                            return F;
                        }
                    });
                    long b10 = this.f69960b.b();
                    if (this.f69968j && !this.f69969k && b10 > -1 && this.f69971m > 0 && System.currentTimeMillis() - this.f69971m >= b10) {
                        this.f69969k = true;
                        this.f69961c.b();
                    }
                    ViewTreeObserver viewTreeObserver = s10.getViewTreeObserver();
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.removeOnPreDrawListener(this.f69962d);
                    }
                }
                io.bidmachine.core.g.h(this.f69963e);
                io.bidmachine.core.g.h(this.f69964f);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
