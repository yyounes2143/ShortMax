package io.bidmachine.media3.exoplayer.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import cn.i0;
import cn.l;
import cn.m0;
import cn.r;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import wn.k;
/* loaded from: classes8.dex */
public final class Loader implements k {

    /* renamed from: d  reason: collision with root package name */
    public static final c f57092d = g(false, -9223372036854775807L);

    /* renamed from: e  reason: collision with root package name */
    public static final c f57093e = g(true, -9223372036854775807L);

    /* renamed from: f  reason: collision with root package name */
    public static final c f57094f = new c(2, -9223372036854775807L);

    /* renamed from: g  reason: collision with root package name */
    public static final c f57095g = new c(3, -9223372036854775807L);

    /* renamed from: a  reason: collision with root package name */
    private final xn.a f57096a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private d<? extends e> f57097b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private IOException f57098c;

    /* loaded from: classes8.dex */
    public static final class UnexpectedLoaderException extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public UnexpectedLoaderException(java.lang.Throwable r4) {
            /*
                r3 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "Unexpected "
                r0.append(r1)
                java.lang.Class r1 = r4.getClass()
                java.lang.String r1 = r1.getSimpleName()
                r0.append(r1)
                java.lang.String r1 = r4.getMessage()
                if (r1 == 0) goto L31
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = ": "
                r1.append(r2)
                java.lang.String r2 = r4.getMessage()
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                goto L33
            L31:
                java.lang.String r1 = ""
            L33:
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r3.<init>(r0, r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.upstream.Loader.UnexpectedLoaderException.<init>(java.lang.Throwable):void");
        }
    }

    /* loaded from: classes8.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final int f57099a;

        /* renamed from: b  reason: collision with root package name */
        private final long f57100b;

        public boolean c() {
            int i10 = this.f57099a;
            if (i10 == 0 || i10 == 1) {
                return true;
            }
            return false;
        }

        private c(int i10, long j10) {
            this.f57099a = i10;
            this.f57100b = j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes8.dex */
    public final class d<T extends e> extends Handler implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final int f57101a;

        /* renamed from: b  reason: collision with root package name */
        private final T f57102b;

        /* renamed from: c  reason: collision with root package name */
        private final long f57103c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private b<T> f57104d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private IOException f57105e;

        /* renamed from: f  reason: collision with root package name */
        private int f57106f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private Thread f57107g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f57108h;

        /* renamed from: i  reason: collision with root package name */
        private volatile boolean f57109i;

        public d(Looper looper, T t10, b<T> bVar, int i10, long j10) {
            super(looper);
            this.f57102b = t10;
            this.f57104d = bVar;
            this.f57101a = i10;
            this.f57103c = j10;
        }

        private void c() {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            ((b) cn.a.e(this.f57104d)).g(this.f57102b, elapsedRealtime, elapsedRealtime - this.f57103c, this.f57106f);
            this.f57105e = null;
            Loader.this.f57096a.execute((Runnable) cn.a.e(Loader.this.f57097b));
        }

        private void d() {
            Loader.this.f57097b = null;
        }

        private long e() {
            return Math.min((this.f57106f - 1) * 1000, 5000);
        }

        public void a(boolean z10) {
            this.f57109i = z10;
            this.f57105e = null;
            if (hasMessages(1)) {
                this.f57108h = true;
                removeMessages(1);
                if (!z10) {
                    sendEmptyMessage(2);
                }
            } else {
                synchronized (this) {
                    try {
                        this.f57108h = true;
                        this.f57102b.cancelLoad();
                        Thread thread = this.f57107g;
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
                ((b) cn.a.e(this.f57104d)).h(this.f57102b, elapsedRealtime, elapsedRealtime - this.f57103c, true);
                this.f57104d = null;
            }
        }

        public void f(int i10) throws IOException {
            IOException iOException = this.f57105e;
            if (iOException != null && this.f57106f > i10) {
                throw iOException;
            }
        }

        public void g(long j10) {
            boolean z10;
            if (Loader.this.f57097b == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.g(z10);
            Loader.this.f57097b = this;
            if (j10 > 0) {
                sendEmptyMessageDelayed(1, j10);
            } else {
                c();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            long e10;
            if (this.f57109i) {
                return;
            }
            int i10 = message.what;
            if (i10 == 1) {
                c();
            } else if (i10 != 4) {
                d();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j10 = elapsedRealtime - this.f57103c;
                b bVar = (b) cn.a.e(this.f57104d);
                if (this.f57108h) {
                    bVar.h(this.f57102b, elapsedRealtime, j10, false);
                    return;
                }
                int i11 = message.what;
                if (i11 != 2) {
                    if (i11 == 3) {
                        IOException iOException = (IOException) message.obj;
                        this.f57105e = iOException;
                        int i12 = this.f57106f + 1;
                        this.f57106f = i12;
                        c j11 = bVar.j(this.f57102b, elapsedRealtime, j10, iOException, i12);
                        if (j11.f57099a == 3) {
                            Loader.this.f57098c = this.f57105e;
                            return;
                        } else if (j11.f57099a != 2) {
                            if (j11.f57099a == 1) {
                                this.f57106f = 1;
                            }
                            if (j11.f57100b != -9223372036854775807L) {
                                e10 = j11.f57100b;
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
                    bVar.f(this.f57102b, elapsedRealtime, j10);
                } catch (RuntimeException e11) {
                    r.d("LoadTask", "Unexpected exception handling load completed", e11);
                    Loader.this.f57098c = new UnexpectedLoaderException(e11);
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
                    z10 = this.f57108h;
                    this.f57107g = Thread.currentThread();
                }
                if (!z10) {
                    i0.a("load:" + this.f57102b.getClass().getSimpleName());
                    try {
                        this.f57102b.load();
                        i0.b();
                    } catch (Throwable th2) {
                        i0.b();
                        throw th2;
                    }
                }
                synchronized (this) {
                    this.f57107g = null;
                    Thread.interrupted();
                }
                if (!this.f57109i) {
                    sendEmptyMessage(2);
                }
            } catch (IOException e10) {
                if (!this.f57109i) {
                    obtainMessage(3, e10).sendToTarget();
                }
            } catch (Error e11) {
                if (!this.f57109i) {
                    r.d("LoadTask", "Unexpected error loading stream", e11);
                    obtainMessage(4, e11).sendToTarget();
                }
                throw e11;
            } catch (Exception e12) {
                if (!this.f57109i) {
                    r.d("LoadTask", "Unexpected exception loading stream", e12);
                    obtainMessage(3, new UnexpectedLoaderException(e12)).sendToTarget();
                }
            } catch (OutOfMemoryError e13) {
                if (!this.f57109i) {
                    r.d("LoadTask", "OutOfMemory error loading stream", e13);
                    obtainMessage(3, new UnexpectedLoaderException(e13)).sendToTarget();
                }
            }
        }
    }

    /* loaded from: classes8.dex */
    public interface e {
        void cancelLoad();

        void load() throws IOException;
    }

    /* loaded from: classes8.dex */
    public interface f {
        void onLoaderReleased();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final f f57111a;

        public g(f fVar) {
            this.f57111a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f57111a.onLoaderReleased();
        }
    }

    public Loader(String str) {
        this(xn.a.r(m0.T0("ExoPlayer:Loader:" + str), new l() { // from class: wn.j
            @Override // cn.l
            public final void accept(Object obj) {
                ((ExecutorService) obj).shutdown();
            }
        }));
    }

    public static c g(boolean z10, long j10) {
        return new c(z10 ? 1 : 0, j10);
    }

    public void e() {
        ((d) cn.a.i(this.f57097b)).a(false);
    }

    public void f() {
        this.f57098c = null;
    }

    public boolean h() {
        if (this.f57098c != null) {
            return true;
        }
        return false;
    }

    public boolean i() {
        if (this.f57097b != null) {
            return true;
        }
        return false;
    }

    public void j(int i10) throws IOException {
        IOException iOException = this.f57098c;
        if (iOException == null) {
            d<? extends e> dVar = this.f57097b;
            if (dVar != null) {
                if (i10 == Integer.MIN_VALUE) {
                    i10 = dVar.f57101a;
                }
                dVar.f(i10);
                return;
            }
            return;
        }
        throw iOException;
    }

    public void k() {
        l(null);
    }

    public void l(@Nullable f fVar) {
        d<? extends e> dVar = this.f57097b;
        if (dVar != null) {
            dVar.a(true);
        }
        if (fVar != null) {
            this.f57096a.execute(new g(fVar));
        }
        this.f57096a.release();
    }

    public <T extends e> long m(T t10, b<T> bVar, int i10) {
        this.f57098c = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new d((Looper) cn.a.i(Looper.myLooper()), t10, bVar, i10, elapsedRealtime).g(0L);
        return elapsedRealtime;
    }

    @Override // wn.k
    public void maybeThrowError() throws IOException {
        j(Integer.MIN_VALUE);
    }

    public Loader(xn.a aVar) {
        this.f57096a = aVar;
    }

    /* loaded from: classes8.dex */
    public interface b<T extends e> {
        void f(T t10, long j10, long j11);

        void h(T t10, long j10, long j11, boolean z10);

        c j(T t10, long j10, long j11, IOException iOException, int i10);

        default void g(T t10, long j10, long j11, int i10) {
        }
    }
}
