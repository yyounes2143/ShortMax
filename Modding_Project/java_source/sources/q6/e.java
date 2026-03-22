package q6;

import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.util.ArrayDeque;
import java.util.PriorityQueue;
import p6.i;
import p6.j;
import p6.m;
import p6.n;
import q6.e;
import r5.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CeaDecoder.java */
/* loaded from: classes4.dex */
public abstract class e implements j {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayDeque<b> f65203a = new ArrayDeque<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<n> f65204b;

    /* renamed from: c  reason: collision with root package name */
    private final PriorityQueue<b> f65205c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f65206d;

    /* renamed from: e  reason: collision with root package name */
    private long f65207e;

    /* renamed from: f  reason: collision with root package name */
    private long f65208f;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CeaDecoder.java */
    /* loaded from: classes4.dex */
    public static final class b extends m implements Comparable<b> {

        /* renamed from: j  reason: collision with root package name */
        private long f65209j;

        private b() {
        }

        @Override // java.lang.Comparable
        /* renamed from: s */
        public int compareTo(b bVar) {
            if (h() != bVar.h()) {
                if (!h()) {
                    return -1;
                }
                return 1;
            }
            long j10 = this.f17475e - bVar.f17475e;
            if (j10 == 0) {
                j10 = this.f65209j - bVar.f65209j;
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
    /* loaded from: classes4.dex */
    public static final class c extends n {

        /* renamed from: f  reason: collision with root package name */
        private f.a<c> f65210f;

        public c(f.a<c> aVar) {
            this.f65210f = aVar;
        }

        @Override // r5.f
        public final void l() {
            this.f65210f.a(this);
        }
    }

    public e() {
        for (int i10 = 0; i10 < 10; i10++) {
            this.f65203a.add(new b());
        }
        this.f65204b = new ArrayDeque<>();
        for (int i11 = 0; i11 < 2; i11++) {
            this.f65204b.add(new c(new f.a() { // from class: q6.d
                @Override // r5.f.a
                public final void a(r5.f fVar) {
                    e.this.j((e.c) fVar);
                }
            }));
        }
        this.f65205c = new PriorityQueue<>();
    }

    private void i(b bVar) {
        bVar.b();
        this.f65203a.add(bVar);
    }

    protected abstract i a();

    protected abstract void b(m mVar);

    @Override // r5.d
    @Nullable
    /* renamed from: c */
    public m dequeueInputBuffer() throws SubtitleDecoderException {
        boolean z10;
        if (this.f65206d == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        if (this.f65203a.isEmpty()) {
            return null;
        }
        b pollFirst = this.f65203a.pollFirst();
        this.f65206d = pollFirst;
        return pollFirst;
    }

    @Override // r5.d
    @Nullable
    /* renamed from: d */
    public n dequeueOutputBuffer() throws SubtitleDecoderException {
        if (this.f65204b.isEmpty()) {
            return null;
        }
        while (!this.f65205c.isEmpty() && ((b) s0.j(this.f65205c.peek())).f17475e <= this.f65207e) {
            b bVar = (b) s0.j(this.f65205c.poll());
            if (bVar.h()) {
                n nVar = (n) s0.j(this.f65204b.pollFirst());
                nVar.a(4);
                i(bVar);
                return nVar;
            }
            b(bVar);
            if (g()) {
                i a10 = a();
                n nVar2 = (n) s0.j(this.f65204b.pollFirst());
                nVar2.m(bVar.f17475e, a10, Long.MAX_VALUE);
                i(bVar);
                return nVar2;
            }
            i(bVar);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final n e() {
        return this.f65204b.pollFirst();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long f() {
        return this.f65207e;
    }

    @Override // r5.d
    public void flush() {
        this.f65208f = 0L;
        this.f65207e = 0L;
        while (!this.f65205c.isEmpty()) {
            i((b) s0.j(this.f65205c.poll()));
        }
        b bVar = this.f65206d;
        if (bVar != null) {
            i(bVar);
            this.f65206d = null;
        }
    }

    protected abstract boolean g();

    @Override // r5.d
    /* renamed from: h */
    public void queueInputBuffer(m mVar) throws SubtitleDecoderException {
        boolean z10;
        if (mVar == this.f65206d) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        b bVar = (b) mVar;
        if (bVar.g()) {
            i(bVar);
        } else {
            long j10 = this.f65208f;
            this.f65208f = 1 + j10;
            bVar.f65209j = j10;
            this.f65205c.add(bVar);
        }
        this.f65206d = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void j(n nVar) {
        nVar.b();
        this.f65204b.add(nVar);
    }

    @Override // p6.j
    public void setPositionUs(long j10) {
        this.f65207e = j10;
    }

    @Override // r5.d
    public void release() {
    }
}
