package c6;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import b7.s0;
import java.io.EOFException;
import java.io.IOException;
import t5.a0;
import t5.l;
import t5.n;
import t5.z;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultOggSeeker.java */
/* loaded from: classes4.dex */
public final class a implements g {

    /* renamed from: a  reason: collision with root package name */
    private final f f3148a;

    /* renamed from: b  reason: collision with root package name */
    private final long f3149b;

    /* renamed from: c  reason: collision with root package name */
    private final long f3150c;

    /* renamed from: d  reason: collision with root package name */
    private final i f3151d;

    /* renamed from: e  reason: collision with root package name */
    private int f3152e;

    /* renamed from: f  reason: collision with root package name */
    private long f3153f;

    /* renamed from: g  reason: collision with root package name */
    private long f3154g;

    /* renamed from: h  reason: collision with root package name */
    private long f3155h;

    /* renamed from: i  reason: collision with root package name */
    private long f3156i;

    /* renamed from: j  reason: collision with root package name */
    private long f3157j;

    /* renamed from: k  reason: collision with root package name */
    private long f3158k;

    /* renamed from: l  reason: collision with root package name */
    private long f3159l;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultOggSeeker.java */
    /* loaded from: classes4.dex */
    public final class b implements z {
        private b() {
        }

        @Override // t5.z
        public long getDurationUs() {
            return a.this.f3151d.b(a.this.f3153f);
        }

        @Override // t5.z
        public z.a getSeekPoints(long j10) {
            return new z.a(new a0(j10, s0.q((a.this.f3149b + ((a.this.f3151d.c(j10) * (a.this.f3150c - a.this.f3149b)) / a.this.f3153f)) - 30000, a.this.f3149b, a.this.f3150c - 1)));
        }

        @Override // t5.z
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
        b7.a.a(z11);
        this.f3151d = iVar;
        this.f3149b = j10;
        this.f3150c = j11;
        if (j12 != j11 - j10 && !z10) {
            this.f3152e = 0;
        } else {
            this.f3153f = j13;
            this.f3152e = 4;
        }
        this.f3148a = new f();
    }

    private long g(l lVar) throws IOException {
        long j10;
        if (this.f3156i == this.f3157j) {
            return -1L;
        }
        long position = lVar.getPosition();
        if (!this.f3148a.d(lVar, this.f3157j)) {
            long j11 = this.f3156i;
            if (j11 != position) {
                return j11;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.f3148a.a(lVar, false);
        lVar.resetPeekPosition();
        long j12 = this.f3155h;
        f fVar = this.f3148a;
        long j13 = fVar.f3178c;
        long j14 = j12 - j13;
        int i10 = fVar.f3183h + fVar.f3184i;
        if (0 <= j14 && j14 < 72000) {
            return -1L;
        }
        int i11 = (j14 > 0L ? 1 : (j14 == 0L ? 0 : -1));
        if (i11 < 0) {
            this.f3157j = position;
            this.f3159l = j13;
        } else {
            this.f3156i = lVar.getPosition() + i10;
            this.f3158k = this.f3148a.f3178c;
        }
        long j15 = this.f3157j;
        long j16 = this.f3156i;
        if (j15 - j16 < 100000) {
            this.f3157j = j16;
            return j16;
        }
        long j17 = i10;
        if (i11 <= 0) {
            j10 = 2;
        } else {
            j10 = 1;
        }
        long position2 = lVar.getPosition() - (j17 * j10);
        long j18 = this.f3157j;
        long j19 = this.f3156i;
        return s0.q(position2 + ((j14 * (j18 - j19)) / (this.f3159l - this.f3158k)), j19, j18 - 1);
    }

    private void i(l lVar) throws IOException {
        while (true) {
            this.f3148a.c(lVar);
            this.f3148a.a(lVar, false);
            f fVar = this.f3148a;
            if (fVar.f3178c > this.f3155h) {
                lVar.resetPeekPosition();
                return;
            }
            lVar.skipFully(fVar.f3183h + fVar.f3184i);
            this.f3156i = lVar.getPosition();
            this.f3158k = this.f3148a.f3178c;
        }
    }

    @Override // c6.g
    public long a(l lVar) throws IOException {
        int i10 = this.f3152e;
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
                    long g10 = g(lVar);
                    if (g10 != -1) {
                        return g10;
                    }
                    this.f3152e = 3;
                }
                i(lVar);
                this.f3152e = 4;
                return -(this.f3158k + 2);
            }
        } else {
            long position = lVar.getPosition();
            this.f3154g = position;
            this.f3152e = 1;
            long j10 = this.f3150c - 65307;
            if (j10 > position) {
                return j10;
            }
        }
        this.f3153f = h(lVar);
        this.f3152e = 4;
        return this.f3154g;
    }

    @Override // c6.g
    @Nullable
    /* renamed from: f */
    public b createSeekMap() {
        if (this.f3153f == 0) {
            return null;
        }
        return new b();
    }

    @VisibleForTesting
    long h(l lVar) throws IOException {
        this.f3148a.b();
        if (this.f3148a.c(lVar)) {
            this.f3148a.a(lVar, false);
            f fVar = this.f3148a;
            lVar.skipFully(fVar.f3183h + fVar.f3184i);
            long j10 = this.f3148a.f3178c;
            while (true) {
                f fVar2 = this.f3148a;
                if ((fVar2.f3177b & 4) == 4 || !fVar2.c(lVar) || lVar.getPosition() >= this.f3150c || !this.f3148a.a(lVar, true)) {
                    break;
                }
                f fVar3 = this.f3148a;
                if (!n.e(lVar, fVar3.f3183h + fVar3.f3184i)) {
                    break;
                }
                j10 = this.f3148a.f3178c;
            }
            return j10;
        }
        throw new EOFException();
    }

    @Override // c6.g
    public void startSeek(long j10) {
        this.f3155h = s0.q(j10, 0L, this.f3153f - 1);
        this.f3152e = 2;
        this.f3156i = this.f3149b;
        this.f3157j = this.f3150c;
        this.f3158k = 0L;
        this.f3159l = this.f3153f;
    }
}
