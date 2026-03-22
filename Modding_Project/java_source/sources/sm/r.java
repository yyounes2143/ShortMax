package sm;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes7.dex */
public class r {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f66460a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final View f66461b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final a f66462c;

    /* renamed from: d  reason: collision with root package name */
    private final float f66463d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final Rect f66464e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final Rect f66465f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final Runnable f66466g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private ViewTreeObserver.OnPreDrawListener f66467h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private View.OnAttachStateChangeListener f66468i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f66469j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f66470k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f66471l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f66472m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f66473n;

    /* loaded from: classes7.dex */
    public interface a {
        void a(boolean z10);
    }

    /* loaded from: classes7.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r.this.a();
            r.this.f66471l = false;
        }
    }

    /* loaded from: classes7.dex */
    class c implements ViewTreeObserver.OnPreDrawListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            r.this.g();
            return true;
        }
    }

    /* loaded from: classes7.dex */
    class d implements View.OnAttachStateChangeListener {
        d() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(@NonNull View view) {
            r.this.a();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(@NonNull View view) {
            r.this.a();
        }
    }

    public r(@NonNull Context context, @NonNull View view, @NonNull a aVar) {
        this(context, view, aVar, 0.1f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.f66461b.getVisibility() != 0) {
            c(this.f66461b, "Visibility != View.VISIBLE");
        } else if (this.f66461b.getParent() == null) {
            c(this.f66461b, "No parent");
        } else if (!this.f66461b.getGlobalVisibleRect(this.f66464e)) {
            c(this.f66461b, "Can't get global visible rect");
        } else if (q.z(this.f66461b)) {
            c(this.f66461b, "View is transparent (alpha = 0)");
        } else {
            float width = this.f66461b.getWidth() * this.f66461b.getHeight();
            if (width <= 0.0f) {
                c(this.f66461b, "Ad View width or height is zero, show wasn't tracked");
                return;
            }
            float width2 = (this.f66464e.width() * this.f66464e.height()) / width;
            if (width2 < this.f66463d) {
                c(this.f66461b, "Ad View is not completely visible (" + width2 + "), show wasn't tracked");
                return;
            }
            View n10 = io.bidmachine.iab.mraid.o.n(this.f66460a, this.f66461b);
            if (n10 == null) {
                c(this.f66461b, "Can't obtain root view");
                return;
            }
            n10.getGlobalVisibleRect(this.f66465f);
            if (!Rect.intersects(this.f66464e, this.f66465f)) {
                c(this.f66461b, "Ad View is out of current window, show wasn't tracked");
                return;
            }
            b(this.f66461b);
        }
    }

    private void b(@NonNull View view) {
        this.f66470k = false;
        e(true);
    }

    private void c(@NonNull View view, @NonNull String str) {
        if (!this.f66470k) {
            this.f66470k = true;
            io.bidmachine.iab.mraid.h.c("VisibilityTracker", str, new Object[0]);
        }
        e(false);
    }

    private void e(boolean z10) {
        if (this.f66469j != z10) {
            this.f66469j = z10;
            this.f66462c.a(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f66471l) {
            return;
        }
        this.f66471l = true;
        q.E(this.f66466g, 100L);
    }

    public boolean i() {
        return this.f66469j;
    }

    public void j() {
        this.f66473n = true;
        this.f66472m = false;
        this.f66471l = false;
        this.f66461b.getViewTreeObserver().removeOnPreDrawListener(this.f66467h);
        this.f66461b.removeOnAttachStateChangeListener(this.f66468i);
        q.n(this.f66466g);
    }

    public void k() {
        if (this.f66473n || this.f66472m) {
            return;
        }
        this.f66472m = true;
        if (this.f66467h == null) {
            this.f66467h = new c();
        }
        if (this.f66468i == null) {
            this.f66468i = new d();
        }
        this.f66461b.getViewTreeObserver().addOnPreDrawListener(this.f66467h);
        this.f66461b.addOnAttachStateChangeListener(this.f66468i);
        a();
    }

    public r(@NonNull Context context, @NonNull View view, @NonNull a aVar, float f10) {
        this.f66469j = false;
        this.f66470k = false;
        this.f66471l = false;
        this.f66472m = false;
        this.f66473n = false;
        this.f66460a = context;
        this.f66461b = view;
        this.f66462c = aVar;
        this.f66463d = f10;
        this.f66464e = new Rect();
        this.f66465f = new Rect();
        this.f66466g = new b();
    }
}
