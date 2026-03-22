package io.ktor.util.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LockFreeLinkedList.kt */
@Metadata
/* loaded from: classes8.dex */
final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f59313a;

    public g(@NotNull String symbol) {
        Intrinsics.checkNotNullParameter(symbol, "symbol");
        this.f59313a = symbol;
    }

    @NotNull
    public String toString() {
        return this.f59313a;
    }
}
