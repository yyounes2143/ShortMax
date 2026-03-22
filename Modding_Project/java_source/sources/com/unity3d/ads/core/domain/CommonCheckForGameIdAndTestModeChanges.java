package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.services.core.configuration.InitializeEventsMetricSender;
import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.core.properties.SdkProperties;
import com.unity3d.services.core.request.metrics.Metric;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import ms.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: CommonCheckForGameIdAndTestModeChanges.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonCheckForGameIdAndTestModeChanges implements CheckForGameIdAndTestModeChanges {
    @NotNull
    private final GetGameId getGameId;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;

    public CommonCheckForGameIdAndTestModeChanges(@NotNull GetGameId getGameId, @NotNull SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(getGameId, "getGameId");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.getGameId = getGameId;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    private final void sendDiagnostic(String str, Map<String, String> map, boolean z10) {
        if (z10) {
            InitializeEventsMetricSender.getInstance().sendMetric(new Metric(str, map, null, 4, null));
        } else {
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, str, null, map, null, null, null, 58, null);
        }
    }

    @Override // com.unity3d.ads.core.domain.CheckForGameIdAndTestModeChanges
    public void invoke(boolean z10) {
        String invoke = this.getGameId.invoke();
        if (invoke == null) {
            invoke = "null";
        }
        String previousGameId = ClientProperties.getPreviousGameId();
        if (previousGameId == null) {
            previousGameId = "null";
        }
        Map<String, String> m10 = p0.m(k.a("previous_game_id", previousGameId), k.a("game_id", invoke));
        if (!Intrinsics.areEqual(previousGameId, "null")) {
            if (!Intrinsics.areEqual(invoke, previousGameId)) {
                sendDiagnostic("native_initialize_game_id_changed", m10, z10);
            } else {
                sendDiagnostic("native_initialize_game_id_same", m10, z10);
            }
            boolean isTestMode = SdkProperties.isTestMode();
            boolean previousTestMode = SdkProperties.getPreviousTestMode();
            Map<String, String> m11 = p0.m(k.a("previous_test_mode", String.valueOf(previousTestMode)), k.a("test_mode", String.valueOf(isTestMode)));
            if (isTestMode != previousTestMode) {
                sendDiagnostic("native_initialize_test_mode_changed", m11, z10);
            } else {
                sendDiagnostic("native_initialize_test_mode_same", m11, z10);
            }
        }
    }
}
