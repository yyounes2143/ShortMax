package kotlin.ranges;

import kotlin.Metadata;
import kotlin.collections.w;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Progressions.kt */
@Metadata
/* loaded from: classes8.dex */
public class a implements Iterable<Character>, KMappedMarker {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final C0852a f61078d = new C0852a(null);

    /* renamed from: a  reason: collision with root package name */
    private final char f61079a;

    /* renamed from: b  reason: collision with root package name */
    private final char f61080b;

    /* renamed from: c  reason: collision with root package name */
    private final int f61081c;

    /* compiled from: Progressions.kt */
    @Metadata
    /* renamed from: kotlin.ranges.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0852a {
        public /* synthetic */ C0852a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0852a() {
        }
    }

    public a(char c10, char c11, int i10) {
        if (i10 != 0) {
            if (i10 != Integer.MIN_VALUE) {
                this.f61079a = c10;
                this.f61080b = (char) ts.c.b(c10, c11, i10);
                this.f61081c = i10;
                return;
            }
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        throw new IllegalArgumentException("Step must be non-zero.");
    }

    public final char c() {
        return this.f61079a;
    }

    public final char d() {
        return this.f61080b;
    }

    @Override // java.lang.Iterable
    @NotNull
    /* renamed from: e */
    public w iterator() {
        return new dt.a(this.f61079a, this.f61080b, this.f61081c);
    }
}
