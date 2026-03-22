package com.unity3d.ads.core.domain;

import com.unity3d.services.core.log.DeviceLog;
import gt.d0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CoroutineExceptionHandler.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 CleanUpWhenOpportunityExpires.kt\ncom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires\n*L\n1#1,110:1\n22#2,2:111\n*E\n"})
/* loaded from: classes7.dex */
public final class CleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1 extends kotlin.coroutines.a implements d0 {
    public CleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1(d0.b bVar) {
        super(bVar);
    }

    @Override // gt.d0
    public void handleException(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th2) {
        DeviceLog.debug("CleanUpExpiredOpportunity: " + th2.getMessage());
    }
}
