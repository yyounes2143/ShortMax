package rq;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final double f66076a;

    /* renamed from: b  reason: collision with root package name */
    private final int f66077b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f66078c;

    /* renamed from: d  reason: collision with root package name */
    private final long f66079d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final List<l> f66080e;

    public n(double d10, int i10, @NotNull String adElementName, long j10, @NotNull List<l> algorithmResults) {
        Intrinsics.checkNotNullParameter(adElementName, "adElementName");
        Intrinsics.checkNotNullParameter(algorithmResults, "algorithmResults");
        this.f66076a = d10;
        this.f66077b = i10;
        this.f66078c = adElementName;
        this.f66079d = j10;
        this.f66080e = algorithmResults;
    }

    @NotNull
    public final String a() {
        return this.f66078c;
    }

    public final int b() {
        return this.f66077b;
    }

    @NotNull
    public final List<l> c() {
        return this.f66080e;
    }

    public final long d() {
        return this.f66079d;
    }

    public final double e() {
        return this.f66076a;
    }

    public boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(n.class, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type io.bidmachine.rendering.model.BrokenCreativeEvent");
        n nVar = (n) obj;
        if (this.f66076a == nVar.f66076a && this.f66077b == nVar.f66077b && Intrinsics.areEqual(this.f66078c, nVar.f66078c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((Double.hashCode(this.f66076a) * 31) + this.f66077b) * 31) + this.f66078c.hashCode();
    }

    @NotNull
    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isBroken - ");
        sb2.append(this.f66076a);
        sb2.append(" (");
        if (this.f66076a == 1.0d) {
            z10 = true;
        } else {
            z10 = false;
        }
        sb2.append(z10);
        sb2.append("), adPhaseSequence - ");
        sb2.append(this.f66077b);
        sb2.append(", adElementName - ");
        sb2.append(this.f66078c);
        sb2.append(", durationMs - ");
        sb2.append(this.f66079d);
        return sb2.toString();
    }
}
