package kotlin.ranges;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PrimitiveRanges.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b extends kotlin.ranges.a implements dt.c<Character> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f61082e = new a(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final b f61083f = new b(1, 0);

    /* compiled from: PrimitiveRanges.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(char c10, char c11) {
        super(c10, c11, 1);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof b) {
            if (!isEmpty() || !((b) obj).isEmpty()) {
                b bVar = (b) obj;
                if (c() != bVar.c() || d() != bVar.d()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // dt.c
    @NotNull
    /* renamed from: f */
    public Character getEndInclusive() {
        return Character.valueOf(d());
    }

    @Override // dt.c
    @NotNull
    /* renamed from: h */
    public Character getStart() {
        return Character.valueOf(c());
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (c() * 31) + d();
    }

    @Override // dt.c
    public boolean isEmpty() {
        if (Intrinsics.compare((int) c(), (int) d()) > 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        return c() + ".." + d();
    }
}
