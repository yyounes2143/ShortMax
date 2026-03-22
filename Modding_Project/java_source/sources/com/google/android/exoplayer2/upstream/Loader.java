package com.google.android.exoplayer2.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import b7.p0;
import b7.q;
import b7.s0;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes4.dex */
public final class Loader {

    /* renamed from: d  reason: collision with root package name */
    public static final c f19079d = g(false, -9223372036854775807L);

    /* renamed from: e  reason: collision with root package name */
    public static final c f19080e = g(true, -9223372036854775807L);

    /* renamed from: f  reason: collision with root package name */
    public static final c f19081f = new c(2, -9223372036854775807L);

    /* renamed from: g  reason: collision with root package name */
    public static final c f19082g = new c(3, -9223372036854775807L);

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f19083a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private d<? extends e> f19084b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private IOException f19085c;

    /* loaded from: classes4.dex */
    public static final class UnexpectedLoaderException extends IOException {
        public UnexpectedLoaderException(Throwable th2) {
            super("Unexpected " + th2.getClass().getSimpleName() + ": " + th2.getMessage(), th2);
        }
    }

    /* loaded from: classes4.dex */
    public interface b<T extends e> {
        void d(T t10, long j10, long j11, boolean z10);

        void e(T t10, long j10, long j11);

        c g(T t10, long j10, long j11, IOException iOException, int i10);
    }

    /* loaded from: classes4.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final int f19086a;

        /* renamed from: b  reason: collision with root package name */
        private final long f19087b;

        public boolean c() {
            int i10 = this.f19086a;
            if (i10 == 0 || i10 == 1) {
                return true;
            }
            return false;
        }

        private c(int i10, long j10) {
            this.f19086a = i10;
            this.f19087b = j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes4.dex */
    public final class d<T extends e> extends Handler implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final int f19088a;

        /* renamed from: b  reason: collision with root package name */
        private final T f19089b;

        /* renamed from: c  reason: collision with root package name */
        private final long f19090c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private b<T> f19091d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private IOException f19092e;

        /* renamed from: f  reason: collision with root package name */
        private int f19093f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private Thread f19094g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f19095h;

        /* renamed from: i  reason: collision with root package name */
        private volatile boolean f19096i;

        public d(Looper looper, T t10, b<T> bVar, int i10, long j10) {
            super(looper);
            this.f19089b = t10;
            this.f19091d = bVar;
            this.f19088a = i10;
            this.f19090c = j10;
        }

        private void c() {
            this.f19092e = null;
            Loader.this.f19083a.execute((Runnable) b7.a.e(Loader.this.f19084b));
        }

        private void d() {
            Loader.this.f19084b = null;
        }

        private long e() {
            return Math.min((this.f19093f - 1) * 1000, 5000);
        }

        public void a(boolean z10) {
            this.f19096i = z10;
            this.f19092e = null;
            if (hasMessages(0)) {
                this.f19095h = true;
                removeMessages(0);
                if (!z10) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    try {
                        this.f19095h = true;
                        this.f19089b.cancelLoad();
                        Thread thread = this.f19094g;
                        if (thread != null) {
                            thread.interrupt();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            if (z10) {
                d();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                ((b) b7.a.e(this.f19091d)).d(this.f19089b, elapsedRealtime, elapsedRealtime - this.f19090c, true);
                this.f19091d = null;
            }
        }

        public void f(int i10) throws IOException {
            IOException iOException = this.f19092e;
            if (iOException != null && this.f19093f > i10) {
                throw iOException;
            }
        }

        public void g(long j10) {
            boolean z10;
            if (Loader.this.f19084b == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            b7.a.g(z10);
            Loader.this.f19084b = this;
            if (j10 > 0) {
                sendEmptyMessageDelayed(0, j10);
            } else {
                c();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            long e10;
            if (this.f19096i) {
                return;
            }
            int i10 = message.what;
            if (i10 == 0) {
                c();
            } else if (i10 != 3) {
                d();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j10 = elapsedRealtime - this.f19090c;
                b bVar = (b) b7.a.e(this.f19091d);
                if (this.f19095h) {
                    bVar.d(this.f19089b, elapsedRealtime, j10, false);
                    return;
                }
                int i11 = message.what;
                if (i11 != 1) {
                    if (i11 == 2) {
                        IOException iOException = (IOException) message.obj;
                        this.f19092e = iOException;
                        int i12 = this.f19093f + 1;
                        this.f19093f = i12;
                        c g10 = bVar.g(this.f19089b, elapsedRealtime, j10, iOException, i12);
                        if (g10.f19086a == 3) {
                            Loader.this.f19085c = this.f19092e;
                            return;
                        } else if (g10.f19086a != 2) {
                            if (g10.f19086a == 1) {
                                this.f19093f = 1;
                            }
                            if (g10.f19087b != -9223372036854775807L) {
                                e10 = g10.f19087b;
                            } else {
                                e10 = e();
                            }
                            g(e10);
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                try {
                    bVar.e(this.f19089b, elapsedRealtime, j10);
                } catch (RuntimeException e11) {
                    q.d("LoadTask", "Unexpected exception handling load completed", e11);
                    Loader.this.f19085c = new UnexpectedLoaderException(e11);
                }
            } else {
                throw ((Error) message.obj);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10;
            try {
                synchronized (this) {
                    z10 = this.f19095h;
                    this.f19094g = Thread.currentThread();
                }
                if (!z10) {
                    p0.a("load:" + this.f19089b.getClass().getSimpleName());
                    try {
                        this.f19089b.load();
                        p0.c();
                    } catch (Throwable th2) {
                        p0.c();
                        throw th2;
                    }
                }
                synchronized (this) {
                    this.f19094g = null;
                    Thread.interrupted();
                }
                if (!this.f19096i) {
                    sendEmptyMessage(1);
                }
            } catch (IOException e10) {
                if (!this.f19096i) {
                    obtainMessage(2, e10).sendToTarget();
                }
            } catch (Error e11) {
                if (!this.f19096i) {
                    q.d("LoadTask", "Unexpected error loading stream", e11);
                    obtainMessage(3, e11).sendToTarget();
                }
                throw e11;
            } catch (Exception e12) {
                if (!this.f19096i) {
                    q.d("LoadTask", "Unexpected exception loading stream", e12);
                    obtainMessage(2, new UnexpectedLoaderException(e12)).sendToTarget();
                }
            } catch (OutOfMemoryError e13) {
                if (!this.f19096i) {
                    q.d("LoadTask", "OutOfMemory error loading stream", e13);
                    obtainMessage(2, new UnexpectedLoaderException(e13)).sendToTarget();
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface e {
        void cancelLoad();

        void load() throws IOException;
    }

    /* loaded from: classes4.dex */
    public interface f {
        void onLoaderReleased();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final f f19098a;

        public g(f fVar) {
            this.f19098a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f19098a.onLoaderReleased();
        }
    }

    public Loader(String str) {
        this.f19083a = s0.x0("ExoPlayer:Loader:" + str);
    }

    public static c g(boolean z10, long j10) {
        return new c(z10 ? 1 : 0, j10);
    }

    public void e() {
        ((d) b7.a.i(this.f19084b)).a(false);
    }

    public void f() {
        this.f19085c = null;
    }

    public boolean h() {
        if (this.f19085c != null) {
            return true;
        }
        return false;
    }

    public boolean i() {
        if (this.f19084b != null) {
            return true;
        }
        return false;
    }

    public void j() throws IOException {
        k(Integer.MIN_VALUE);
    }

    public void k(int i10) throws IOException {
        IOException iOException = this.f19085c;
        if (iOException == null) {
            d<? extends e> dVar = this.f19084b;
            if (dVar != null) {
                if (i10 == Integer.MIN_VALUE) {
                    i10 = dVar.f19088a;
                }
                dVar.f(i10);
                return;
            }
            return;
        }
        throw iOException;
    }

    public void l() {
        m(null);
    }

    public void m(@Nullable f fVar) {
        d<? extends e> dVar = this.f19084b;
        if (dVar != null) {
            dVar.a(true);
        }
        if (fVar != null) {
            this.f19083a.execute(new g(fVar));
        }
        this.f19083a.shutdown();
    }

    public <T extends e> long n(T t10, b<T> bVar, int i10) {
        this.f19085c = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new d((Looper) b7.a.i(Looper.myLooper()), t10, bVar, i10, elapsedRealtime).g(0L);
        return elapsedRealtime;
    }
}
