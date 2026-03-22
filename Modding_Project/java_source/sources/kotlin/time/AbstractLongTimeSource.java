package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.a;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TimeSources.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class AbstractLongTimeSource implements et.b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final DurationUnit f61245a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final i f61246b;

    /* compiled from: TimeSources.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nTimeSources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSources.kt\nkotlin/time/AbstractLongTimeSource$LongTimeMark\n+ 2 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,202:1\n80#2:203\n*S KotlinDebug\n*F\n+ 1 TimeSources.kt\nkotlin/time/AbstractLongTimeSource$LongTimeMark\n*L\n67#1:203\n*E\n"})
    /* loaded from: classes8.dex */
    private static final class a implements kotlin.time.a {

        /* renamed from: a  reason: collision with root package name */
        private final long f61247a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final AbstractLongTimeSource f61248b;

        /* renamed from: c  reason: collision with root package name */
        private final long f61249c;

        public /* synthetic */ a(long j10, AbstractLongTimeSource abstractLongTimeSource, long j11, DefaultConstructorMarker defaultConstructorMarker) {
            this(j10, abstractLongTimeSource, j11);
        }

        @Override // kotlin.time.TimeMark
        public long a() {
            return b.F(f.d(this.f61248b.c(), this.f61247a, this.f61248b.d()), this.f61249c);
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
                if (Intrinsics.areEqual(this.f61248b, aVar.f61248b)) {
                    return b.G(f.d(this.f61247a, aVar.f61247a, this.f61248b.d()), b.F(this.f61249c, aVar.f61249c));
                }
            }
            throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + this + " and " + other);
        }

        public boolean equals(@Nullable Object obj) {
            if ((obj instanceof a) && Intrinsics.areEqual(this.f61248b, ((a) obj).f61248b) && b.l(d((kotlin.time.a) obj), b.f61250b.c())) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (b.y(this.f61249c) * 37) + Long.hashCode(this.f61247a);
        }

        @NotNull
        public String toString() {
            return "LongTimeMark(" + this.f61247a + e.f(this.f61248b.d()) + " + " + ((Object) b.K(this.f61249c)) + ", " + this.f61248b + ')';
        }

        private a(long j10, AbstractLongTimeSource timeSource, long j11) {
            Intrinsics.checkNotNullParameter(timeSource, "timeSource");
            this.f61247a = j10;
            this.f61248b = timeSource;
            this.f61249c = j11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long c() {
        return f() - e();
    }

    private final long e() {
        return ((Number) this.f61246b.getValue()).longValue();
    }

    @Override // et.b
    @NotNull
    public kotlin.time.a a() {
        return new a(c(), this, b.f61250b.c(), null);
    }

    @NotNull
    protected final DurationUnit d() {
        return this.f61245a;
    }

    protected abstract long f();
}
