package kotlin.ranges;

import kotlin.Metadata;
import kotlin.collections.m0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Progressions.kt */
@Metadata
/* loaded from: classes8.dex */
public class d implements Iterable<Integer>, KMappedMarker {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f61086d = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f61087a;

    /* renamed from: b  reason: collision with root package name */
    private final int f61088b;

    /* renamed from: c  reason: collision with root package name */
    private final int f61089c;

    /* compiled from: Progressions.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final d a(int i10, int i11, int i12) {
            return new d(i10, i11, i12);
        }

        private a() {
        }
    }

    public d(int i10, int i11, int i12) {
        if (i12 != 0) {
            if (i12 != Integer.MIN_VALUE) {
                this.f61087a = i10;
                this.f61088b = ts.c.b(i10, i11, i12);
                this.f61089c = i12;
                return;
            }
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        throw new IllegalArgumentException("Step must be non-zero.");
    }

    public final int c() {
        return this.f61087a;
    }

    public final int d() {
        return this.f61088b;
    }

    public final int e() {
        return this.f61089c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof d) {
            if (!isEmpty() || !((d) obj).isEmpty()) {
                d dVar = (d) obj;
                if (this.f61087a != dVar.f61087a || this.f61088b != dVar.f61088b || this.f61089c != dVar.f61089c) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    @NotNull
    /* renamed from: f */
    public m0 iterator() {
        return new dt.d(this.f61087a, this.f61088b, this.f61089c);
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f61087a * 31) + this.f61088b) * 31) + this.f61089c;
    }

    public boolean isEmpty() {
        if (this.f61089c > 0) {
            if (this.f61087a <= this.f61088b) {
                return false;
            }
        } else if (this.f61087a >= this.f61088b) {
            return false;
        }
        return true;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2;
        int i10;
        if (this.f61089c > 0) {
            sb2 = new StringBuilder();
            sb2.append(this.f61087a);
            sb2.append("..");
            sb2.append(this.f61088b);
            sb2.append(" step ");
            i10 = this.f61089c;
        } else {
            sb2 = new StringBuilder();
            sb2.append(this.f61087a);
            sb2.append(" downTo ");
            sb2.append(this.f61088b);
            sb2.append(" step ");
            i10 = -this.f61089c;
        }
        sb2.append(i10);
        return sb2.toString();
    }
}
