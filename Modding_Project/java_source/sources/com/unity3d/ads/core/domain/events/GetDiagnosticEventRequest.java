package com.unity3d.ads.core.domain.events;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.domain.GetSharedDataTimestamps;
import gatewayprotocol.v1.DiagnosticEventKt;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.o;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GetDiagnosticEventRequest.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGetDiagnosticEventRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetDiagnosticEventRequest.kt\ncom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest\n+ 2 DiagnosticEventKt.kt\ngatewayprotocol/v1/DiagnosticEventKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,44:1\n10#2:45\n1#3:46\n1#3:52\n198#4,5:47\n*S KotlinDebug\n*F\n+ 1 GetDiagnosticEventRequest.kt\ncom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest\n*L\n28#1:45\n28#1:46\n29#1:47,5\n*E\n"})
/* loaded from: classes7.dex */
public final class GetDiagnosticEventRequest {
    @NotNull
    private final GetSharedDataTimestamps getSharedDataTimestamps;
    @NotNull
    private final e<Integer> uniqueId;

    public GetDiagnosticEventRequest(@NotNull GetSharedDataTimestamps getSharedDataTimestamps) {
        Intrinsics.checkNotNullParameter(getSharedDataTimestamps, "getSharedDataTimestamps");
        this.getSharedDataTimestamps = getSharedDataTimestamps;
        this.uniqueId = o.a(-1);
    }

    @NotNull
    public final DiagnosticEventRequestOuterClass.DiagnosticEvent invoke(@NotNull String eventName, @Nullable Map<String, String> map, @Nullable Map<String, Integer> map2, @Nullable Double d10, @Nullable Boolean bool, @Nullable ByteString byteString, @Nullable String str, @Nullable DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType, @Nullable Integer num) {
        Integer value;
        Integer valueOf;
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        DiagnosticEventKt.Dsl.Companion companion = DiagnosticEventKt.Dsl.Companion;
        DiagnosticEventRequestOuterClass.DiagnosticEvent.Builder newBuilder = DiagnosticEventRequestOuterClass.DiagnosticEvent.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        DiagnosticEventKt.Dsl _create = companion._create(newBuilder);
        e<Integer> eVar = this.uniqueId;
        do {
            value = eVar.getValue();
            valueOf = Integer.valueOf(value.intValue() + 1);
        } while (!eVar.b(value, valueOf));
        _create.setEventId(valueOf.intValue());
        _create.setEventType(DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_CUSTOM);
        _create.setTimestamps(this.getSharedDataTimestamps.invoke());
        _create.setCustomEventType(eventName);
        if (map != null) {
            _create.putAllStringTags(_create.getStringTagsMap(), map);
        }
        if (map2 != null) {
            _create.putAllIntTags(_create.getIntTagsMap(), map2);
        }
        if (d10 != null) {
            _create.setTimeValue(d10.doubleValue());
        }
        if (bool != null) {
            _create.setIsHeaderBidding(bool.booleanValue());
        }
        if (byteString != null) {
            _create.setImpressionOpportunityId(byteString);
        }
        if (str != null) {
            _create.setPlacementId(str);
        }
        if (diagnosticAdType != null) {
            _create.setAdType(diagnosticAdType);
        }
        if (num != null) {
            _create.setHeaderBiddingTokenNumber(num.intValue());
        }
        return _create._build();
    }
}
