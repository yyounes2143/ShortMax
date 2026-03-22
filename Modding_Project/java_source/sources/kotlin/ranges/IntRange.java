package kotlin.ranges;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PrimitiveRanges.kt */
@Metadata
/* loaded from: classes8.dex */
public final class IntRange extends d implements dt.c<Integer> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f61076e = new a(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final IntRange f61077f = new IntRange(1, 0);

    /* compiled from: PrimitiveRanges.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final IntRange a() {
            return IntRange.f61077f;
        }

        private a() {
        }
    }

    public IntRange(int i10, int i11) {
        super(i10, i11, 1);
    }

    @Override // kotlin.ranges.d
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof IntRange) {
            if (!isEmpty() || !((IntRange) obj).isEmpty()) {
                IntRange intRange = (IntRange) obj;
                if (c() != intRange.c() || d() != intRange.d()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.d
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (c() * 31) + d();
    }

    public boolean i(int i10) {
        if (c() <= i10 && i10 <= d()) {
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.d, dt.c
    public boolean isEmpty() {
        if (c() > d()) {
            return true;
        }
        return false;
    }

    @Override // dt.c
    @NotNull
    /* renamed from: j */
    public Integer getEndInclusive() {
        return Integer.valueOf(d());
    }

    @Override // dt.c
    @NotNull
    /* renamed from: l */
    public Integer getStart() {
        return Integer.valueOf(c());
    }

    @Override // kotlin.ranges.d
    @NotNull
    public String toString() {
        return c() + ".." + d();
    }
}
