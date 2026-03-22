package com.moloco.sdk.internal.services.usertracker;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class a implements d {
    @Override // com.moloco.sdk.internal.services.usertracker.d
    @NotNull
    public String a() {
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
        return uuid;
    }
}
