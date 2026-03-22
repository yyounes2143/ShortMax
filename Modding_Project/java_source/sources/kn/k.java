package kn;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import cn.m0;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.List;
/* compiled from: SegmentBase.java */
/* loaded from: classes8.dex */
public abstract class k {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    final i f60869a;

    /* renamed from: b  reason: collision with root package name */
    final long f60870b;

    /* renamed from: c  reason: collision with root package name */
    final long f60871c;

    /* compiled from: SegmentBase.java */
    /* loaded from: classes8.dex */
    public static abstract class a extends k {

        /* renamed from: d  reason: collision with root package name */
        final long f60872d;

        /* renamed from: e  reason: collision with root package name */
        final long f60873e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        final List<d> f60874f;

        /* renamed from: g  reason: collision with root package name */
        private final long f60875g;

        /* renamed from: h  reason: collision with root package name */
        private final long f60876h;
        @VisibleForTesting

        /* renamed from: i  reason: collision with root package name */
        final long f60877i;

        public a(@Nullable i iVar, long j10, long j11, long j12, long j13, @Nullable List<d> list, long j14, long j15, long j16) {
            super(iVar, j10, j11);
            this.f60872d = j12;
            this.f60873e = j13;
            this.f60874f = list;
            this.f60877i = j14;
            this.f60875g = j15;
            this.f60876h = j16;
        }

        public long c(long j10, long j11) {
            long g10 = g(j10);
            if (g10 != -1) {
                return g10;
            }
            return (int) (i((j11 - this.f60876h) + this.f60877i, j10) - d(j10, j11));
        }

        public long d(long j10, long j11) {
            if (g(j10) == -1) {
                long j12 = this.f60875g;
                if (j12 != -9223372036854775807L) {
                    return Math.max(e(), i((j11 - this.f60876h) - j12, j10));
                }
            }
            return e();
        }

        public long e() {
            return this.f60872d;
        }

        public long f(long j10, long j11) {
            if (this.f60874f != null) {
                return -9223372036854775807L;
            }
            long d10 = d(j10, j11) + c(j10, j11);
            return (j(d10) + h(d10, j10)) - this.f60877i;
        }

        public abstract long g(long j10);

        public final long h(long j10, long j11) {
            List<d> list = this.f60874f;
            if (list != null) {
                return (list.get((int) (j10 - this.f60872d)).f60883b * 1000000) / this.f60870b;
            }
            long g10 = g(j11);
            if (g10 != -1 && j10 == (e() + g10) - 1) {
                return j11 - j(j10);
            }
            return (this.f60873e * 1000000) / this.f60870b;
        }

        public long i(long j10, long j11) {
            long e10 = e();
            long g10 = g(j11);
            if (g10 == 0) {
                return e10;
            }
            if (this.f60874f == null) {
                long j12 = this.f60872d + (j10 / ((this.f60873e * 1000000) / this.f60870b));
                if (j12 >= e10) {
                    if (g10 == -1) {
                        return j12;
                    }
                    return Math.min(j12, (e10 + g10) - 1);
                }
                return e10;
            }
            long j13 = (g10 + e10) - 1;
            long j14 = e10;
            while (j14 <= j13) {
                long j15 = ((j13 - j14) / 2) + j14;
                int i10 = (j(j15) > j10 ? 1 : (j(j15) == j10 ? 0 : -1));
                if (i10 < 0) {
                    j14 = j15 + 1;
                } else if (i10 > 0) {
                    j13 = j15 - 1;
                } else {
                    return j15;
                }
            }
            if (j14 == e10) {
                return j14;
            }
            return j13;
        }

        public final long j(long j10) {
            long j11;
            List<d> list = this.f60874f;
            if (list != null) {
                j11 = list.get((int) (j10 - this.f60872d)).f60882a - this.f60871c;
            } else {
                j11 = (j10 - this.f60872d) * this.f60873e;
            }
            return m0.f1(j11, 1000000L, this.f60870b);
        }

        public abstract i k(j jVar, long j10);

        public boolean l() {
            if (this.f60874f != null) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: SegmentBase.java */
    /* loaded from: classes8.dex */
    public static final class b extends a {
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        final List<i> f60878j;

        public b(i iVar, long j10, long j11, long j12, long j13, @Nullable List<d> list, long j14, @Nullable List<i> list2, long j15, long j16) {
            super(iVar, j10, j11, j12, j13, list, j14, j15, j16);
            this.f60878j = list2;
        }

        @Override // kn.k.a
        public long g(long j10) {
            return this.f60878j.size();
        }

        @Override // kn.k.a
        public i k(j jVar, long j10) {
            return this.f60878j.get((int) (j10 - this.f60872d));
        }

        @Override // kn.k.a
        public boolean l() {
            return true;
        }
    }

    /* compiled from: SegmentBase.java */
    /* loaded from: classes8.dex */
    public static final class c extends a {
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        final n f60879j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        final n f60880k;

        /* renamed from: l  reason: collision with root package name */
        final long f60881l;

        public c(i iVar, long j10, long j11, long j12, long j13, long j14, @Nullable List<d> list, long j15, @Nullable n nVar, @Nullable n nVar2, long j16, long j17) {
            super(iVar, j10, j11, j12, j14, list, j15, j16, j17);
            this.f60879j = nVar;
            this.f60880k = nVar2;
            this.f60881l = j13;
        }

        @Override // kn.k
        @Nullable
        public i a(j jVar) {
            n nVar = this.f60879j;
            if (nVar != null) {
                io.bidmachine.media3.common.a aVar = jVar.f60856b;
                return new i(nVar.a(aVar.f55160a, 0L, aVar.f55169j, 0L), 0L, -1L);
            }
            return super.a(jVar);
        }

        @Override // kn.k.a
        public long g(long j10) {
            List<d> list = this.f60874f;
            if (list != null) {
                return list.size();
            }
            long j11 = this.f60881l;
            if (j11 != -1) {
                return (j11 - this.f60872d) + 1;
            }
            if (j10 == -9223372036854775807L) {
                return -1L;
            }
            return j7.a.a(BigInteger.valueOf(j10).multiply(BigInteger.valueOf(this.f60870b)), BigInteger.valueOf(this.f60873e).multiply(BigInteger.valueOf(1000000L)), RoundingMode.CEILING).longValue();
        }

        @Override // kn.k.a
        public i k(j jVar, long j10) {
            long j11;
            List<d> list = this.f60874f;
            if (list != null) {
                j11 = list.get((int) (j10 - this.f60872d)).f60882a;
            } else {
                j11 = (j10 - this.f60872d) * this.f60873e;
            }
            long j12 = j11;
            n nVar = this.f60880k;
            io.bidmachine.media3.common.a aVar = jVar.f60856b;
            return new i(nVar.a(aVar.f55160a, j10, aVar.f55169j, j12), 0L, -1L);
        }
    }

    /* compiled from: SegmentBase.java */
    /* loaded from: classes8.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        final long f60882a;

        /* renamed from: b  reason: collision with root package name */
        final long f60883b;

        public d(long j10, long j11) {
            this.f60882a = j10;
            this.f60883b = j11;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f60882a == dVar.f60882a && this.f60883b == dVar.f60883b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((int) this.f60882a) * 31) + ((int) this.f60883b);
        }
    }

    public k(@Nullable i iVar, long j10, long j11) {
        this.f60869a = iVar;
        this.f60870b = j10;
        this.f60871c = j11;
    }

    @Nullable
    public i a(j jVar) {
        return this.f60869a;
    }

    public long b() {
        return m0.f1(this.f60871c, 1000000L, this.f60870b);
    }

    /* compiled from: SegmentBase.java */
    /* loaded from: classes8.dex */
    public static class e extends k {

        /* renamed from: d  reason: collision with root package name */
        final long f60884d;

        /* renamed from: e  reason: collision with root package name */
        final long f60885e;

        public e(@Nullable i iVar, long j10, long j11, long j12, long j13) {
            super(iVar, j10, j11);
            this.f60884d = j12;
            this.f60885e = j13;
        }

        @Nullable
        public i c() {
            long j10 = this.f60885e;
            if (j10 <= 0) {
                return null;
            }
            return new i(null, this.f60884d, j10);
        }

        public e() {
            this(null, 1L, 0L, 0L, 0L);
        }
    }
}
