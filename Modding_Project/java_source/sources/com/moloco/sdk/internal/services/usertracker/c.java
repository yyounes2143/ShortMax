package com.moloco.sdk.internal.services.usertracker;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.services.h0;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class c implements b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final h0 f33522a;

    public c(@NotNull h0 dataStoreService) {
        Intrinsics.checkNotNullParameter(dataStoreService, "dataStoreService");
        this.f33522a = dataStoreService;
    }

    @Override // com.moloco.sdk.internal.services.usertracker.b
    @Nullable
    public Object b(@NotNull String str, @NotNull rs.c<? super Unit> cVar) {
        Object c10 = this.f33522a.c("com.moloco.sdk.mref", str, cVar);
        if (c10 == kotlin.coroutines.intrinsics.a.f()) {
            return c10;
        }
        return Unit.f60915a;
    }

    @Override // com.moloco.sdk.internal.services.usertracker.b
    @Nullable
    public Object c(@NotNull rs.c<? super String> cVar) {
        return this.f33522a.a("com.moloco.sdk.mref", cVar);
    }
}
