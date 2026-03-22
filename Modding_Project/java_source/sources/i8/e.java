package i8;

import a5.h;
import a5.j;
import android.annotation.SuppressLint;
import android.os.SystemClock;
import c5.l;
import com.google.android.datatransport.Priority;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.crashlytics.internal.common.b0;
import com.google.firebase.crashlytics.internal.common.n0;
import com.google.firebase.crashlytics.internal.common.v0;
import e8.f0;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import z7.g;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReportQueue.java */
/* loaded from: classes5.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final double f53332a;

    /* renamed from: b  reason: collision with root package name */
    private final double f53333b;

    /* renamed from: c  reason: collision with root package name */
    private final long f53334c;

    /* renamed from: d  reason: collision with root package name */
    private final long f53335d;

    /* renamed from: e  reason: collision with root package name */
    private final int f53336e;

    /* renamed from: f  reason: collision with root package name */
    private final BlockingQueue<Runnable> f53337f;

    /* renamed from: g  reason: collision with root package name */
    private final ThreadPoolExecutor f53338g;

    /* renamed from: h  reason: collision with root package name */
    private final h<f0> f53339h;

    /* renamed from: i  reason: collision with root package name */
    private final n0 f53340i;

    /* renamed from: j  reason: collision with root package name */
    private int f53341j;

    /* renamed from: k  reason: collision with root package name */
    private long f53342k;

    /* compiled from: ReportQueue.java */
    /* loaded from: classes5.dex */
    private final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final b0 f53343a;

        /* renamed from: b  reason: collision with root package name */
        private final TaskCompletionSource<b0> f53344b;

        @Override // java.lang.Runnable
        public void run() {
            e.this.p(this.f53343a, this.f53344b);
            e.this.f53340i.c();
            double g10 = e.this.g();
            g f10 = g.f();
            f10.b("Delay for: " + String.format(Locale.US, "%.2f", Double.valueOf(g10 / 1000.0d)) + " s for report: " + this.f53343a.d());
            e.q(g10);
        }

        private b(b0 b0Var, TaskCompletionSource<b0> taskCompletionSource) {
            this.f53343a = b0Var;
            this.f53344b = taskCompletionSource;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(h<f0> hVar, com.google.firebase.crashlytics.internal.settings.c cVar, n0 n0Var) {
        this(cVar.f20859f, cVar.f20860g, cVar.f20861h * 1000, hVar, n0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double g() {
        return Math.min(3600000.0d, (60000.0d / this.f53332a) * Math.pow(this.f53333b, h()));
    }

    private int h() {
        int max;
        if (this.f53342k == 0) {
            this.f53342k = o();
        }
        int o10 = (int) ((o() - this.f53342k) / this.f53334c);
        if (l()) {
            max = Math.min(100, this.f53341j + o10);
        } else {
            max = Math.max(0, this.f53341j - o10);
        }
        if (this.f53341j != max) {
            this.f53341j = max;
            this.f53342k = o();
        }
        return max;
    }

    private boolean k() {
        if (this.f53337f.size() < this.f53336e) {
            return true;
        }
        return false;
    }

    private boolean l() {
        if (this.f53337f.size() == this.f53336e) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(CountDownLatch countDownLatch) {
        try {
            l.a(this.f53339h, Priority.HIGHEST);
        } catch (Exception unused) {
        }
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(TaskCompletionSource taskCompletionSource, boolean z10, b0 b0Var, Exception exc) {
        if (exc != null) {
            taskCompletionSource.trySetException(exc);
            return;
        }
        if (z10) {
            j();
        }
        taskCompletionSource.trySetResult(b0Var);
    }

    private long o() {
        return System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(final b0 b0Var, final TaskCompletionSource<b0> taskCompletionSource) {
        final boolean z10;
        g f10 = g.f();
        f10.b("Sending report through Google DataTransport: " + b0Var.d());
        if (SystemClock.elapsedRealtime() - this.f53335d < 2000) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f53339h.a(a5.d.h(b0Var.b()), new j() { // from class: i8.c
            @Override // a5.j
            public final void a(Exception exc) {
                e.this.n(taskCompletionSource, z10, b0Var, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q(double d10) {
        try {
            Thread.sleep((long) d10);
        } catch (InterruptedException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TaskCompletionSource<b0> i(b0 b0Var, boolean z10) {
        synchronized (this.f53337f) {
            try {
                TaskCompletionSource<b0> taskCompletionSource = new TaskCompletionSource<>();
                if (z10) {
                    this.f53340i.b();
                    if (k()) {
                        g f10 = g.f();
                        f10.b("Enqueueing report: " + b0Var.d());
                        g f11 = g.f();
                        f11.b("Queue size: " + this.f53337f.size());
                        this.f53338g.execute(new b(b0Var, taskCompletionSource));
                        g f12 = g.f();
                        f12.b("Closing task for report: " + b0Var.d());
                        taskCompletionSource.trySetResult(b0Var);
                        return taskCompletionSource;
                    }
                    h();
                    g f13 = g.f();
                    f13.b("Dropping report due to queue being full: " + b0Var.d());
                    this.f53340i.a();
                    taskCompletionSource.trySetResult(b0Var);
                    return taskCompletionSource;
                }
                p(b0Var, taskCompletionSource);
                return taskCompletionSource;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @SuppressLint({"DiscouragedApi", "ThreadPoolCreation"})
    public void j() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        new Thread(new Runnable() { // from class: i8.d
            @Override // java.lang.Runnable
            public final void run() {
                e.this.m(countDownLatch);
            }
        }).start();
        v0.c(countDownLatch, 2L, TimeUnit.SECONDS);
    }

    @SuppressLint({"ThreadPoolCreation"})
    e(double d10, double d11, long j10, h<f0> hVar, n0 n0Var) {
        this.f53332a = d10;
        this.f53333b = d11;
        this.f53334c = j10;
        this.f53339h = hVar;
        this.f53340i = n0Var;
        this.f53335d = SystemClock.elapsedRealtime();
        int i10 = (int) d10;
        this.f53336e = i10;
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(i10);
        this.f53337f = arrayBlockingQueue;
        this.f53338g = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, arrayBlockingQueue);
        this.f53341j = 0;
        this.f53342k = 0L;
    }
}
