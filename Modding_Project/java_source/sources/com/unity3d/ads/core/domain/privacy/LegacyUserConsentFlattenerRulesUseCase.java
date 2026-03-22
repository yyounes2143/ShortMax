package com.unity3d.ads.core.domain.privacy;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.services.core.misc.JsonFlattenerRules;
import io.bidmachine.Framework;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: LegacyUserConsentFlattenerRulesUseCase.kt */
@Metadata
/* loaded from: classes7.dex */
public final class LegacyUserConsentFlattenerRulesUseCase implements FlattenerRulesUseCase {
    @Override // com.unity3d.ads.core.domain.privacy.FlattenerRulesUseCase
    @NotNull
    public JsonFlattenerRules invoke() {
        return new JsonFlattenerRules(CollectionsKt.t("privacy", Framework.UNITY, "pipl"), CollectionsKt.e(AppMeasurementSdk.ConditionalUserProperty.VALUE), CollectionsKt.t(CampaignEx.JSON_KEY_ST_TS, "exclude", "pii", "nonBehavioral", "nonbehavioral"));
    }
}
