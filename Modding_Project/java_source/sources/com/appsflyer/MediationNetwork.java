package com.appsflyer;

import com.applovin.sdk.AppLovinMediationProvider;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes2.dex */
public enum MediationNetwork {
    IRONSOURCE(AppLovinMediationProvider.IRONSOURCE),
    APPLOVIN_MAX("applovinmax"),
    GOOGLE_ADMOB("googleadmob"),
    FYBER(AppLovinMediationProvider.FYBER),
    APPODEAL(AppLovinMediationProvider.APPODEAL),
    ADMOST("Admost"),
    TOPON("Topon"),
    TRADPLUS("Tradplus"),
    YANDEX("Yandex"),
    CHARTBOOST("chartboost"),
    UNITY("Unity"),
    TOPON_PTE("toponpte"),
    CUSTOM_MEDIATION("customMediation"),
    DIRECT_MONETIZATION_NETWORK("directMonetizationNetwork");
    
    @NotNull
    private final String value;

    MediationNetwork(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
