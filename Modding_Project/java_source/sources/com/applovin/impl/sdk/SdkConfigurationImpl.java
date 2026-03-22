package com.applovin.impl.sdk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import com.applovin.sdk.AppLovinSdkConfiguration;
import java.util.List;
/* loaded from: classes2.dex */
public class SdkConfigurationImpl implements AppLovinSdkConfiguration {

    /* renamed from: a  reason: collision with root package name */
    private final k f9514a;

    /* renamed from: b  reason: collision with root package name */
    private List f9515b;

    public SdkConfigurationImpl(k kVar) {
        this.f9514a = kVar;
    }

    @Override // com.applovin.sdk.AppLovinSdkConfiguration
    public AppLovinSdkConfiguration.ConsentDialogState getConsentDialogState() {
        String str = this.f9514a.o0().getExtraParameters().get("consent_dialog_state");
        if (!StringUtils.isValidString(str)) {
            str = (String) this.f9514a.a(v4.I6);
        }
        if ("applies".equalsIgnoreCase(str)) {
            return AppLovinSdkConfiguration.ConsentDialogState.APPLIES;
        }
        if ("does_not_apply".equalsIgnoreCase(str)) {
            return AppLovinSdkConfiguration.ConsentDialogState.DOES_NOT_APPLY;
        }
        return AppLovinSdkConfiguration.ConsentDialogState.UNKNOWN;
    }

    @Override // com.applovin.sdk.AppLovinSdkConfiguration
    public AppLovinSdkConfiguration.ConsentFlowUserGeography getConsentFlowUserGeography() {
        String str = (String) this.f9514a.a(v4.I6);
        if ("applies".equalsIgnoreCase(str)) {
            return AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR;
        }
        if ("does_not_apply".equalsIgnoreCase(str)) {
            return AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER;
        }
        return AppLovinSdkConfiguration.ConsentFlowUserGeography.UNKNOWN;
    }

    @Override // com.applovin.sdk.AppLovinSdkConfiguration
    public String getCountryCode() {
        return (String) this.f9514a.a(v4.J6);
    }

    @Override // com.applovin.sdk.AppLovinSdkConfiguration
    @Nullable
    public List<String> getEnabledAmazonAdUnitIds() {
        return this.f9515b;
    }

    @Override // com.applovin.sdk.AppLovinSdkConfiguration
    public boolean isTestModeEnabled() {
        return this.f9514a.t0().c();
    }

    public void setEnabledAmazonAdUnitIds(@Nullable List<String> list) {
        this.f9515b = list;
    }

    @NonNull
    public String toString() {
        return "AppLovinSdkConfiguration{, countryCode=" + getCountryCode() + ", enabledAmazonAdUnitIds=" + getEnabledAmazonAdUnitIds() + ", testModeEnabled=" + isTestModeEnabled() + '}';
    }
}
