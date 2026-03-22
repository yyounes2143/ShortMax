package zo;

import androidx.annotation.Nullable;
import cn.m0;
import fn.e;
import io.bidmachine.media3.extractor.text.SubtitleDecoderException;
import java.util.ArrayDeque;
import yo.k;
import yo.l;
import yo.o;
import yo.p;
import zo.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CeaDecoder.java */
/* loaded from: classes8.dex */
public abstract class e implements l {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayDeque<b> f72321a = new ArrayDeque<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<p> f72322b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f72323c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f72324d;

    /* renamed from: e  reason: collision with root package name */
    private long f72325e;

    /* renamed from: f  reason: collision with root package name */
    private long f72326f;

    /* renamed from: g  reason: collision with root package name */
    private long f72327g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CeaDecoder.java */
    /* loaded from: classes8.dex */
    public static final class b extends o implements Comparable<b> {

        /* renamed from: k  reason: collision with root package name */
        private long f72328k;

        private b() {
        }

        @Override // java.lang.Comparable
        /* renamed from: s */
        public int compareTo(b bVar) {
            if (f() != bVar.f()) {
                if (!f()) {
                    return -1;
                }
                return 1;
            }
            long j10 = this.f55347f - bVar.f55347f;
            if (j10 == 0) {
                j10 = this.f72328k - bVar.f72328k;
                if (j10 == 0) {
                    return 0;
                }
            }
            if (j10 <= 0) {
                return -1;
            }
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CeaDecoder.java */
    /* loaded from: classes8.dex */
    public static final class c extends p {

        /* renamed from: g  reason: collision with root package name */
        private e.a<c> f72329g;

        public c(e.a<c> aVar) {
            this.f72329g = aVar;
        }

        @Override // fn.e
        public final void l() {
            this.f72329g.a(this);
        }
    }

    public e() {
        for (int i10 = 0; i10 < 10; i10++) {
            this.f72321a.add(new b());
        }
        this.f72322b = new ArrayDeque<>();
        for (int i11 = 0; i11 < 2; i11++) {
            this.f72322b.add(new c(new e.a() { // from class: zo.d
                @Override // fn.e.a
                public final void a(fn.e eVar) {
                    e.this.l((e.c) eVar);
                }
            }));
        }
        this.f72323c = new ArrayDeque<>();
        this.f72327g = -9223372036854775807L;
    }

    private void k(b bVar) {
        bVar.b();
        this.f72321a.add(bVar);
    }

    @Override // fn.d
    public final void a(long j10) {
        this.f72327g = j10;
    }

    protected abstract k c();

    protected abstract void d(o oVar);

    @Override // fn.d
    @Nullable
    /* renamed from: e */
    public o dequeueInputBuffer() throws SubtitleDecoderException {
        boolean z10;
        if (this.f72324d == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        if (this.f72321a.isEmpty()) {
            return null;
        }
        b pollFirst = this.f72321a.pollFirst();
        this.f72324d = pollFirst;
        return pollFirst;
    }

    @Override // fn.d
    @Nullable
    /* renamed from: f */
    public p dequeueOutputBuffer() throws SubtitleDecoderException {
        if (this.f72322b.isEmpty()) {
            return null;
        }
        while (!this.f72323c.isEmpty() && ((b) m0.i(this.f72323c.peek())).f55347f <= this.f72325e) {
            b bVar = (b) m0.i(this.f72323c.poll());
            if (bVar.f()) {
                p pVar = (p) m0.i(this.f72322b.pollFirst());
                pVar.a(4);
                k(bVar);
                return pVar;
            }
            d(bVar);
            if (i()) {
                k c10 = c();
                p pVar2 = (p) m0.i(this.f72322b.pollFirst());
                pVar2.m(bVar.f55347f, c10, Long.MAX_VALUE);
                k(bVar);
                return pVar2;
            }
            k(bVar);
        }
        return null;
    }

    @Override // fn.d
    public void flush() {
        this.f72326f = 0L;
        this.f72325e = 0L;
        while (!this.f72323c.isEmpty()) {
            k((b) m0.i(this.f72323c.poll()));
        }
        b bVar = this.f72324d;
        if (bVar != null) {
            k(bVar);
            this.f72324d = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final p g() {
        return this.f72322b.pollFirst();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long h() {
        return this.f72325e;
    }

    protected abstract boolean i();

    @Override // fn.d
    /* renamed from: j */
    public void queueInputBuffer(o oVar) throws SubtitleDecoderException {
        boolean z10;
        if (oVar == this.f72324d) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        b bVar = (b) oVar;
        if (!bVar.f()) {
            long j10 = bVar.f55347f;
            if (j10 != Long.MIN_VALUE) {
                long j11 = this.f72327g;
                if (j11 != -9223372036854775807L && j10 < j11) {
                    k(bVar);
                    this.f72324d = null;
                }
            }
        }
        long j12 = this.f72326f;
        this.f72326f = 1 + j12;
        bVar.f72328k = j12;
        this.f72323c.add(bVar);
        this.f72324d = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void l(p pVar) {
        pVar.b();
        this.f72322b.add(pVar);
    }

    @Override // yo.l
    public void setPositionUs(long j10) {
        this.f72325e = j10;
    }

    @Override // fn.d
    public void release() {
    }
}
