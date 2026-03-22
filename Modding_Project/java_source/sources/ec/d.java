package ec;

import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* compiled from: OverScrollDecorator.java */
/* loaded from: classes5.dex */
public class d extends b {

    /* renamed from: c  reason: collision with root package name */
    private float f51324c;

    /* renamed from: d  reason: collision with root package name */
    private int f51325d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f51326e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f51327f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f51328g;

    /* renamed from: h  reason: collision with root package name */
    private Handler f51329h;

    /* compiled from: OverScrollDecorator.java */
    /* loaded from: classes5.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int w10 = d.this.f51323b.w();
            int i10 = message.what;
            if (i10 == 0) {
                d.this.f51325d = -1;
            } else if (i10 != 1) {
                if (i10 == 2) {
                    d.this.f51325d = 60;
                    return;
                }
                return;
            }
            d.i(d.this);
            View v10 = d.this.f51323b.v();
            if (d.this.f51323b.b()) {
                if (d.this.f51324c >= 3000.0f) {
                    if (fc.c.h(v10, w10)) {
                        d.this.f51323b.m().F(d.this.f51324c, d.this.f51325d);
                        d.this.f51324c = 0.0f;
                        d.this.f51325d = 60;
                    }
                } else if (d.this.f51324c <= -3000.0f && fc.c.g(v10, w10)) {
                    d.this.f51323b.m().E(d.this.f51324c, d.this.f51325d);
                    d.this.f51324c = 0.0f;
                    d.this.f51325d = 60;
                }
            }
            if (d.this.f51325d < 60) {
                d.this.f51329h.sendEmptyMessageDelayed(1, 10L);
            }
        }
    }

    public d(TwinklingRefreshLayout.d dVar, c cVar) {
        super(dVar, cVar);
        this.f51325d = 0;
        this.f51326e = false;
        this.f51327f = false;
        this.f51328g = false;
        this.f51329h = new a();
    }

    static /* synthetic */ int i(d dVar) {
        int i10 = dVar.f51325d;
        dVar.f51325d = i10 + 1;
        return i10;
    }

    @Override // ec.c
    public void a(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11, float f12, float f13) {
        c cVar = this.f51322a;
        if (cVar != null) {
            cVar.a(motionEvent, motionEvent2, f10, f11, f12, f13);
        }
    }

    @Override // ec.c
    public void b(MotionEvent motionEvent) {
        c cVar = this.f51322a;
        if (cVar != null) {
            cVar.b(motionEvent);
        }
        this.f51326e = fc.c.h(this.f51323b.v(), this.f51323b.w());
        this.f51327f = fc.c.g(this.f51323b.v(), this.f51323b.w());
    }

    @Override // ec.c
    public boolean c(MotionEvent motionEvent) {
        c cVar = this.f51322a;
        if (cVar != null && cVar.c(motionEvent)) {
            return true;
        }
        return false;
    }

    @Override // ec.c
    public void d(MotionEvent motionEvent, boolean z10) {
        boolean z11;
        c cVar = this.f51322a;
        if (cVar != null) {
            if (this.f51328g && z10) {
                z11 = true;
            } else {
                z11 = false;
            }
            cVar.d(motionEvent, z11);
        }
        this.f51328g = false;
    }

    @Override // ec.c
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        c cVar = this.f51322a;
        if (cVar != null && cVar.dispatchTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    @Override // ec.c
    public boolean e(MotionEvent motionEvent) {
        c cVar = this.f51322a;
        if (cVar != null && cVar.e(motionEvent)) {
            return true;
        }
        return false;
    }

    @Override // ec.c
    public void f(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        c cVar = this.f51322a;
        if (cVar != null) {
            cVar.f(motionEvent, motionEvent2, f10, f11);
        }
        if (!this.f51323b.h()) {
            return;
        }
        int y10 = (int) (motionEvent2.getY() - motionEvent.getY());
        if (y10 < (-this.f51323b.w()) && this.f51327f) {
            return;
        }
        if (y10 > this.f51323b.w() && this.f51326e) {
            return;
        }
        this.f51324c = f11;
        if (Math.abs(f11) >= 3000.0f) {
            this.f51329h.sendEmptyMessage(0);
            this.f51328g = true;
            return;
        }
        this.f51324c = 0.0f;
        this.f51325d = 60;
    }
}
