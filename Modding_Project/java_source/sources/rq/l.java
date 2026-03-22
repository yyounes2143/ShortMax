package rq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f66066a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final k f66067b;

    /* renamed from: c  reason: collision with root package name */
    private final long f66068c;

    public l(boolean z10, @NotNull k algorithmParams, long j10) {
        Intrinsics.checkNotNullParameter(algorithmParams, "algorithmParams");
        this.f66066a = z10;
        this.f66067b = algorithmParams;
        this.f66068c = j10;
    }

    @NotNull
    public final k a() {
        return this.f66067b;
    }

    public final long b() {
        return this.f66068c;
    }

    public final boolean c() {
        return this.f66066a;
    }
}
