package g3;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import c3.f0;
import c3.g0;
import com.facebook.drawee.components.DraweeEventTracker;
import f3.b;
import k2.f;
import k2.h;
/* compiled from: DraweeHolder.java */
/* loaded from: classes3.dex */
public class a<DH extends b> implements g0 {

    /* renamed from: d  reason: collision with root package name */
    private DH f52196d;

    /* renamed from: a  reason: collision with root package name */
    private boolean f52193a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f52194b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f52195c = true;

    /* renamed from: e  reason: collision with root package name */
    private f3.a f52197e = null;

    /* renamed from: f  reason: collision with root package name */
    private final DraweeEventTracker f52198f = DraweeEventTracker.a();

    public a(DH dh2) {
        if (dh2 != null) {
            p(dh2);
        }
    }

    private void b() {
        if (this.f52193a) {
            return;
        }
        this.f52198f.b(DraweeEventTracker.Event.ON_ATTACH_CONTROLLER);
        this.f52193a = true;
        f3.a aVar = this.f52197e;
        if (aVar != null && aVar.e() != null) {
            this.f52197e.b();
        }
    }

    private void c() {
        if (this.f52194b && this.f52195c) {
            b();
        } else {
            e();
        }
    }

    public static <DH extends b> a<DH> d(DH dh2, Context context) {
        a<DH> aVar = new a<>(dh2);
        aVar.m(context);
        return aVar;
    }

    private void e() {
        if (!this.f52193a) {
            return;
        }
        this.f52198f.b(DraweeEventTracker.Event.ON_DETACH_CONTROLLER);
        this.f52193a = false;
        if (i()) {
            this.f52197e.c();
        }
    }

    private void q(g0 g0Var) {
        Drawable h10 = h();
        if (h10 instanceof f0) {
            ((f0) h10).n(g0Var);
        }
    }

    @Override // c3.g0
    public void a(boolean z10) {
        DraweeEventTracker.Event event;
        if (this.f52195c == z10) {
            return;
        }
        DraweeEventTracker draweeEventTracker = this.f52198f;
        if (z10) {
            event = DraweeEventTracker.Event.ON_DRAWABLE_SHOW;
        } else {
            event = DraweeEventTracker.Event.ON_DRAWABLE_HIDE;
        }
        draweeEventTracker.b(event);
        this.f52195c = z10;
        c();
    }

    public f3.a f() {
        return this.f52197e;
    }

    public DH g() {
        return (DH) h.g(this.f52196d);
    }

    public Drawable h() {
        DH dh2 = this.f52196d;
        if (dh2 == null) {
            return null;
        }
        return dh2.b();
    }

    public boolean i() {
        f3.a aVar = this.f52197e;
        if (aVar != null && aVar.e() == this.f52196d) {
            return true;
        }
        return false;
    }

    public void j() {
        this.f52198f.b(DraweeEventTracker.Event.ON_HOLDER_ATTACH);
        this.f52194b = true;
        c();
    }

    public void k() {
        this.f52198f.b(DraweeEventTracker.Event.ON_HOLDER_DETACH);
        this.f52194b = false;
        c();
    }

    public boolean l(MotionEvent motionEvent) {
        if (!i()) {
            return false;
        }
        return this.f52197e.onTouchEvent(motionEvent);
    }

    public void n() {
        o(null);
    }

    public void o(f3.a aVar) {
        boolean z10 = this.f52193a;
        if (z10) {
            e();
        }
        if (i()) {
            this.f52198f.b(DraweeEventTracker.Event.ON_CLEAR_OLD_CONTROLLER);
            this.f52197e.d(null);
        }
        this.f52197e = aVar;
        if (aVar != null) {
            this.f52198f.b(DraweeEventTracker.Event.ON_SET_CONTROLLER);
            this.f52197e.d(this.f52196d);
        } else {
            this.f52198f.b(DraweeEventTracker.Event.ON_CLEAR_CONTROLLER);
        }
        if (z10) {
            b();
        }
    }

    @Override // c3.g0
    public void onDraw() {
        if (this.f52193a) {
            return;
        }
        l2.a.x(DraweeEventTracker.class, "%x: Draw requested for a non-attached controller %x. %s", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(this.f52197e)), toString());
        this.f52194b = true;
        this.f52195c = true;
        c();
    }

    public void p(DH dh2) {
        boolean z10;
        this.f52198f.b(DraweeEventTracker.Event.ON_SET_HIERARCHY);
        boolean i10 = i();
        q(null);
        DH dh3 = (DH) h.g(dh2);
        this.f52196d = dh3;
        Drawable b10 = dh3.b();
        if (b10 != null && !b10.isVisible()) {
            z10 = false;
        } else {
            z10 = true;
        }
        a(z10);
        q(this);
        if (i10) {
            this.f52197e.d(dh2);
        }
    }

    public String toString() {
        return f.b(this).d("controllerAttached", this.f52193a).d("holderAttached", this.f52194b).d("drawableVisible", this.f52195c).c("events", this.f52198f.toString()).toString();
    }

    public void m(Context context) {
    }
}
