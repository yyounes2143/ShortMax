package ec;

import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* compiled from: RefreshProcessor.java */
/* loaded from: classes5.dex */
public class e implements c {

    /* renamed from: a  reason: collision with root package name */
    protected TwinklingRefreshLayout.d f51331a;

    /* renamed from: b  reason: collision with root package name */
    private float f51332b;

    /* renamed from: c  reason: collision with root package name */
    private float f51333c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f51334d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f51335e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f51336f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f51337g = false;

    /* renamed from: h  reason: collision with root package name */
    private MotionEvent f51338h;

    public e(TwinklingRefreshLayout.d dVar) {
        if (dVar != null) {
            this.f51331a = dVar;
            return;
        }
        throw new NullPointerException("The coprocessor can not be null.");
    }

    private void g() {
        MotionEvent motionEvent = this.f51338h;
        if (motionEvent == null) {
            return;
        }
        this.f51331a.f(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime() + ViewConfiguration.getLongPressTimeout(), 3, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState()));
    }

    private void h() {
        MotionEvent motionEvent = this.f51338h;
        this.f51331a.f(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), 0, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState()));
    }

    @Override // ec.c
    public void a(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11, float f12, float f13) {
        int w10 = this.f51331a.w();
        if (this.f51331a.I() && f11 >= w10 && !this.f51331a.C()) {
            this.f51331a.m().A((int) f13);
        }
        if (this.f51331a.B() && f11 <= (-w10)) {
            this.f51331a.m().x((int) f13);
        }
    }

    @Override // ec.c
    public boolean c(MotionEvent motionEvent) {
        return false;
    }

    @Override // ec.c
    public void d(MotionEvent motionEvent, boolean z10) {
        if (!z10 && this.f51335e) {
            this.f51331a.m().G();
        }
        if (!z10 && this.f51336f) {
            this.f51331a.m().H();
        }
        this.f51335e = false;
        this.f51336f = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
        if (r0 != 3) goto L8;
     */
    @Override // ec.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ec.e.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // ec.c
    public boolean e(MotionEvent motionEvent) {
        return false;
    }

    @Override // ec.c
    public void b(MotionEvent motionEvent) {
    }

    @Override // ec.c
    public void f(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
    }
}
