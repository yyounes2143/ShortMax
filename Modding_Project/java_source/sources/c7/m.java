package c7;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.s0;
import com.google.android.exoplayer2.video.PlaceholderSurface;
/* compiled from: VideoFrameReleaseHelper.java */
/* loaded from: classes4.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private final c7.e f3275a = new c7.e();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final b f3276b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final e f3277c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3278d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Surface f3279e;

    /* renamed from: f  reason: collision with root package name */
    private float f3280f;

    /* renamed from: g  reason: collision with root package name */
    private float f3281g;

    /* renamed from: h  reason: collision with root package name */
    private float f3282h;

    /* renamed from: i  reason: collision with root package name */
    private float f3283i;

    /* renamed from: j  reason: collision with root package name */
    private int f3284j;

    /* renamed from: k  reason: collision with root package name */
    private long f3285k;

    /* renamed from: l  reason: collision with root package name */
    private long f3286l;

    /* renamed from: m  reason: collision with root package name */
    private long f3287m;

    /* renamed from: n  reason: collision with root package name */
    private long f3288n;

    /* renamed from: o  reason: collision with root package name */
    private long f3289o;

    /* renamed from: p  reason: collision with root package name */
    private long f3290p;

    /* renamed from: q  reason: collision with root package name */
    private long f3291q;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VideoFrameReleaseHelper.java */
    @RequiresApi(30)
    /* loaded from: classes4.dex */
    public static final class a {
        @DoNotInline
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
                b7.q.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VideoFrameReleaseHelper.java */
    /* loaded from: classes4.dex */
    public interface b {

        /* compiled from: VideoFrameReleaseHelper.java */
        /* loaded from: classes4.dex */
        public interface a {
            void a(@Nullable Display display);
        }

        void a(a aVar);

        void unregister();
    }

    /* compiled from: VideoFrameReleaseHelper.java */
    /* loaded from: classes4.dex */
    private static final class e implements Choreographer.FrameCallback, Handler.Callback {

        /* renamed from: f  reason: collision with root package name */
        private static final e f3295f = new e();

        /* renamed from: a  reason: collision with root package name */
        public volatile long f3296a = -9223372036854775807L;

        /* renamed from: b  reason: collision with root package name */
        private final Handler f3297b;

        /* renamed from: c  reason: collision with root package name */
        private final HandlerThread f3298c;

        /* renamed from: d  reason: collision with root package name */
        private Choreographer f3299d;

        /* renamed from: e  reason: collision with root package name */
        private int f3300e;

        private e() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.f3298c = handlerThread;
            handlerThread.start();
            Handler t10 = s0.t(handlerThread.getLooper(), this);
            this.f3297b = t10;
            t10.sendEmptyMessage(0);
        }

        private void b() {
            Choreographer choreographer = this.f3299d;
            if (choreographer != null) {
                int i10 = this.f3300e + 1;
                this.f3300e = i10;
                if (i10 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
        }

        private void c() {
            try {
                this.f3299d = Choreographer.getInstance();
            } catch (RuntimeException e10) {
                b7.q.j("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e10);
            }
        }

        public static e d() {
            return f3295f;
        }

        private void f() {
            Choreographer choreographer = this.f3299d;
            if (choreographer != null) {
                int i10 = this.f3300e - 1;
                this.f3300e = i10;
                if (i10 == 0) {
                    choreographer.removeFrameCallback(this);
                    this.f3296a = -9223372036854775807L;
                }
            }
        }

        public void a() {
            this.f3297b.sendEmptyMessage(1);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j10) {
            this.f3296a = j10;
            ((Choreographer) b7.a.e(this.f3299d)).postFrameCallbackDelayed(this, 500L);
        }

        public void e() {
            this.f3297b.sendEmptyMessage(2);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
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

    public m(@Nullable Context context) {
        e eVar;
        b f10 = f(context);
        this.f3276b = f10;
        if (f10 != null) {
            eVar = e.d();
        } else {
            eVar = null;
        }
        this.f3277c = eVar;
        this.f3285k = -9223372036854775807L;
        this.f3286l = -9223372036854775807L;
        this.f3280f = -1.0f;
        this.f3283i = 1.0f;
        this.f3284j = 0;
    }

    private static boolean c(long j10, long j11) {
        if (Math.abs(j10 - j11) <= 20000000) {
            return true;
        }
        return false;
    }

    private void d() {
        Surface surface;
        if (s0.f2506a >= 30 && (surface = this.f3279e) != null && this.f3284j != Integer.MIN_VALUE && this.f3282h != 0.0f) {
            this.f3282h = 0.0f;
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
    private static b f(@Nullable Context context) {
        b bVar = null;
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        if (s0.f2506a >= 17) {
            bVar = d.c(applicationContext);
        }
        if (bVar == null) {
            return c.b(applicationContext);
        }
        return bVar;
    }

    private void n() {
        this.f3287m = 0L;
        this.f3290p = -1L;
        this.f3288n = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(@Nullable Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / display.getRefreshRate());
            this.f3285k = refreshRate;
            this.f3286l = (refreshRate * 80) / 100;
            return;
        }
        b7.q.i("VideoFrameReleaseHelper", "Unable to query display refresh rate");
        this.f3285k = -9223372036854775807L;
        this.f3286l = -9223372036854775807L;
    }

    private void q() {
        float f10;
        float f11;
        if (s0.f2506a >= 30 && this.f3279e != null) {
            if (this.f3275a.e()) {
                f10 = this.f3275a.b();
            } else {
                f10 = this.f3280f;
            }
            float f12 = this.f3281g;
            if (f10 == f12) {
                return;
            }
            int i10 = (f10 > (-1.0f) ? 1 : (f10 == (-1.0f) ? 0 : -1));
            if (i10 != 0 && f12 != -1.0f) {
                if (this.f3275a.e() && this.f3275a.d() >= 5000000000L) {
                    f11 = 0.02f;
                } else {
                    f11 = 1.0f;
                }
                if (Math.abs(f10 - this.f3281g) < f11) {
                    return;
                }
            } else if (i10 == 0 && this.f3275a.c() < 30) {
                return;
            }
            this.f3281g = f10;
            r(false);
        }
    }

    private void r(boolean z10) {
        Surface surface;
        float f10;
        if (s0.f2506a >= 30 && (surface = this.f3279e) != null && this.f3284j != Integer.MIN_VALUE) {
            if (this.f3278d) {
                float f11 = this.f3281g;
                if (f11 != -1.0f) {
                    f10 = f11 * this.f3283i;
                    if (z10 && this.f3282h == f10) {
                        return;
                    }
                    this.f3282h = f10;
                    a.a(surface, f10);
                }
            }
            f10 = 0.0f;
            if (z10) {
            }
            this.f3282h = f10;
            a.a(surface, f10);
        }
    }

    public long b(long j10) {
        long j11;
        e eVar;
        if (this.f3290p != -1 && this.f3275a.e()) {
            long a10 = this.f3291q + (((float) (this.f3275a.a() * (this.f3287m - this.f3290p))) / this.f3283i);
            if (c(j10, a10)) {
                j11 = a10;
                this.f3288n = this.f3287m;
                this.f3289o = j11;
                eVar = this.f3277c;
                if (eVar == null && this.f3285k != -9223372036854775807L) {
                    long j12 = eVar.f3296a;
                    if (j12 == -9223372036854775807L) {
                        return j11;
                    }
                    return e(j11, j12, this.f3285k) - this.f3286l;
                }
                return j11;
            }
            n();
        }
        j11 = j10;
        this.f3288n = this.f3287m;
        this.f3289o = j11;
        eVar = this.f3277c;
        if (eVar == null) {
        }
        return j11;
    }

    public void g(float f10) {
        this.f3280f = f10;
        this.f3275a.g();
        q();
    }

    public void h(long j10) {
        long j11 = this.f3288n;
        if (j11 != -1) {
            this.f3290p = j11;
            this.f3291q = this.f3289o;
        }
        this.f3287m++;
        this.f3275a.f(j10 * 1000);
        q();
    }

    public void i(float f10) {
        this.f3283i = f10;
        n();
        r(false);
    }

    public void j() {
        n();
    }

    public void k() {
        this.f3278d = true;
        n();
        if (this.f3276b != null) {
            ((e) b7.a.e(this.f3277c)).a();
            this.f3276b.a(new b.a() { // from class: c7.k
                @Override // c7.m.b.a
                public final void a(Display display) {
                    m.this.p(display);
                }
            });
        }
        r(false);
    }

    public void l() {
        this.f3278d = false;
        b bVar = this.f3276b;
        if (bVar != null) {
            bVar.unregister();
            ((e) b7.a.e(this.f3277c)).e();
        }
        d();
    }

    public void m(@Nullable Surface surface) {
        if (surface instanceof PlaceholderSurface) {
            surface = null;
        }
        if (this.f3279e == surface) {
            return;
        }
        d();
        this.f3279e = surface;
        r(true);
    }

    public void o(int i10) {
        if (this.f3284j == i10) {
            return;
        }
        this.f3284j = i10;
        r(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VideoFrameReleaseHelper.java */
    /* loaded from: classes4.dex */
    public static final class c implements b {

        /* renamed from: a  reason: collision with root package name */
        private final WindowManager f3292a;

        private c(WindowManager windowManager) {
            this.f3292a = windowManager;
        }

        @Nullable
        public static b b(Context context) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                return new c(windowManager);
            }
            return null;
        }

        @Override // c7.m.b
        public void a(b.a aVar) {
            aVar.a(this.f3292a.getDefaultDisplay());
        }

        @Override // c7.m.b
        public void unregister() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VideoFrameReleaseHelper.java */
    @RequiresApi(17)
    /* loaded from: classes4.dex */
    public static final class d implements b, DisplayManager.DisplayListener {

        /* renamed from: a  reason: collision with root package name */
        private final DisplayManager f3293a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private b.a f3294b;

        private d(DisplayManager displayManager) {
            this.f3293a = displayManager;
        }

        private Display b() {
            return this.f3293a.getDisplay(0);
        }

        @Nullable
        public static b c(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                return new d(displayManager);
            }
            return null;
        }

        @Override // c7.m.b
        public void a(b.a aVar) {
            this.f3294b = aVar;
            this.f3293a.registerDisplayListener(this, s0.u());
            aVar.a(b());
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i10) {
            b.a aVar = this.f3294b;
            if (aVar != null && i10 == 0) {
                aVar.a(b());
            }
        }

        @Override // c7.m.b
        public void unregister() {
            this.f3293a.unregisterDisplayListener(this);
            this.f3294b = null;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i10) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i10) {
        }
    }
}
