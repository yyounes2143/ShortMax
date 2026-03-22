package com.unity3d.ads.core.data.repository;

import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import java.util.List;
import kotlin.Metadata;
import kt.f;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiagnosticEventRepository.kt */
@Metadata
/* loaded from: classes7.dex */
public interface DiagnosticEventRepository {
    void addDiagnosticEvent(@NotNull DiagnosticEventRequestOuterClass.DiagnosticEvent diagnosticEvent);

    void clear();

    void configure(@NotNull NativeConfigurationOuterClass.DiagnosticEventsConfiguration diagnosticEventsConfiguration);

    void flush();

    @NotNull
    f<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> getDiagnosticEvents();
}
