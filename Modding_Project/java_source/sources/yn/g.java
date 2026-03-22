package yn;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.m0;
import cn.r;
/* compiled from: VideoFrameReleaseHelper.java */
/* loaded from: classes8.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final yn.a f71022a = new yn.a();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final b f71023b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final c f71024c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f71025d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Surface f71026e;

    /* renamed from: f  reason: collision with root package name */
    private float f71027f;

    /* renamed from: g  reason: collision with root package name */
    private float f71028g;

    /* renamed from: h  reason: collision with root package name */
    private float f71029h;

    /* renamed from: i  reason: collision with root package name */
    private float f71030i;

    /* renamed from: j  reason: collision with root package name */
    private int f71031j;

    /* renamed from: k  reason: collision with root package name */
    private long f71032k;

    /* renamed from: l  reason: collision with root package name */
    private long f71033l;

    /* renamed from: m  reason: collision with root package name */
    private long f71034m;

    /* renamed from: n  reason: collision with root package name */
    private long f71035n;

    /* renamed from: o  reason: collision with root package name */
    private long f71036o;

    /* renamed from: p  reason: collision with root package name */
    private long f71037p;

    /* renamed from: q  reason: collision with root package name */
    private long f71038q;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VideoFrameReleaseHelper.java */
    @RequiresApi(30)
    /* loaded from: classes8.dex */
    public static final class a {
        public static void a(Surface surface, float f10) {
            int i10;
            if (f10 == 0.0f) {
                i10 = 0;
            } else {
                i10 = 1;
            }
            try {
                surface.setFrameRate(f10, i10);
            } catch (IllegalStateException e10) {
                r.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e10);
            }
        }
    }

    /* compiled from: VideoFrameReleaseHelper.java */
    /* loaded from: classes8.dex */
    private static final class c implements Choreographer.FrameCallback, Handler.Callback {

        /* renamed from: f  reason: collision with root package name */
        private static final c f71041f = new c();

        /* renamed from: a  reason: collision with root package name */
        public volatile long f71042a = -9223372036854775807L;

        /* renamed from: b  reason: collision with root package name */
        private final Handler f71043b;

        /* renamed from: c  reason: collision with root package name */
        private final HandlerThread f71044c;

        /* renamed from: d  reason: collision with root package name */
        private Choreographer f71045d;

        /* renamed from: e  reason: collision with root package name */
        private int f71046e;

        private c() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.f71044c = handlerThread;
            handlerThread.start();
            Handler z10 = m0.z(handlerThread.getLooper(), this);
            this.f71043b = z10;
            z10.sendEmptyMessage(1);
        }

        private void b() {
            Choreographer choreographer = this.f71045d;
            if (choreographer != null) {
                int i10 = this.f71046e + 1;
                this.f71046e = i10;
                if (i10 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
        }

        private void c() {
            try {
                this.f71045d = Choreographer.getInstance();
            } catch (RuntimeException e10) {
                r.i("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e10);
            }
        }

        public static c d() {
            return f71041f;
        }

        private void f() {
            Choreographer choreographer = this.f71045d;
            if (choreographer != null) {
                int i10 = this.f71046e - 1;
                this.f71046e = i10;
                if (i10 == 0) {
                    choreographer.removeFrameCallback(this);
                    this.f71042a = -9223372036854775807L;
                }
            }
        }

        public void a() {
            this.f71043b.sendEmptyMessage(2);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j10) {
            this.f71042a = j10;
            ((Choreographer) cn.a.e(this.f71045d)).postFrameCallbackDelayed(this, 500L);
        }

        public void e() {
            this.f71043b.sendEmptyMessage(3);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return false;
                    }
                    f();
                    return true;
                }
                b();
                return true;
            }
            c();
            return true;
        }
    }

    public g(@Nullable Context context) {
        c cVar;
        b f10 = f(context);
        this.f71023b = f10;
        if (f10 != null) {
            cVar = c.d();
        } else {
            cVar = null;
        }
        this.f71024c = cVar;
        this.f71032k = -9223372036854775807L;
        this.f71033l = -9223372036854775807L;
        this.f71027f = -1.0f;
        this.f71030i = 1.0f;
        this.f71031j = 0;
    }

    private static boolean c(long j10, long j11) {
        if (Math.abs(j10 - j11) <= 20000000) {
            return true;
        }
        return false;
    }

    private void d() {
        Surface surface;
        if (m0.f3614a >= 30 && (surface = this.f71026e) != null && this.f71031j != Integer.MIN_VALUE && this.f71029h != 0.0f) {
            this.f71029h = 0.0f;
            a.a(surface, 0.0f);
        }
    }

    private static long e(long j10, long j11, long j12) {
        long j13;
        long j14 = j11 + (((j10 - j11) / j12) * j12);
        if (j10 <= j14) {
            j13 = j14 - j12;
        } else {
            j14 = j12 + j14;
            j13 = j14;
        }
        if (j14 - j10 >= j10 - j13) {
            return j13;
        }
        return j14;
    }

    @Nullable
    private b f(@Nullable Context context) {
        DisplayManager displayManager;
        if (context == null || (displayManager = (DisplayManager) context.getSystemService("display")) == null) {
            return null;
        }
        return new b(displayManager);
    }

    private void n() {
        this.f71034m = 0L;
        this.f71037p = -1L;
        this.f71035n = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(@Nullable Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / display.getRefreshRate());
            this.f71032k = refreshRate;
            this.f71033l = (refreshRate * 80) / 100;
            return;
        }
        r.h("VideoFrameReleaseHelper", "Unable to query display refresh rate");
        this.f71032k = -9223372036854775807L;
        this.f71033l = -9223372036854775807L;
    }

    private void q() {
        float f10;
        float f11;
        if (m0.f3614a >= 30 && this.f71026e != null) {
            if (this.f71022a.e()) {
                f10 = this.f71022a.b();
            } else {
                f10 = this.f71027f;
            }
            float f12 = this.f71028g;
            if (f10 == f12) {
                return;
            }
            int i10 = (f10 > (-1.0f) ? 1 : (f10 == (-1.0f) ? 0 : -1));
            if (i10 != 0 && f12 != -1.0f) {
                if (this.f71022a.e() && this.f71022a.d() >= 5000000000L) {
                    f11 = 0.02f;
                } else {
                    f11 = 1.0f;
                }
                if (Math.abs(f10 - this.f71028g) < f11) {
                    return;
                }
            } else if (i10 == 0 && this.f71022a.c() < 30) {
                return;
            }
            this.f71028g = f10;
            r(false);
        }
    }

    private void r(boolean z10) {
        Surface surface;
        float f10;
        if (m0.f3614a >= 30 && (surface = this.f71026e) != null && this.f71031j != Integer.MIN_VALUE) {
            if (this.f71025d) {
                float f11 = this.f71028g;
                if (f11 != -1.0f) {
                    f10 = f11 * this.f71030i;
                    if (z10 && this.f71029h == f10) {
                        return;
                    }
                    this.f71029h = f10;
                    a.a(surface, f10);
                }
            }
            f10 = 0.0f;
            if (z10) {
            }
            this.f71029h = f10;
            a.a(surface, f10);
        }
    }

    public long b(long j10) {
        long j11;
        c cVar;
        if (this.f71037p != -1 && this.f71022a.e()) {
            long a10 = this.f71038q + (((float) (this.f71022a.a() * (this.f71034m - this.f71037p))) / this.f71030i);
            if (c(j10, a10)) {
                j11 = a10;
                this.f71035n = this.f71034m;
                this.f71036o = j11;
                cVar = this.f71024c;
                if (cVar == null && this.f71032k != -9223372036854775807L) {
                    long j12 = cVar.f71042a;
                    if (j12 == -9223372036854775807L) {
                        return j11;
                    }
                    return e(j11, j12, this.f71032k) - this.f71033l;
                }
                return j11;
            }
            n();
        }
        j11 = j10;
        this.f71035n = this.f71034m;
        this.f71036o = j11;
        cVar = this.f71024c;
        if (cVar == null) {
        }
        return j11;
    }

    public void g(float f10) {
        this.f71027f = f10;
        this.f71022a.g();
        q();
    }

    public void h(long j10) {
        long j11 = this.f71035n;
        if (j11 != -1) {
            this.f71037p = j11;
            this.f71038q = this.f71036o;
        }
        this.f71034m++;
        this.f71022a.f(j10 * 1000);
        q();
    }

    public void i(float f10) {
        this.f71030i = f10;
        n();
        r(false);
    }

    public void j() {
        n();
    }

    public void k() {
        this.f71025d = true;
        n();
        if (this.f71023b != null) {
            ((c) cn.a.e(this.f71024c)).a();
            this.f71023b.b();
        }
        r(false);
    }

    public void l() {
        this.f71025d = false;
        b bVar = this.f71023b;
        if (bVar != null) {
            bVar.c();
            ((c) cn.a.e(this.f71024c)).e();
        }
        d();
    }

    public void m(@Nullable Surface surface) {
        if (this.f71026e == surface) {
            return;
        }
        d();
        this.f71026e = surface;
        r(true);
    }

    public void o(int i10) {
        if (this.f71031j == i10) {
            return;
        }
        this.f71031j = i10;
        r(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VideoFrameReleaseHelper.java */
    /* loaded from: classes8.dex */
    public final class b implements DisplayManager.DisplayListener {

        /* renamed from: a  reason: collision with root package name */
        private final DisplayManager f71039a;

        public b(DisplayManager displayManager) {
            this.f71039a = displayManager;
        }

        private Display a() {
            return this.f71039a.getDisplay(0);
        }

        public void b() {
            this.f71039a.registerDisplayListener(this, m0.A());
            g.this.p(a());
        }

        public void c() {
            this.f71039a.unregisterDisplayListener(this);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i10) {
            if (i10 == 0) {
                g.this.p(a());
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i10) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i10) {
        }
    }
}
