package com.moloco.sdk.internal.scheduling;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes6.dex */
public interface a {
    @NotNull
    CoroutineContext a();

    @NotNull
    CoroutineContext getDefault();

    @NotNull
    CoroutineContext getIo();

    @NotNull
    CoroutineContext getMain();
}
