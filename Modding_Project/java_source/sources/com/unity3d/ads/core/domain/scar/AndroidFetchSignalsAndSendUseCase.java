package com.unity3d.ads.core.domain.scar;

import com.google.protobuf.ByteString;
import com.unity3d.ads.TokenConfiguration;
import com.unity3d.ads.core.data.manager.ScarManager;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.AdFormatExtensions;
import com.vungle.ads.internal.Constants;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gt.g;
import gt.g0;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidFetchSignalsAndSendUseCase.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidFetchSignalsAndSendUseCase implements FetchSignalsAndSendUseCase {
    @NotNull
    private final HandleGetTokenRequest handleGetTokenRequest;
    @NotNull
    private final ScarManager scarManager;
    @NotNull
    private final g0 scope;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final SessionRepository sessionRepository;

    public AndroidFetchSignalsAndSendUseCase(@NotNull g0 scope, @NotNull SessionRepository sessionRepository, @NotNull ScarManager scarManager, @NotNull HandleGetTokenRequest handleGetTokenRequest, @NotNull SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(scarManager, "scarManager");
        Intrinsics.checkNotNullParameter(handleGetTokenRequest, "handleGetTokenRequest");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.scope = scope;
        this.sessionRepository = sessionRepository;
        this.scarManager = scarManager;
        this.handleGetTokenRequest = handleGetTokenRequest;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<InitializationResponseOuterClass.AdFormat> getRequestedSignalFormats(TokenConfiguration tokenConfiguration) {
        List<InitializationResponseOuterClass.AdFormat> e10;
        if (tokenConfiguration == null) {
            return this.sessionRepository.getScarEligibleFormats();
        }
        InitializationResponseOuterClass.AdFormat protoAdFormat = AdFormatExtensions.toProtoAdFormat(tokenConfiguration.getAdFormat());
        if (!this.sessionRepository.getScarEligibleFormats().contains(protoAdFormat)) {
            protoAdFormat = null;
        }
        if (protoAdFormat == null || (e10 = CollectionsKt.e(protoAdFormat)) == null) {
            return CollectionsKt.n();
        }
        return e10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, String> getTags() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<InitializationResponseOuterClass.AdFormat> scarEligibleFormats = this.sessionRepository.getScarEligibleFormats();
        if (scarEligibleFormats.contains(InitializationResponseOuterClass.AdFormat.AD_FORMAT_BANNER)) {
            linkedHashMap.put("banner", "true");
        }
        if (scarEligibleFormats.contains(InitializationResponseOuterClass.AdFormat.AD_FORMAT_REWARDED)) {
            linkedHashMap.put(Constants.PLACEMENT_TYPE_REWARDED, "true");
        }
        if (scarEligibleFormats.contains(InitializationResponseOuterClass.AdFormat.AD_FORMAT_INTERSTITIAL)) {
            linkedHashMap.put(Constants.PLACEMENT_TYPE_INTERSTITIAL, "true");
        }
        return linkedHashMap;
    }

    @Override // com.unity3d.ads.core.domain.scar.FetchSignalsAndSendUseCase
    @Nullable
    public Object invoke(int i10, @NotNull ByteString byteString, @Nullable TokenConfiguration tokenConfiguration, @NotNull c<? super Unit> cVar) {
        g.d(this.scope, null, null, new AndroidFetchSignalsAndSendUseCase$invoke$2(this, tokenConfiguration, i10, byteString, null), 3, null);
        return Unit.f60915a;
    }
}
