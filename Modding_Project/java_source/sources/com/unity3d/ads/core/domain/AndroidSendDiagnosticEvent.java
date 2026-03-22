package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.DiagnosticEventRepository;
import com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidSendDiagnosticEvent.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidSendDiagnosticEvent implements SendDiagnosticEvent {
    @NotNull
    private final DiagnosticEventRepository diagnosticEventRepository;
    @NotNull
    private final GetDiagnosticEventRequest getDiagnosticEventRequest;

    public AndroidSendDiagnosticEvent(@NotNull DiagnosticEventRepository diagnosticEventRepository, @NotNull GetDiagnosticEventRequest getDiagnosticEventRequest) {
        Intrinsics.checkNotNullParameter(diagnosticEventRepository, "diagnosticEventRepository");
        Intrinsics.checkNotNullParameter(getDiagnosticEventRequest, "getDiagnosticEventRequest");
        this.diagnosticEventRepository = diagnosticEventRepository;
        this.getDiagnosticEventRequest = getDiagnosticEventRequest;
    }

    @Override // com.unity3d.ads.core.domain.SendDiagnosticEvent
    public void invoke(@NotNull String event, @Nullable Double d10, @Nullable Map<String, String> map, @Nullable Map<String, Integer> map2, @Nullable AdObject adObject, @Nullable Integer num) {
        Boolean bool;
        ByteString byteString;
        String str;
        Map<String, String> linkedHashMap;
        Intrinsics.checkNotNullParameter(event, "event");
        DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType = null;
        if (adObject != null) {
            bool = Boolean.valueOf(adObject.isHeaderBidding());
        } else {
            bool = null;
        }
        if (adObject != null) {
            byteString = adObject.getOpportunityId();
        } else {
            byteString = null;
        }
        if (adObject != null) {
            str = adObject.getPlacementId();
        } else {
            str = null;
        }
        if (adObject != null) {
            diagnosticAdType = adObject.getAdType();
        }
        DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType2 = diagnosticAdType;
        if (map == null || (linkedHashMap = p0.A(map)) == null) {
            linkedHashMap = new LinkedHashMap<>();
        }
        Map<String, String> map3 = linkedHashMap;
        if (adObject != null && adObject.isScarAd()) {
            map3.put("scar", "true");
        }
        if (adObject != null && adObject.isOfferwallAd()) {
            map3.put("offerwall", "true");
        }
        this.diagnosticEventRepository.addDiagnosticEvent(this.getDiagnosticEventRequest.invoke(event, map3, map2, d10, bool, byteString, str, diagnosticAdType2, num));
    }
}
