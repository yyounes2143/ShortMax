package fn;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import fn.e;
import io.bidmachine.media3.decoder.DecoderException;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import java.util.ArrayDeque;
/* compiled from: SimpleDecoder.java */
/* loaded from: classes8.dex */
public abstract class f<I extends DecoderInputBuffer, O extends e, E extends DecoderException> implements d<I, O, E> {

    /* renamed from: a  reason: collision with root package name */
    private final Thread f51844a;

    /* renamed from: e  reason: collision with root package name */
    private final I[] f51848e;

    /* renamed from: f  reason: collision with root package name */
    private final O[] f51849f;

    /* renamed from: g  reason: collision with root package name */
    private int f51850g;

    /* renamed from: h  reason: collision with root package name */
    private int f51851h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private I f51852i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private E f51853j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f51854k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f51855l;

    /* renamed from: m  reason: collision with root package name */
    private int f51856m;

    /* renamed from: b  reason: collision with root package name */
    private final Object f51845b = new Object();

    /* renamed from: n  reason: collision with root package name */
    private long f51857n = -9223372036854775807L;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<I> f51846c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayDeque<O> f51847d = new ArrayDeque<>();

    /* compiled from: SimpleDecoder.java */
    /* loaded from: classes8.dex */
    class a extends Thread {
        a(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            f.this.r();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public f(I[] iArr, O[] oArr) {
        this.f51848e = iArr;
        this.f51850g = iArr.length;
        for (int i10 = 0; i10 < this.f51850g; i10++) {
            this.f51848e[i10] = e();
        }
        this.f51849f = oArr;
        this.f51851h = oArr.length;
        for (int i11 = 0; i11 < this.f51851h; i11++) {
            this.f51849f[i11] = f();
        }
        a aVar = new a("ExoPlayer:SimpleDecoder");
        this.f51844a = aVar;
        aVar.start();
    }

    private boolean d() {
        if (!this.f51846c.isEmpty() && this.f51851h > 0) {
            return true;
        }
        return false;
    }

    private boolean i() throws InterruptedException {
        E g10;
        synchronized (this.f51845b) {
            while (!this.f51855l && !d()) {
                try {
                    this.f51845b.wait();
                } finally {
                }
            }
            if (this.f51855l) {
                return false;
            }
            I removeFirst = this.f51846c.removeFirst();
            O[] oArr = this.f51849f;
            int i10 = this.f51851h - 1;
            this.f51851h = i10;
            O o10 = oArr[i10];
            boolean z10 = this.f51854k;
            this.f51854k = false;
            if (removeFirst.f()) {
                o10.a(4);
            } else {
                o10.f51841b = removeFirst.f55347f;
                if (removeFirst.g()) {
                    o10.a(134217728);
                }
                if (!l(removeFirst.f55347f)) {
                    o10.f51843d = true;
                }
                try {
                    g10 = h(removeFirst, o10, z10);
                } catch (OutOfMemoryError e10) {
                    g10 = g(e10);
                } catch (RuntimeException e11) {
                    g10 = g(e11);
                }
                if (g10 != null) {
                    synchronized (this.f51845b) {
                        this.f51853j = g10;
                    }
                    return false;
                }
            }
            synchronized (this.f51845b) {
                try {
                    if (this.f51854k) {
                        o10.l();
                    } else if (o10.f51843d) {
                        this.f51856m++;
                        o10.l();
                    } else {
                        o10.f51842c = this.f51856m;
                        this.f51856m = 0;
                        this.f51847d.addLast(o10);
                    }
                    o(removeFirst);
                } finally {
                }
            }
            return true;
        }
    }

    private void m() {
        if (d()) {
            this.f51845b.notify();
        }
    }

    private void n() throws DecoderException {
        E e10 = this.f51853j;
        if (e10 == null) {
            return;
        }
        throw e10;
    }

    private void o(I i10) {
        i10.b();
        I[] iArr = this.f51848e;
        int i11 = this.f51850g;
        this.f51850g = i11 + 1;
        iArr[i11] = i10;
    }

    private void q(O o10) {
        o10.b();
        O[] oArr = this.f51849f;
        int i10 = this.f51851h;
        this.f51851h = i10 + 1;
        oArr[i10] = o10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        do {
            try {
            } catch (InterruptedException e10) {
                throw new IllegalStateException(e10);
            }
        } while (i());
    }

    @Override // fn.d
    public final void a(long j10) {
        boolean z10;
        synchronized (this.f51845b) {
            try {
                if (this.f51850g != this.f51848e.length && !this.f51854k) {
                    z10 = false;
                    cn.a.g(z10);
                    this.f51857n = j10;
                }
                z10 = true;
                cn.a.g(z10);
                this.f51857n = j10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // fn.d
    /* renamed from: b */
    public final void queueInputBuffer(I i10) throws DecoderException {
        boolean z10;
        synchronized (this.f51845b) {
            n();
            if (i10 == this.f51852i) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.a(z10);
            this.f51846c.addLast(i10);
            m();
            this.f51852i = null;
        }
    }

    protected abstract I e();

    protected abstract O f();

    @Override // fn.d
    public final void flush() {
        synchronized (this.f51845b) {
            try {
                this.f51854k = true;
                this.f51856m = 0;
                I i10 = this.f51852i;
                if (i10 != null) {
                    o(i10);
                    this.f51852i = null;
                }
                while (!this.f51846c.isEmpty()) {
                    o(this.f51846c.removeFirst());
                }
                while (!this.f51847d.isEmpty()) {
                    this.f51847d.removeFirst().l();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected abstract E g(Throwable th2);

    @Nullable
    protected abstract E h(I i10, O o10, boolean z10);

    @Override // fn.d
    @Nullable
    /* renamed from: j */
    public final I dequeueInputBuffer() throws DecoderException {
        boolean z10;
        I i10;
        synchronized (this.f51845b) {
            n();
            if (this.f51852i == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.g(z10);
            int i11 = this.f51850g;
            if (i11 == 0) {
                i10 = null;
            } else {
                I[] iArr = this.f51848e;
                int i12 = i11 - 1;
                this.f51850g = i12;
                i10 = iArr[i12];
            }
            this.f51852i = i10;
        }
        return i10;
    }

    @Override // fn.d
    @Nullable
    /* renamed from: k */
    public final O dequeueOutputBuffer() throws DecoderException {
        synchronized (this.f51845b) {
            try {
                n();
                if (this.f51847d.isEmpty()) {
                    return null;
                }
                return this.f51847d.removeFirst();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected final boolean l(long j10) {
        boolean z10;
        synchronized (this.f51845b) {
            long j11 = this.f51857n;
            if (j11 != -9223372036854775807L && j10 < j11) {
                z10 = false;
            }
            z10 = true;
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void p(O o10) {
        synchronized (this.f51845b) {
            q(o10);
            m();
        }
    }

    @Override // fn.d
    @CallSuper
    public void release() {
        synchronized (this.f51845b) {
            this.f51855l = true;
            this.f51845b.notify();
        }
        try {
            this.f51844a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void s(int i10) {
        boolean z10;
        if (this.f51850g == this.f51848e.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        for (I i11 : this.f51848e) {
            i11.m(i10);
        }
    }
}
