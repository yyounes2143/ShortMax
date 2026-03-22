package zl;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextManager.kt */
@Metadata
/* loaded from: classes7.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final int f71686a;

    /* renamed from: b  reason: collision with root package name */
    private final double f71687b;

    /* renamed from: c  reason: collision with root package name */
    private final double f71688c;

    /* renamed from: d  reason: collision with root package name */
    private final char f71689d;

    /* renamed from: e  reason: collision with root package name */
    private final float f71690e;

    public c(int i10, double d10, double d11, char c10, float f10) {
        this.f71686a = i10;
        this.f71687b = d10;
        this.f71688c = d11;
        this.f71689d = c10;
        this.f71690e = f10;
    }

    public final double a() {
        return this.f71688c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f71686a == cVar.f71686a && Intrinsics.areEqual((Object) Double.valueOf(this.f71687b), (Object) Double.valueOf(cVar.f71687b)) && Intrinsics.areEqual((Object) Double.valueOf(this.f71688c), (Object) Double.valueOf(cVar.f71688c)) && this.f71689d == cVar.f71689d && Intrinsics.areEqual((Object) Float.valueOf(this.f71690e), (Object) Float.valueOf(cVar.f71690e))) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((Integer.hashCode(this.f71686a) * 31) + Double.hashCode(this.f71687b)) * 31) + Double.hashCode(this.f71688c)) * 31) + Character.hashCode(this.f71689d)) * 31) + Float.hashCode(this.f71690e);
    }

    @NotNull
    public String toString() {
        return "PreviousProgress(currentIndex=" + this.f71686a + ", offsetPercentage=" + this.f71687b + ", progress=" + this.f71688c + ", currentChar=" + this.f71689d + ", currentWidth=" + this.f71690e + ')';
    }

    public /* synthetic */ c(int i10, double d10, double d11, char c10, float f10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, d10, d11, (i11 & 8) != 0 ? (char) 0 : c10, (i11 & 16) != 0 ? 0.0f : f10);
    }
}
