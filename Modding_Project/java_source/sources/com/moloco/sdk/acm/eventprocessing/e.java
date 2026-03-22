package com.moloco.sdk.acm.eventprocessing;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.acm.services.f f31885a;

    /* renamed from: b  reason: collision with root package name */
    public final long f31886b;

    public e(@NotNull com.moloco.sdk.acm.services.f timeProviderService, long j10) {
        Intrinsics.checkNotNullParameter(timeProviderService, "timeProviderService");
        this.f31885a = timeProviderService;
        this.f31886b = j10;
    }

    public final boolean a(@NotNull com.moloco.sdk.acm.db.b eventEntity) {
        Intrinsics.checkNotNullParameter(eventEntity, "eventEntity");
        if (this.f31885a.invoke() - eventEntity.f() >= this.f31886b * 1000) {
            return true;
        }
        return false;
    }
}
