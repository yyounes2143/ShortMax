package kotlin;

import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Tuples.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Pair<A, B> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final A f60899a;

    /* renamed from: b  reason: collision with root package name */
    private final B f60900b;

    public Pair(A a10, B b10) {
        this.f60899a = a10;
        this.f60900b = b10;
    }

    public final A b() {
        return this.f60899a;
    }

    public final B d() {
        return this.f60900b;
    }

    public final A e() {
        return this.f60899a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        if (Intrinsics.areEqual(this.f60899a, pair.f60899a) && Intrinsics.areEqual(this.f60900b, pair.f60900b)) {
            return true;
        }
        return false;
    }

    public final B f() {
        return this.f60900b;
    }

    public int hashCode() {
        int hashCode;
        A a10 = this.f60899a;
        int i10 = 0;
        if (a10 == null) {
            hashCode = 0;
        } else {
            hashCode = a10.hashCode();
        }
        int i11 = hashCode * 31;
        B b10 = this.f60900b;
        if (b10 != null) {
            i10 = b10.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return '(' + this.f60899a + ", " + this.f60900b + ')';
    }
}
