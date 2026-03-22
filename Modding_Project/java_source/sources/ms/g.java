package ms;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KotlinVersion.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g implements Comparable<g> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f62626e = new a(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final g f62627f = h.a();

    /* renamed from: a  reason: collision with root package name */
    private final int f62628a;

    /* renamed from: b  reason: collision with root package name */
    private final int f62629b;

    /* renamed from: c  reason: collision with root package name */
    private final int f62630c;

    /* renamed from: d  reason: collision with root package name */
    private final int f62631d;

    /* compiled from: KotlinVersion.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public g(int i10, int i11, int i12) {
        this.f62628a = i10;
        this.f62629b = i11;
        this.f62630c = i12;
        this.f62631d = b(i10, i11, i12);
    }

    private final int b(int i10, int i11, int i12) {
        if (i10 >= 0 && i10 < 256 && i11 >= 0 && i11 < 256 && i12 >= 0 && i12 < 256) {
            return (i10 << 16) + (i11 << 8) + i12;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i10 + '.' + i11 + '.' + i12).toString());
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(@NotNull g other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return this.f62631d - other.f62631d;
    }

    public boolean equals(@Nullable Object obj) {
        g gVar;
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            gVar = (g) obj;
        } else {
            gVar = null;
        }
        if (gVar != null && this.f62631d == gVar.f62631d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f62631d;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f62628a);
        sb2.append('.');
        sb2.append(this.f62629b);
        sb2.append('.');
        sb2.append(this.f62630c);
        return sb2.toString();
    }
}
