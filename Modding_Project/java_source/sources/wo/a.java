package wo;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import ao.j0;
import ao.k0;
import ao.q;
import ao.s;
import cn.m0;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultOggSeeker.java */
/* loaded from: classes8.dex */
public final class a implements g {

    /* renamed from: a  reason: collision with root package name */
    private final f f70034a;

    /* renamed from: b  reason: collision with root package name */
    private final long f70035b;

    /* renamed from: c  reason: collision with root package name */
    private final long f70036c;

    /* renamed from: d  reason: collision with root package name */
    private final i f70037d;

    /* renamed from: e  reason: collision with root package name */
    private int f70038e;

    /* renamed from: f  reason: collision with root package name */
    private long f70039f;

    /* renamed from: g  reason: collision with root package name */
    private long f70040g;

    /* renamed from: h  reason: collision with root package name */
    private long f70041h;

    /* renamed from: i  reason: collision with root package name */
    private long f70042i;

    /* renamed from: j  reason: collision with root package name */
    private long f70043j;

    /* renamed from: k  reason: collision with root package name */
    private long f70044k;

    /* renamed from: l  reason: collision with root package name */
    private long f70045l;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultOggSeeker.java */
    /* loaded from: classes8.dex */
    public final class b implements j0 {
        private b() {
        }

        @Override // ao.j0
        public long getDurationUs() {
            return a.this.f70037d.b(a.this.f70039f);
        }

        @Override // ao.j0
        public j0.a getSeekPoints(long j10) {
            return new j0.a(new k0(j10, m0.q((a.this.f70035b + BigInteger.valueOf(a.this.f70037d.c(j10)).multiply(BigInteger.valueOf(a.this.f70036c - a.this.f70035b)).divide(BigInteger.valueOf(a.this.f70039f)).longValue()) - 30000, a.this.f70035b, a.this.f70036c - 1)));
        }

        @Override // ao.j0
        public boolean isSeekable() {
            return true;
        }
    }

    public a(i iVar, long j10, long j11, long j12, long j13, boolean z10) {
        boolean z11;
        if (j10 >= 0 && j11 > j10) {
            z11 = true;
        } else {
            z11 = false;
        }
        cn.a.a(z11);
        this.f70037d = iVar;
        this.f70035b = j10;
        this.f70036c = j11;
        if (j12 != j11 - j10 && !z10) {
            this.f70038e = 0;
        } else {
            this.f70039f = j13;
            this.f70038e = 4;
        }
        this.f70034a = new f();
    }

    private long g(q qVar) throws IOException {
        long j10;
        if (this.f70042i == this.f70043j) {
            return -1L;
        }
        long position = qVar.getPosition();
        if (!this.f70034a.d(qVar, this.f70043j)) {
            long j11 = this.f70042i;
            if (j11 != position) {
                return j11;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.f70034a.a(qVar, false);
        qVar.resetPeekPosition();
        long j12 = this.f70041h;
        f fVar = this.f70034a;
        long j13 = fVar.f70064c;
        long j14 = j12 - j13;
        int i10 = fVar.f70069h + fVar.f70070i;
        if (0 <= j14 && j14 < 72000) {
            return -1L;
        }
        int i11 = (j14 > 0L ? 1 : (j14 == 0L ? 0 : -1));
        if (i11 < 0) {
            this.f70043j = position;
            this.f70045l = j13;
        } else {
            this.f70042i = qVar.getPosition() + i10;
            this.f70044k = this.f70034a.f70064c;
        }
        long j15 = this.f70043j;
        long j16 = this.f70042i;
        if (j15 - j16 < 100000) {
            this.f70043j = j16;
            return j16;
        }
        long j17 = i10;
        if (i11 <= 0) {
            j10 = 2;
        } else {
            j10 = 1;
        }
        long position2 = qVar.getPosition() - (j17 * j10);
        long j18 = this.f70043j;
        long j19 = this.f70042i;
        return m0.q(position2 + ((j14 * (j18 - j19)) / (this.f70045l - this.f70044k)), j19, j18 - 1);
    }

    private void i(q qVar) throws IOException {
        while (true) {
            this.f70034a.c(qVar);
            this.f70034a.a(qVar, false);
            f fVar = this.f70034a;
            if (fVar.f70064c > this.f70041h) {
                qVar.resetPeekPosition();
                return;
            }
            qVar.skipFully(fVar.f70069h + fVar.f70070i);
            this.f70042i = qVar.getPosition();
            this.f70044k = this.f70034a.f70064c;
        }
    }

    @Override // wo.g
    public long a(q qVar) throws IOException {
        int i10 = this.f70038e;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            return -1L;
                        }
                        throw new IllegalStateException();
                    }
                } else {
                    long g10 = g(qVar);
                    if (g10 != -1) {
                        return g10;
                    }
                    this.f70038e = 3;
                }
                i(qVar);
                this.f70038e = 4;
                return -(this.f70044k + 2);
            }
        } else {
            long position = qVar.getPosition();
            this.f70040g = position;
            this.f70038e = 1;
            long j10 = this.f70036c - 65307;
            if (j10 > position) {
                return j10;
            }
        }
        this.f70039f = h(qVar);
        this.f70038e = 4;
        return this.f70040g;
    }

    @Override // wo.g
    @Nullable
    /* renamed from: f */
    public b createSeekMap() {
        if (this.f70039f == 0) {
            return null;
        }
        return new b();
    }

    @VisibleForTesting
    long h(q qVar) throws IOException {
        this.f70034a.b();
        if (this.f70034a.c(qVar)) {
            this.f70034a.a(qVar, false);
            f fVar = this.f70034a;
            qVar.skipFully(fVar.f70069h + fVar.f70070i);
            long j10 = this.f70034a.f70064c;
            while (true) {
                f fVar2 = this.f70034a;
                if ((fVar2.f70063b & 4) == 4 || !fVar2.c(qVar) || qVar.getPosition() >= this.f70036c || !this.f70034a.a(qVar, true)) {
                    break;
                }
                f fVar3 = this.f70034a;
                if (!s.e(qVar, fVar3.f70069h + fVar3.f70070i)) {
                    break;
                }
                j10 = this.f70034a.f70064c;
            }
            return j10;
        }
        throw new EOFException();
    }

    @Override // wo.g
    public void startSeek(long j10) {
        this.f70041h = m0.q(j10, 0L, this.f70039f - 1);
        this.f70038e = 2;
        this.f70042i = this.f70035b;
        this.f70043j = this.f70036c;
        this.f70044k = 0L;
        this.f70045l = this.f70039f;
    }
}
