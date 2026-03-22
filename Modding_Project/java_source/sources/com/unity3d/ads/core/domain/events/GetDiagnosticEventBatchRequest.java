package com.unity3d.ads.core.domain.events;

import gatewayprotocol.v1.DiagnosticEventRequestKt;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: GetDiagnosticEventBatchRequest.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGetDiagnosticEventBatchRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetDiagnosticEventBatchRequest.kt\ncom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest\n+ 2 DiagnosticEventRequestKt.kt\ngatewayprotocol/v1/DiagnosticEventRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,15:1\n10#2:16\n1#3:17\n*S KotlinDebug\n*F\n+ 1 GetDiagnosticEventBatchRequest.kt\ncom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest\n*L\n11#1:16\n11#1:17\n*E\n"})
/* loaded from: classes7.dex */
public final class GetDiagnosticEventBatchRequest {
    @NotNull
    public final DiagnosticEventRequestOuterClass.DiagnosticEventRequest invoke(@NotNull List<DiagnosticEventRequestOuterClass.DiagnosticEvent> diagnosticEvents) {
        Intrinsics.checkNotNullParameter(diagnosticEvents, "diagnosticEvents");
        DiagnosticEventRequestKt.Dsl.Companion companion = DiagnosticEventRequestKt.Dsl.Companion;
        DiagnosticEventRequestOuterClass.DiagnosticEventRequest.Builder newBuilder = DiagnosticEventRequestOuterClass.DiagnosticEventRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        DiagnosticEventRequestKt.Dsl _create = companion._create(newBuilder);
        _create.addAllBatch(_create.getBatch(), diagnosticEvents);
        return _create._build();
    }
}
