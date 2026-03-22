package com.applovin.impl.privacy.consentFlow;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.o;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinTermsAndPrivacyPolicyFlowSettings;
/* loaded from: classes2.dex */
public class TermsAndPrivacyPolicyFlowSettingsImpl implements AppLovinTermsAndPrivacyPolicyFlowSettings {

    /* renamed from: a  reason: collision with root package name */
    private boolean f9288a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f9289b;

    /* renamed from: c  reason: collision with root package name */
    private AppLovinSdkConfiguration.ConsentFlowUserGeography f9290c;

    /* renamed from: d  reason: collision with root package name */
    private Uri f9291d;

    /* renamed from: e  reason: collision with root package name */
    private Uri f9292e;

    public TermsAndPrivacyPolicyFlowSettingsImpl(boolean z10, boolean z11, AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography, Uri uri, Uri uri2) {
        this.f9288a = z10;
        this.f9289b = z11;
        this.f9290c = consentFlowUserGeography;
        this.f9291d = uri;
        this.f9292e = uri2;
    }

    @Override // com.applovin.sdk.AppLovinTermsAndPrivacyPolicyFlowSettings
    public AppLovinSdkConfiguration.ConsentFlowUserGeography getDebugUserGeography() {
        return this.f9290c;
    }

    @Override // com.applovin.sdk.AppLovinTermsAndPrivacyPolicyFlowSettings
    @Nullable
    public Uri getPrivacyPolicyUri() {
        return this.f9291d;
    }

    @Override // com.applovin.sdk.AppLovinTermsAndPrivacyPolicyFlowSettings
    @Nullable
    public Uri getTermsOfServiceUri() {
        return this.f9292e;
    }

    @Override // com.applovin.sdk.AppLovinTermsAndPrivacyPolicyFlowSettings
    public boolean isEnabled() {
        return this.f9288a;
    }

    @Override // com.applovin.sdk.AppLovinTermsAndPrivacyPolicyFlowSettings
    public void setDebugUserGeography(AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography) {
        o.g("ConsentFlowSettingsImpl", "Setting user debug geography: " + consentFlowUserGeography);
        this.f9290c = consentFlowUserGeography;
    }

    @Override // com.applovin.sdk.AppLovinTermsAndPrivacyPolicyFlowSettings
    public void setEnabled(boolean z10) {
        o.g("ConsentFlowSettingsImpl", "Setting Terms and Privacy Policy Flow enabled: " + z10);
        this.f9288a = z10;
    }

    @Override // com.applovin.sdk.AppLovinTermsAndPrivacyPolicyFlowSettings
    public void setPrivacyPolicyUri(Uri uri) {
        o.g("ConsentFlowSettingsImpl", "Setting privacy policy: " + uri);
        this.f9291d = uri;
    }

    @Override // com.applovin.sdk.AppLovinTermsAndPrivacyPolicyFlowSettings
    public void setShowTermsAndPrivacyPolicyAlertInGdpr(boolean z10) {
        o.g("ConsentFlowSettingsImpl", "Setting show Terms and Privacy Policy alert in GDPR: " + z10);
        this.f9289b = z10;
    }

    @Override // com.applovin.sdk.AppLovinTermsAndPrivacyPolicyFlowSettings
    public void setTermsOfServiceUri(Uri uri) {
        o.g("ConsentFlowSettingsImpl", "Setting terms of service: " + uri);
        this.f9292e = uri;
    }

    @Override // com.applovin.sdk.AppLovinTermsAndPrivacyPolicyFlowSettings
    public boolean shouldShowTermsAndPrivacyPolicyAlertInGdpr() {
        return this.f9289b;
    }

    @NonNull
    public String toString() {
        return "ConsentFlowSettings{isEnabled=" + this.f9288a + ", privacyPolicyUri=" + this.f9291d + ", termsOfServiceUri=" + this.f9292e + '}';
    }
}
