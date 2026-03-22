package zc;

import ad.m;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SetupConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f71629a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f71630b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final m f71631c;

    public j(boolean z10, boolean z11, @NotNull m listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f71629a = z10;
        this.f71630b = z11;
        this.f71631c = listener;
    }

    public final boolean a() {
        return this.f71630b;
    }

    @NotNull
    public final m b() {
        return this.f71631c;
    }

    public final boolean c() {
        return this.f71629a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (this.f71629a == jVar.f71629a && this.f71630b == jVar.f71630b && Intrinsics.areEqual(this.f71631c, jVar.f71631c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((Boolean.hashCode(this.f71629a) * 31) + Boolean.hashCode(this.f71630b)) * 31) + this.f71631c.hashCode();
    }

    @NotNull
    public String toString() {
        return "SetupConfig(requireSubscription=" + this.f71629a + ", enableUserChoiceBilling=" + this.f71630b + ", listener=" + this.f71631c + ')';
    }
}
