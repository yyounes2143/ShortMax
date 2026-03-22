package com.unity3d.ads.core.data.repository;

import android.content.Context;
import android.webkit.WebView;
import com.google.protobuf.ByteString;
import com.iab.omid.library.unity3d.adsession.AdSession;
import com.iab.omid.library.unity3d.adsession.Partner;
import com.unity3d.ads.core.data.manager.OmidManager;
import com.unity3d.ads.core.data.model.OMData;
import com.unity3d.ads.core.data.model.OMResult;
import com.unity3d.ads.core.data.model.OmidOptions;
import com.unity3d.services.UnityAdsConstants;
import gt.c0;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.o;
import kt.e;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidOpenMeasurementRepository.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidOpenMeasurementRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidOpenMeasurementRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidOpenMeasurementRepository\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,168:1\n230#2,5:169\n230#2,5:174\n230#2,5:179\n230#2,5:184\n*S KotlinDebug\n*F\n+ 1 AndroidOpenMeasurementRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidOpenMeasurementRepository\n*L\n39#1:169,5\n145#1:174,5\n149#1:179,5\n154#1:184,5\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidOpenMeasurementRepository implements OpenMeasurementRepository {
    @NotNull
    private final e<Boolean> _isOMActive;
    @NotNull
    private final e<Map<String, AdSession>> activeSessions;
    @NotNull
    private final e<Set<String>> finishedSessions;
    @NotNull
    private final c0 mainDispatcher;
    @NotNull
    private final OmidManager omidManager;
    private final Partner partner;

    public AndroidOpenMeasurementRepository(@NotNull c0 mainDispatcher, @NotNull OmidManager omidManager) {
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(omidManager, "omidManager");
        this.mainDispatcher = mainDispatcher;
        this.omidManager = omidManager;
        this.partner = Partner.createPartner(UnityAdsConstants.OpenMeasurement.OM_PARTNER_NAME, "4.16.1");
        this.activeSessions = o.a(p0.i());
        this.finishedSessions = o.a(y0.f());
        this._isOMActive = o.a(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addSession(ByteString byteString, AdSession adSession) {
        Map<String, AdSession> value;
        e<Map<String, AdSession>> eVar = this.activeSessions;
        do {
            value = eVar.getValue();
        } while (!eVar.b(value, p0.r(value, k.a(byteString.toStringUtf8(), adSession))));
    }

    private final OMData buildOmData() {
        return new OMData(this.omidManager.getVersion(), UnityAdsConstants.OpenMeasurement.OM_PARTNER_NAME, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AdSession getSession(ByteString byteString) {
        return this.activeSessions.getValue().get(byteString.toStringUtf8());
    }

    private final void removeSession(ByteString byteString) {
        Map<String, AdSession> value;
        String stringUtf8;
        e<Map<String, AdSession>> eVar = this.activeSessions;
        do {
            value = eVar.getValue();
            stringUtf8 = byteString.toStringUtf8();
            Intrinsics.checkNotNullExpressionValue(stringUtf8, "opportunityId.toStringUtf8()");
        } while (!eVar.b(value, p0.n(value, stringUtf8)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sessionFinished(ByteString byteString) {
        Set<String> value;
        String stringUtf8;
        e<Set<String>> eVar = this.finishedSessions;
        do {
            value = eVar.getValue();
            stringUtf8 = byteString.toStringUtf8();
            Intrinsics.checkNotNullExpressionValue(stringUtf8, "opportunityId.toStringUtf8()");
        } while (!eVar.b(value, y0.n(value, stringUtf8)));
        removeSession(byteString);
    }

    @Override // com.unity3d.ads.core.data.repository.OpenMeasurementRepository
    @Nullable
    public Object activateOM(@NotNull Context context, @NotNull c<? super OMResult> cVar) {
        return gt.e.g(this.mainDispatcher, new AndroidOpenMeasurementRepository$activateOM$2(this, context, null), cVar);
    }

    @Override // com.unity3d.ads.core.data.repository.OpenMeasurementRepository
    @Nullable
    public Object finishSession(@NotNull ByteString byteString, @NotNull c<? super OMResult> cVar) {
        return gt.e.g(this.mainDispatcher, new AndroidOpenMeasurementRepository$finishSession$2(this, byteString, null), cVar);
    }

    @Override // com.unity3d.ads.core.data.repository.OpenMeasurementRepository
    @NotNull
    public OMData getOmData() {
        return buildOmData();
    }

    @Override // com.unity3d.ads.core.data.repository.OpenMeasurementRepository
    public boolean hasSessionFinished(@NotNull ByteString opportunityId) {
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        return this.finishedSessions.getValue().contains(opportunityId.toStringUtf8());
    }

    @Override // com.unity3d.ads.core.data.repository.OpenMeasurementRepository
    @Nullable
    public Object impressionOccurred(@NotNull ByteString byteString, boolean z10, @NotNull c<? super OMResult> cVar) {
        return gt.e.g(this.mainDispatcher, new AndroidOpenMeasurementRepository$impressionOccurred$2(this, byteString, z10, null), cVar);
    }

    @Override // com.unity3d.ads.core.data.repository.OpenMeasurementRepository
    public boolean isOMActive() {
        return this._isOMActive.getValue().booleanValue();
    }

    @Override // com.unity3d.ads.core.data.repository.OpenMeasurementRepository
    public void setOMActive(boolean z10) {
        Boolean value;
        e<Boolean> eVar = this._isOMActive;
        do {
            value = eVar.getValue();
            value.booleanValue();
        } while (!eVar.b(value, Boolean.valueOf(z10)));
    }

    @Override // com.unity3d.ads.core.data.repository.OpenMeasurementRepository
    @Nullable
    public Object startSession(@NotNull ByteString byteString, @Nullable WebView webView, @NotNull OmidOptions omidOptions, @NotNull c<? super OMResult> cVar) {
        return gt.e.g(this.mainDispatcher, new AndroidOpenMeasurementRepository$startSession$2(this, byteString, omidOptions, webView, null), cVar);
    }
}
