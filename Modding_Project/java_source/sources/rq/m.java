package rq;

import io.bidmachine.rendering.model.StopDetectorAfter;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private final long f66069a;

    /* renamed from: b  reason: collision with root package name */
    private final double f66070b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f66071c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f66072d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final StopDetectorAfter f66073e;

    /* renamed from: f  reason: collision with root package name */
    private final double f66074f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final List<k> f66075g;

    public m(long j10, double d10, boolean z10, boolean z11, @NotNull StopDetectorAfter stopAfter, double d11, @NotNull List<k> algorithms) {
        Intrinsics.checkNotNullParameter(stopAfter, "stopAfter");
        Intrinsics.checkNotNullParameter(algorithms, "algorithms");
        this.f66069a = j10;
        this.f66070b = d10;
        this.f66071c = z10;
        this.f66072d = z11;
        this.f66073e = stopAfter;
        this.f66074f = d11;
        this.f66075g = algorithms;
    }

    @NotNull
    public final List<k> a() {
        return this.f66075g;
    }

    public final double b() {
        return this.f66070b;
    }

    @NotNull
    public final StopDetectorAfter c() {
        return this.f66073e;
    }

    public final long d() {
        return this.f66069a;
    }

    public final double e() {
        return this.f66074f;
    }

    public final boolean f() {
        return this.f66072d;
    }

    public final boolean g() {
        return this.f66071c;
    }
}
