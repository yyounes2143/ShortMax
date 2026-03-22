package r5;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import java.util.ArrayDeque;
import r5.f;
/* compiled from: SimpleDecoder.java */
/* loaded from: classes4.dex */
public abstract class h<I extends DecoderInputBuffer, O extends f, E extends DecoderException> implements d<I, O, E> {

    /* renamed from: a  reason: collision with root package name */
    private final Thread f65592a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f65593b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<I> f65594c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayDeque<O> f65595d = new ArrayDeque<>();

    /* renamed from: e  reason: collision with root package name */
    private final I[] f65596e;

    /* renamed from: f  reason: collision with root package name */
    private final O[] f65597f;

    /* renamed from: g  reason: collision with root package name */
    private int f65598g;

    /* renamed from: h  reason: collision with root package name */
    private int f65599h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private I f65600i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private E f65601j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f65602k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f65603l;

    /* renamed from: m  reason: collision with root package name */
    private int f65604m;

    /* compiled from: SimpleDecoder.java */
    /* loaded from: classes4.dex */
    class a extends Thread {
        a(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            h.this.p();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h(I[] iArr, O[] oArr) {
        this.f65596e = iArr;
        this.f65598g = iArr.length;
        for (int i10 = 0; i10 < this.f65598g; i10++) {
            this.f65596e[i10] = c();
        }
        this.f65597f = oArr;
        this.f65599h = oArr.length;
        for (int i11 = 0; i11 < this.f65599h; i11++) {
            this.f65597f[i11] = d();
        }
        a aVar = new a("ExoPlayer:SimpleDecoder");
        this.f65592a = aVar;
        aVar.start();
    }

    private boolean b() {
        if (!this.f65594c.isEmpty() && this.f65599h > 0) {
            return true;
        }
        return false;
    }

    private boolean g() throws InterruptedException {
        E e10;
        synchronized (this.f65593b) {
            while (!this.f65603l && !b()) {
                try {
                    this.f65593b.wait();
                } finally {
                }
            }
            if (this.f65603l) {
                return false;
            }
            I removeFirst = this.f65594c.removeFirst();
            O[] oArr = this.f65597f;
            int i10 = this.f65599h - 1;
            this.f65599h = i10;
            O o10 = oArr[i10];
            boolean z10 = this.f65602k;
            this.f65602k = false;
            if (removeFirst.h()) {
                o10.a(4);
            } else {
                if (removeFirst.g()) {
                    o10.a(Integer.MIN_VALUE);
                }
                if (removeFirst.i()) {
                    o10.a(134217728);
                }
                try {
                    e10 = f(removeFirst, o10, z10);
                } catch (OutOfMemoryError e11) {
                    e10 = e(e11);
                } catch (RuntimeException e12) {
                    e10 = e(e12);
                }
                if (e10 != null) {
                    synchronized (this.f65593b) {
                        this.f65601j = e10;
                    }
                    return false;
                }
            }
            synchronized (this.f65593b) {
                try {
                    if (this.f65602k) {
                        o10.l();
                    } else if (o10.g()) {
                        this.f65604m++;
                        o10.l();
                    } else {
                        o10.f65586c = this.f65604m;
                        this.f65604m = 0;
                        this.f65595d.addLast(o10);
                    }
                    m(removeFirst);
                } finally {
                }
            }
            return true;
        }
    }

    private void j() {
        if (b()) {
            this.f65593b.notify();
        }
    }

    private void k() throws DecoderException {
        E e10 = this.f65601j;
        if (e10 == null) {
            return;
        }
        throw e10;
    }

    private void m(I i10) {
        i10.b();
        I[] iArr = this.f65596e;
        int i11 = this.f65598g;
        this.f65598g = i11 + 1;
        iArr[i11] = i10;
    }

    private void o(O o10) {
        o10.b();
        O[] oArr = this.f65597f;
        int i10 = this.f65599h;
        this.f65599h = i10 + 1;
        oArr[i10] = o10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        do {
            try {
            } catch (InterruptedException e10) {
                throw new IllegalStateException(e10);
            }
        } while (g());
    }

    protected abstract I c();

    protected abstract O d();

    protected abstract E e(Throwable th2);

    @Nullable
    protected abstract E f(I i10, O o10, boolean z10);

    @Override // r5.d
    public final void flush() {
        synchronized (this.f65593b) {
            try {
                this.f65602k = true;
                this.f65604m = 0;
                I i10 = this.f65600i;
                if (i10 != null) {
                    m(i10);
                    this.f65600i = null;
                }
                while (!this.f65594c.isEmpty()) {
                    m(this.f65594c.removeFirst());
                }
                while (!this.f65595d.isEmpty()) {
                    this.f65595d.removeFirst().l();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // r5.d
    @Nullable
    /* renamed from: h */
    public final I dequeueInputBuffer() throws DecoderException {
        boolean z10;
        I i10;
        synchronized (this.f65593b) {
            k();
            if (this.f65600i == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            b7.a.g(z10);
            int i11 = this.f65598g;
            if (i11 == 0) {
                i10 = null;
            } else {
                I[] iArr = this.f65596e;
                int i12 = i11 - 1;
                this.f65598g = i12;
                i10 = iArr[i12];
            }
            this.f65600i = i10;
        }
        return i10;
    }

    @Override // r5.d
    @Nullable
    /* renamed from: i */
    public final O dequeueOutputBuffer() throws DecoderException {
        synchronized (this.f65593b) {
            try {
                k();
                if (this.f65595d.isEmpty()) {
                    return null;
                }
                return this.f65595d.removeFirst();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // r5.d
    /* renamed from: l */
    public final void queueInputBuffer(I i10) throws DecoderException {
        boolean z10;
        synchronized (this.f65593b) {
            k();
            if (i10 == this.f65600i) {
                z10 = true;
            } else {
                z10 = false;
            }
            b7.a.a(z10);
            this.f65594c.addLast(i10);
            j();
            this.f65600i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void n(O o10) {
        synchronized (this.f65593b) {
            o(o10);
            j();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void q(int i10) {
        boolean z10;
        if (this.f65598g == this.f65596e.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        for (I i11 : this.f65596e) {
            i11.m(i10);
        }
    }

    @Override // r5.d
    @CallSuper
    public void release() {
        synchronized (this.f65593b) {
            this.f65603l = true;
            this.f65593b.notify();
        }
        try {
            this.f65592a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
