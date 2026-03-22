package zl;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextManager.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f71683a;

    /* renamed from: b  reason: collision with root package name */
    private final double f71684b;

    /* renamed from: c  reason: collision with root package name */
    private final double f71685c;

    public b(int i10, double d10, double d11) {
        this.f71683a = i10;
        this.f71684b = d10;
        this.f71685c = d11;
    }

    public final int a() {
        return this.f71683a;
    }

    public final double b() {
        return this.f71684b;
    }

    public final double c() {
        return this.f71685c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f71683a == bVar.f71683a && Intrinsics.areEqual((Object) Double.valueOf(this.f71684b), (Object) Double.valueOf(bVar.f71684b)) && Intrinsics.areEqual((Object) Double.valueOf(this.f71685c), (Object) Double.valueOf(bVar.f71685c))) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.f71683a) * 31) + Double.hashCode(this.f71684b)) * 31) + Double.hashCode(this.f71685c);
    }

    @NotNull
    public String toString() {
        return "NextProgress(currentIndex=" + this.f71683a + ", offsetPercentage=" + this.f71684b + ", progress=" + this.f71685c + ')';
    }
}
