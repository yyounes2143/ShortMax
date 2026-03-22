package com.unity3d.services.core.request.metrics;

import com.unity3d.services.core.log.DeviceLog;
import gt.d0;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.a;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CoroutineExceptionHandler.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 MetricSender.kt\ncom/unity3d/services/core/request/metrics/MetricSender\n*L\n1#1,110:1\n54#2,2:111\n*E\n"})
/* loaded from: classes7.dex */
public final class MetricSender$sendMetrics$$inlined$CoroutineExceptionHandler$1 extends a implements d0 {
    final /* synthetic */ List $metrics$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetricSender$sendMetrics$$inlined$CoroutineExceptionHandler$1(d0.b bVar, List list) {
        super(bVar);
        this.$metrics$inlined = list;
    }

    @Override // gt.d0
    public void handleException(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th2) {
        DeviceLog.debug("Metric " + this.$metrics$inlined + " failed to send with error: " + th2);
    }
}
