package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TimeSources.kt */
@ms.c
@Metadata
/* loaded from: classes8.dex */
public abstract class AbstractDoubleTimeSource implements et.b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final DurationUnit f61241a;

    /* compiled from: TimeSources.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private static final class a implements kotlin.time.a {

        /* renamed from: a  reason: collision with root package name */
        private final double f61242a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final AbstractDoubleTimeSource f61243b;

        /* renamed from: c  reason: collision with root package name */
        private final long f61244c;

        public /* synthetic */ a(double d10, AbstractDoubleTimeSource abstractDoubleTimeSource, long j10, DefaultConstructorMarker defaultConstructorMarker) {
            this(d10, abstractDoubleTimeSource, j10);
        }

        @Override // kotlin.time.TimeMark
        public long a() {
            return b.F(c.r(this.f61243b.c() - this.f61242a, this.f61243b.b()), this.f61244c);
        }

        @Override // java.lang.Comparable
        /* renamed from: b */
        public int compareTo(@NotNull kotlin.time.a aVar) {
            return a.C0854a.a(this, aVar);
        }

        @Override // kotlin.time.a
        public long d(@NotNull kotlin.time.a other) {
            Intrinsics.checkNotNullParameter(other, "other");
            if (other instanceof a) {
                a aVar = (a) other;
                if (Intrinsics.areEqual(this.f61243b, aVar.f61243b)) {
                    if (b.l(this.f61244c, aVar.f61244c) && b.C(this.f61244c)) {
                        return b.f61250b.c();
                    }
                    long F = b.F(this.f61244c, aVar.f61244c);
                    long r10 = c.r(this.f61242a - aVar.f61242a, this.f61243b.b());
                    if (b.l(r10, b.L(F))) {
                        return b.f61250b.c();
                    }
                    return b.G(r10, F);
                }
            }
            throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + this + " and " + other);
        }

        public boolean equals(@Nullable Object obj) {
            if ((obj instanceof a) && Intrinsics.areEqual(this.f61243b, ((a) obj).f61243b) && b.l(d((kotlin.time.a) obj), b.f61250b.c())) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return b.y(b.G(c.r(this.f61242a, this.f61243b.b()), this.f61244c));
        }

        @NotNull
        public String toString() {
            return "DoubleTimeMark(" + this.f61242a + e.f(this.f61243b.b()) + " + " + ((Object) b.K(this.f61244c)) + ", " + this.f61243b + ')';
        }

        private a(double d10, AbstractDoubleTimeSource timeSource, long j10) {
            Intrinsics.checkNotNullParameter(timeSource, "timeSource");
            this.f61242a = d10;
            this.f61243b = timeSource;
            this.f61244c = j10;
        }
    }

    @Override // et.b
    @NotNull
    public kotlin.time.a a() {
        return new a(c(), this, b.f61250b.c(), null);
    }

    @NotNull
    protected final DurationUnit b() {
        return this.f61241a;
    }

    protected abstract double c();
}
