package fq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class p extends tq.b {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final tp.f f51903b;

    public p(@NotNull tp.f adElement) {
        Intrinsics.checkNotNullParameter(adElement, "adElement");
        this.f51903b = adElement;
    }

    @Override // tq.b
    public void d() {
        try {
            this.f51903b.c();
        } catch (Throwable th2) {
            tp.s.h(th2);
        }
    }
}
