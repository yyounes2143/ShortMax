package com.unity3d.ads.core.domain.work;

import com.google.protobuf.kotlin.DslList;
import com.unity3d.ads.core.data.datasource.LifecycleDataSource;
import com.unity3d.ads.core.data.repository.SessionRepository;
import gatewayprotocol.v1.DiagnosticEventKt;
import gatewayprotocol.v1.DiagnosticEventRequestKt;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.UniversalRequestKt;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiagnosticEventRequestWorkModifier.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiagnosticEventRequestWorkModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiagnosticEventRequestWorkModifier.kt\ncom/unity3d/ads/core/domain/work/DiagnosticEventRequestWorkModifier\n+ 2 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DiagnosticEventRequestKt.kt\ngatewayprotocol/v1/DiagnosticEventRequestKtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 DiagnosticEventKt.kt\ngatewayprotocol/v1/DiagnosticEventKtKt\n*L\n1#1,32:1\n874#2:33\n901#2:35\n1#3:34\n1#3:36\n1#3:38\n1#3:43\n131#4:37\n1549#5:39\n1620#5,2:40\n1622#5:44\n539#6:42\n*S KotlinDebug\n*F\n+ 1 DiagnosticEventRequestWorkModifier.kt\ncom/unity3d/ads/core/domain/work/DiagnosticEventRequestWorkModifier\n*L\n17#1:33\n18#1:35\n17#1:34\n18#1:36\n19#1:38\n21#1:43\n19#1:37\n20#1:39\n20#1:40,2\n20#1:44\n21#1:42\n*E\n"})
/* loaded from: classes7.dex */
public final class DiagnosticEventRequestWorkModifier {
    @NotNull
    private final LifecycleDataSource lifecycleDataSource;
    @NotNull
    private final SessionRepository sessionRepository;

    public DiagnosticEventRequestWorkModifier(@NotNull SessionRepository sessionRepository, @NotNull LifecycleDataSource lifecycleDataSource) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(lifecycleDataSource, "lifecycleDataSource");
        this.sessionRepository = sessionRepository;
        this.lifecycleDataSource = lifecycleDataSource;
    }

    @NotNull
    public final UniversalRequestOuterClass.UniversalRequest invoke(@NotNull UniversalRequestOuterClass.UniversalRequest universalRequest) {
        Intrinsics.checkNotNullParameter(universalRequest, "universalRequest");
        UniversalRequestKt.Dsl.Companion companion = UniversalRequestKt.Dsl.Companion;
        UniversalRequestOuterClass.UniversalRequest.Builder builder = universalRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        UniversalRequestKt.Dsl _create = companion._create(builder);
        UniversalRequestOuterClass.UniversalRequest.Payload payload = _create.getPayload();
        UniversalRequestKt.PayloadKt.Dsl.Companion companion2 = UniversalRequestKt.PayloadKt.Dsl.Companion;
        UniversalRequestOuterClass.UniversalRequest.Payload.Builder builder2 = payload.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder2, "this.toBuilder()");
        UniversalRequestKt.PayloadKt.Dsl _create2 = companion2._create(builder2);
        DiagnosticEventRequestOuterClass.DiagnosticEventRequest diagnosticEventRequest = _create2.getDiagnosticEventRequest();
        DiagnosticEventRequestKt.Dsl.Companion companion3 = DiagnosticEventRequestKt.Dsl.Companion;
        DiagnosticEventRequestOuterClass.DiagnosticEventRequest.Builder builder3 = diagnosticEventRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder3, "this.toBuilder()");
        DiagnosticEventRequestKt.Dsl _create3 = companion3._create(builder3);
        DslList<DiagnosticEventRequestOuterClass.DiagnosticEvent> batch = _create3.getBatch();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(batch, 10));
        for (DiagnosticEventRequestOuterClass.DiagnosticEvent diagnosticEvent : batch) {
            DiagnosticEventKt.Dsl.Companion companion4 = DiagnosticEventKt.Dsl.Companion;
            DiagnosticEventRequestOuterClass.DiagnosticEvent.Builder builder4 = diagnosticEvent.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder4, "this.toBuilder()");
            DiagnosticEventKt.Dsl _create4 = companion4._create(builder4);
            _create4.putStringTags(_create4.getStringTagsMap(), "same_session", String.valueOf(Intrinsics.areEqual(universalRequest.getSharedData().getSessionToken(), this.sessionRepository.getSessionToken())));
            _create4.putStringTags(_create4.getStringTagsMap(), "app_active", String.valueOf(this.lifecycleDataSource.appIsForeground()));
            arrayList.add(_create4._build());
        }
        _create3.clearBatch(_create3.getBatch());
        _create3.addAllBatch(_create3.getBatch(), arrayList);
        _create2.setDiagnosticEventRequest(_create3._build());
        _create.setPayload(_create2._build());
        return _create._build();
    }
}
