package com.moloco.sdk.internal.services.init;

import androidx.annotation.VisibleForTesting;
import com.moloco.sdk.Init$SDKInitResponse;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.publisher.MediationInfo;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public interface j {
    @VisibleForTesting(otherwise = 5)
    @Nullable
    Object a(@NotNull rs.c<? super Unit> cVar);

    @Nullable
    Object b(@NotNull String str, @NotNull MediationInfo mediationInfo, @NotNull rs.c<? super g0<Init$SDKInitResponse, i>> cVar);
}
