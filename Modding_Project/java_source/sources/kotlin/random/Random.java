package kotlin.random;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Random.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/Random\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,383:1\n1#2:384\n*E\n"})
/* loaded from: classes8.dex */
public abstract class Random {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Default f61065a = new Default(null);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Random f61066b = ts.b.f67697a.b();

    /* compiled from: Random.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Default extends Random implements Serializable {

        /* compiled from: Random.kt */
        @Metadata
        /* loaded from: classes8.dex */
        private static final class Serialized implements Serializable {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            public static final Serialized f61067a = new Serialized();

            private Serialized() {
            }

            private final Object readResolve() {
                return Random.f61065a;
            }
        }

        public /* synthetic */ Default(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Object writeReplace() {
            return Serialized.f61067a;
        }

        @Override // kotlin.random.Random
        public int d(int i10) {
            return Random.f61066b.d(i10);
        }

        @Override // kotlin.random.Random
        public double e() {
            return Random.f61066b.e();
        }

        @Override // kotlin.random.Random
        public int f() {
            return Random.f61066b.f();
        }

        @Override // kotlin.random.Random
        public int g(int i10) {
            return Random.f61066b.g(i10);
        }

        @Override // kotlin.random.Random
        public int h(int i10, int i11) {
            return Random.f61066b.h(i10, i11);
        }

        @Override // kotlin.random.Random
        public long i() {
            return Random.f61066b.i();
        }

        @Override // kotlin.random.Random
        public long j(long j10) {
            return Random.f61066b.j(j10);
        }

        @Override // kotlin.random.Random
        public long k(long j10, long j11) {
            return Random.f61066b.k(j10, j11);
        }

        private Default() {
        }
    }

    public abstract int d(int i10);

    public double e() {
        return c.a(d(26), d(27));
    }

    public int f() {
        return d(32);
    }

    public int g(int i10) {
        return h(0, i10);
    }

    public int h(int i10, int i11) {
        int f10;
        int i12;
        int i13;
        d.c(i10, i11);
        int i14 = i11 - i10;
        if (i14 > 0 || i14 == Integer.MIN_VALUE) {
            if (((-i14) & i14) == i14) {
                i13 = d(d.e(i14));
            } else {
                do {
                    f10 = f() >>> 1;
                    i12 = f10 % i14;
                } while ((f10 - i12) + (i14 - 1) < 0);
                i13 = i12;
            }
            return i10 + i13;
        }
        while (true) {
            int f11 = f();
            if (i10 <= f11 && f11 < i11) {
                return f11;
            }
        }
    }

    public long i() {
        return (f() << 32) + f();
    }

    public long j(long j10) {
        return k(0L, j10);
    }

    public long k(long j10, long j11) {
        long i10;
        long j12;
        long j13;
        int f10;
        d.d(j10, j11);
        long j14 = j11 - j10;
        if (j14 > 0) {
            if (((-j14) & j14) == j14) {
                int i11 = (int) j14;
                int i12 = (int) (j14 >>> 32);
                if (i11 != 0) {
                    f10 = d(d.e(i11));
                } else if (i12 == 1) {
                    f10 = f();
                } else {
                    j13 = (d(d.e(i12)) << 32) + (f() & 4294967295L);
                }
                j13 = f10 & 4294967295L;
            } else {
                do {
                    i10 = i() >>> 1;
                    j12 = i10 % j14;
                } while ((i10 - j12) + (j14 - 1) < 0);
                j13 = j12;
            }
            return j10 + j13;
        }
        while (true) {
            long i13 = i();
            if (j10 <= i13 && i13 < j11) {
                return i13;
            }
        }
    }
}
