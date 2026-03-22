package kotlin;

import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Tuples.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Triple<A, B, C> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final A f60912a;

    /* renamed from: b  reason: collision with root package name */
    private final B f60913b;

    /* renamed from: c  reason: collision with root package name */
    private final C f60914c;

    public Triple(A a10, B b10, C c10) {
        this.f60912a = a10;
        this.f60913b = b10;
        this.f60914c = c10;
    }

    public final A b() {
        return this.f60912a;
    }

    public final B d() {
        return this.f60913b;
    }

    public final C e() {
        return this.f60914c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Triple)) {
            return false;
        }
        Triple triple = (Triple) obj;
        if (Intrinsics.areEqual(this.f60912a, triple.f60912a) && Intrinsics.areEqual(this.f60913b, triple.f60913b) && Intrinsics.areEqual(this.f60914c, triple.f60914c)) {
            return true;
        }
        return false;
    }

    public final A f() {
        return this.f60912a;
    }

    public final B g() {
        return this.f60913b;
    }

    public final C h() {
        return this.f60914c;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        A a10 = this.f60912a;
        int i10 = 0;
        if (a10 == null) {
            hashCode = 0;
        } else {
            hashCode = a10.hashCode();
        }
        int i11 = hashCode * 31;
        B b10 = this.f60913b;
        if (b10 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = b10.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        C c10 = this.f60914c;
        if (c10 != null) {
            i10 = c10.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return '(' + this.f60912a + ", " + this.f60913b + ", " + this.f60914c + ')';
    }
}
