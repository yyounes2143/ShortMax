package com.unity3d.ads.core.domain.privacy;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.inmobi.sdk.InMobiSdk;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.services.core.misc.JsonFlattenerRules;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: DeveloperConsentFlattenerRulesUseCase.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DeveloperConsentFlattenerRulesUseCase implements FlattenerRulesUseCase {
    @Override // com.unity3d.ads.core.domain.privacy.FlattenerRulesUseCase
    @NotNull
    public JsonFlattenerRules invoke() {
        return new JsonFlattenerRules(CollectionsKt.t("privacy", InMobiSdk.IM_GDPR_CONSENT_GDPR_APPLIES, "pipl", "user"), CollectionsKt.e(AppMeasurementSdk.ConditionalUserProperty.VALUE), CollectionsKt.t(CampaignEx.JSON_KEY_ST_TS));
    }
}
