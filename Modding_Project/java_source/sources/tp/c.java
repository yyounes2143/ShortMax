package tp;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import rq.q0;
import tp.b;
/* loaded from: classes8.dex */
public class c implements tp.b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<View> f67606a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final q0 f67607b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final b.a f67608c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f67609d = new b();
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final ViewTreeObserver.OnPreDrawListener f67610e = new ViewTreeObserver$OnPreDrawListenerC0936c();
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final Object f67611f = new Object();
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final AtomicBoolean f67612g = new AtomicBoolean(false);
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f67613h = new AtomicBoolean(false);
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final AtomicBoolean f67614i = new AtomicBoolean(false);

    /* loaded from: classes8.dex */
    private class b implements r {
        private b() {
        }

        @Override // tp.r, yq.m
        public void b(@NonNull Throwable th2) {
            super.b(th2);
            c.this.g();
        }

        @Override // yq.m
        public void s() {
            if (!c.this.f()) {
                c.this.g();
            }
        }
    }

    /* renamed from: tp.c$c  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    private class ViewTreeObserver$OnPreDrawListenerC0936c implements ViewTreeObserver.OnPreDrawListener {
        private ViewTreeObserver$OnPreDrawListenerC0936c() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            c.this.k();
            return true;
        }
    }

    public c(@NonNull View view, @NonNull q0 q0Var, @NonNull b.a aVar) {
        this.f67606a = new WeakReference<>(view);
        this.f67607b = q0Var;
        this.f67608c = aVar;
    }

    private boolean c(@NonNull View view, float f10, boolean z10, boolean z11) {
        try {
        } catch (Exception e10) {
            s.h(e10);
        }
        if (!view.isShown()) {
            s.g("VisibilityTracker", "Show wasn't tracked: view visibility verification failed - %s", view);
            return false;
        } else if (sq.j.i(view)) {
            s.g("VisibilityTracker", "Show wasn't tracked: view transparent verification failed - %s", view);
            return false;
        } else if (!z10 && !view.hasWindowFocus()) {
            s.g("VisibilityTracker", "Show wasn't tracked: window focus verification failed - %s", view);
            return false;
        } else {
            float width = view.getWidth() * view.getHeight();
            if (width == 0.0f) {
                s.g("VisibilityTracker", "Show wasn't tracked: view size verification failed - %s", view);
                return false;
            }
            Rect rect = new Rect();
            if (!view.getGlobalVisibleRect(rect)) {
                s.g("VisibilityTracker", "Show wasn't tracked: global visibility verification failed - %s", view);
                return false;
            }
            float width2 = (rect.width() * rect.height()) / width;
            if (width2 < f10) {
                s.g("VisibilityTracker", "Show wasn't tracked: ad view not completely visible (%s / %s) - %s", Float.valueOf(width2), Float.valueOf(f10), view);
                return false;
            }
            View a10 = a(view);
            if (a10 == null) {
                s.g("VisibilityTracker", "Show wasn't tracked: content or root layout not found - %s", view);
                return false;
            }
            Rect rect2 = new Rect();
            a10.getGlobalVisibleRect(rect2);
            if (!Rect.intersects(rect, rect2)) {
                s.g("VisibilityTracker", "Show wasn't tracked: ad view is out of current window - %s", view);
                return false;
            }
            if (!z11) {
                ViewGroup viewGroup = (ViewGroup) view.getRootView();
                ViewGroup viewGroup2 = (ViewGroup) view.getParent();
                int i10 = 0;
                ViewGroup viewGroup3 = view;
                loop0: while (true) {
                    ViewGroup viewGroup4 = viewGroup2;
                    View view2 = viewGroup3;
                    ViewGroup viewGroup5 = viewGroup4;
                    while (viewGroup5 != null) {
                        for (int indexOfChild = viewGroup5.indexOfChild(view2) + 1; indexOfChild < viewGroup5.getChildCount(); indexOfChild++) {
                            View childAt = viewGroup5.getChildAt(indexOfChild);
                            if (yq.t.f(childAt)) {
                                Rect g10 = sq.j.g(childAt);
                                if (Rect.intersects(rect, g10)) {
                                    float h10 = sq.j.h(rect, g10);
                                    if (h10 < f10) {
                                        s.g("VisibilityTracker", "Show wasn't tracked: ad view is covered by another view (visible percent - %s / %s, ad view - %s, overlapping view - %s)", Float.valueOf(h10), Float.valueOf(f10), view2, childAt);
                                        return false;
                                    }
                                    i10++;
                                    if (i10 >= 3) {
                                        s.g("VisibilityTracker", "Show wasn't tracked: ad view is covered by too many views (overlapping views count - %s, ad view - %s)", Integer.valueOf(i10), view2);
                                        return false;
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                        if (viewGroup5 != viewGroup) {
                            break;
                        }
                        viewGroup5 = null;
                    }
                    viewGroup2 = (ViewGroup) viewGroup5.getParent();
                    viewGroup3 = viewGroup5;
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        View h10 = h();
        if (h10 == null) {
            stop();
            return true;
        } else if (c(h10, this.f67607b.a(), this.f67607b.c(), this.f67607b.b())) {
            i();
            return false;
        } else {
            j();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.f67613h.set(false);
        k();
    }

    private void i() {
        if (!this.f67614i.compareAndSet(false, true)) {
            return;
        }
        this.f67608c.a();
    }

    private void j() {
        if (!this.f67614i.compareAndSet(true, false)) {
            return;
        }
        this.f67608c.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (!this.f67613h.compareAndSet(false, true)) {
            return;
        }
        sq.j.d(this.f67609d);
        sq.j.l(this.f67609d, 100L);
    }

    @Override // tp.b
    public void a() {
        stop();
        this.f67606a.clear();
    }

    @Nullable
    public View h() {
        return this.f67606a.get();
    }

    @Override // tp.b
    public void start() {
        synchronized (this.f67611f) {
            try {
                if (!this.f67612g.compareAndSet(false, true)) {
                    return;
                }
                View h10 = h();
                if (h10 == null) {
                    stop();
                    return;
                }
                s.g("VisibilityTracker", "Start tracking - %s", h10);
                ViewTreeObserver viewTreeObserver = h10.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnPreDrawListener(this.f67610e);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // tp.b
    public void stop() {
        synchronized (this.f67611f) {
            try {
                this.f67612g.set(false);
                View h10 = h();
                if (h10 != null) {
                    s.g("VisibilityTracker", "Stop tracking - %s", h10);
                    ViewTreeObserver viewTreeObserver = h10.getViewTreeObserver();
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.removeOnPreDrawListener(this.f67610e);
                    }
                }
                sq.j.d(this.f67609d);
                this.f67613h.set(false);
                this.f67614i.set(false);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // tp.b
    public boolean b() {
        return this.f67614i.get();
    }

    @Nullable
    private View a(@NonNull View view) {
        View view2 = null;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            view2 = (View) parent;
            if (view2.getId() == 16908290) {
                break;
            }
        }
        return view2;
    }
}
