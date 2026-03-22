package io.bidmachine;

import androidx.annotation.NonNull;
import io.bidmachine.AdRequestParameters;
/* loaded from: classes7.dex */
public class UnifiedAdRequestParamsImpl<AdRequestParametersType extends AdRequestParameters> implements xq.d {
    @NonNull
    private final AdRequestParametersType adRequestParameters;
    @NonNull
    private final lp.d dataRestrictions;
    @NonNull
    private final lp.e deviceInfo;
    @NonNull
    private final lp.h targetingInfo;

    /* JADX INFO: Access modifiers changed from: protected */
    public UnifiedAdRequestParamsImpl(@NonNull AdRequestParametersType adrequestparameterstype, @NonNull TargetingParams targetingParams, @NonNull lp.d dVar) {
        this.adRequestParameters = adrequestparameterstype;
        this.targetingInfo = new q5(dVar, targetingParams);
        this.deviceInfo = new x2(dVar);
        this.dataRestrictions = dVar;
    }

    @Override // xq.d
    @NonNull
    public AdRequestParametersType getAdRequestParameters() {
        return this.adRequestParameters;
    }

    @Override // io.bidmachine.GeneralParams
    @NonNull
    public lp.d getDataRestrictions() {
        return this.dataRestrictions;
    }

    @NonNull
    public lp.e getDeviceInfo() {
        return this.deviceInfo;
    }

    @Override // io.bidmachine.GeneralParams
    @NonNull
    public lp.h getTargetingInfo() {
        return this.targetingInfo;
    }

    @Override // io.bidmachine.GeneralParams
    public boolean isTestMode() {
        return j2.e().C();
    }
}
