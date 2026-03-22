package com.inmobi.media;

import com.inmobi.unification.sdk.model.Initialization.TimeoutConfigurations$MediationConfig;
import java.io.Serializable;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.ne  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3087ne implements Serializable {
    private static final int APPLOVIN_AB_DEFAULT_AUDIO_LOAD_TIMEOUT = 9500;
    private static final int APPLOVIN_AB_DEFAULT_AUDIO_MAX_RETRIES = 3;
    private static final int APPLOVIN_AB_DEFAULT_AUDIO_RETRY_INTERVAL = 1000;
    private static final int APPLOVIN_AB_DEFAULT_BANNER_LOAD_TIMEOUT = 9500;
    private static final int APPLOVIN_AB_DEFAULT_BANNER_MAX_RETRIES = 3;
    private static final int APPLOVIN_AB_DEFAULT_BANNER_RETRY_INTERVAL = 1000;
    private static final int APPLOVIN_AB_DEFAULT_INTERSTITIAL_LOAD_TIMEOUT = 29500;
    private static final int APPLOVIN_AB_DEFAULT_INTERSTITIAL_MAX_RETRIES = 3;
    private static final int APPLOVIN_AB_DEFAULT_INTERSTITIAL_RETRY_INTERVAL = 1000;
    private static final int APPLOVIN_AB_DEFAULT_NATIVE_LOAD_TIMEOUT = 14500;
    private static final int APPLOVIN_AB_DEFAULT_NATIVE_MAX_RETRIES = 3;
    private static final int APPLOVIN_AB_DEFAULT_NATIVE_RETRY_INTERVAL = 1000;
    private static final int APPLOVIN_NONAB_DEFAULT_AUDIO_LOAD_TIMEOUT = 9500;
    private static final int APPLOVIN_NONAB_DEFAULT_AUDIO_MAX_RETRIES = 3;
    private static final int APPLOVIN_NONAB_DEFAULT_AUDIO_MUTT_TIMEOUT = 9500;
    private static final int APPLOVIN_NONAB_DEFAULT_AUDIO_RETRY_INTERVAL = 1000;
    private static final int APPLOVIN_NONAB_DEFAULT_BANNER_LOAD_TIMEOUT = 9500;
    private static final int APPLOVIN_NONAB_DEFAULT_BANNER_MAX_RETRIES = 3;
    private static final int APPLOVIN_NONAB_DEFAULT_BANNER_MUTT_TIMEOUT = 9500;
    private static final int APPLOVIN_NONAB_DEFAULT_BANNER_RETRY_INTERVAL = 1000;
    private static final int APPLOVIN_NONAB_DEFAULT_INTERSTITIAL_LOAD_TIMEOUT = 14500;
    private static final int APPLOVIN_NONAB_DEFAULT_INTERSTITIAL_MAX_RETRIES = 3;
    private static final int APPLOVIN_NONAB_DEFAULT_INTERSTITIAL_MUTT_TIMEOUT = 14500;
    private static final int APPLOVIN_NONAB_DEFAULT_INTERSTITIAL_RETRY_INTERVAL = 1000;
    private static final int APPLOVIN_NONAB_DEFAULT_NATIVE_LOAD_TIMEOUT = 14500;
    private static final int APPLOVIN_NONAB_DEFAULT_NATIVE_MAX_RETRIES = 3;
    private static final int APPLOVIN_NONAB_DEFAULT_NATIVE_MUTT_TIMEOUT = 14500;
    private static final int APPLOVIN_NONAB_DEFAULT_NATIVE_RETRY_INTERVAL = 1000;
    private static final int DEFAULT_AB_AUDIO_LOAD_TIMEOUT = 14500;
    private static final int DEFAULT_AB_BANNER_LOAD_TIMEOUT = 14500;
    private static final int DEFAULT_AB_INTERSTITIAL_LOAD_TIMEOUT = 29500;
    private static final int DEFAULT_AB_NATIVE_LOAD_TIMEOUT = 14500;
    @NotNull
    private static final String DEFAULT_KEY = "default";
    private static final int DEFAULT_MAX_RETRIES = 3;
    private static final int DEFAULT_NONAB_AUDIO_LOAD_TIMEOUT = 29500;
    private static final int DEFAULT_NONAB_AUDIO_MUTT_TIMEOUT = 29500;
    private static final int DEFAULT_NONAB_BANNER_LOAD_TIMEOUT = 29500;
    private static final int DEFAULT_NONAB_BANNER_MUTT_TIMEOUT = 29500;
    private static final int DEFAULT_NONAB_INTERSTITIAL_LOAD_TIMEOUT = 29500;
    private static final int DEFAULT_NONAB_INTERSTITIAL_MUTT_TIMEOUT = 29500;
    private static final int DEFAULT_NONAB_NATIVE_LOAD_TIMEOUT = 29500;
    private static final int DEFAULT_NONAB_NATIVE_MUTT_TIMEOUT = 29500;
    private static final int DEFAULT_RETRY_INTERVAL = 1000;
    public static final int DEFAULT_TIMEOUT = 15000;
    @NotNull
    public static final C3055le Companion = new C3055le();
    @NotNull
    private static final String APPLOVIN_KEY = "c_applovin";
    @NotNull
    private static final JSONObject defaultNonABBannerloadTimeout = AbstractC3023je.a(29500, 9500, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultNonABBannerMuttTimeout = AbstractC3023je.a(29500, 9500, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultNonABBannerMaxRetries = AbstractC3023je.a(3, 3, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultNonABBannerRetryInterval = AbstractC3023je.a(1000, 1000, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultNonABIntloadTimeout = AbstractC3023je.a(29500, 14500, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultNonABIntMuttTimeout = AbstractC3023je.a(29500, 14500, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultNonABIntMaxRetries = AbstractC3023je.a(3, 3, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultNonABIntRetryInterval = AbstractC3023je.a(1000, 1000, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultNonABNativeloadTimeout = AbstractC3023je.a(29500, 14500, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultNonABNativeMuttTimeout = AbstractC3023je.a(29500, 14500, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultNonABNativeMaxRetries = AbstractC3023je.a(3, 3, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultNonABNativeRetryInterval = AbstractC3023je.a(1000, 1000, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultNonABAudioloadTimeout = AbstractC3023je.a(29500, 9500, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultNonABAudioMuttTimeout = AbstractC3023je.a(29500, 9500, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultNonABAudioMaxRetries = AbstractC3023je.a(3, 3, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultNonABAudioRetryInterval = AbstractC3023je.a(1000, 1000, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultABBannerloadTimeout = AbstractC3023je.a(14500, 9500, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultABBannerMaxRetries = AbstractC3023je.a(3, 3, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultABBannerRetryInterval = AbstractC3023je.a(1000, 1000, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultABIntloadTimeout = AbstractC3023je.a(29500, 29500, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultABIntMaxRetries = AbstractC3023je.a(3, 3, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultABIntRetryInterval = AbstractC3023je.a(1000, 1000, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultABNativeloadTimeout = AbstractC3023je.a(14500, 14500, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultABNativeMaxRetries = AbstractC3023je.a(3, 3, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultABNativeRetryInterval = AbstractC3023je.a(1000, 1000, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultABAudioloadTimeout = AbstractC3023je.a(14500, 9500, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultABAudioMaxRetries = AbstractC3023je.a(3, 3, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultABAudioRetryInterval = AbstractC3023je.a(1000, 1000, "default", APPLOVIN_KEY);
    @NotNull
    private static final JSONObject defaultPreloadBannerPreloadTimeout = AbstractC3007ie.a("default", 29500);
    @NotNull
    private static final JSONObject defaultPreloadBannerMuttTimeout = AbstractC3007ie.a("default", 29500);
    @NotNull
    private static final JSONObject defaultPreloadBannerLoadTimeout = AbstractC3007ie.a("default", 14500);
    @NotNull
    private static final JSONObject defaultPreloadBannerMaxRetries = AbstractC3007ie.a("default", 3);
    @NotNull
    private static final JSONObject defaultPreloadBannerRetryInterval = AbstractC3007ie.a("default", 1000);
    @NotNull
    private static final JSONObject defaultPreloadIntPreloadTimeout = AbstractC3007ie.a("default", 29500);
    @NotNull
    private static final JSONObject defaultPreloadIntMuttTimeout = AbstractC3007ie.a("default", 29500);
    @NotNull
    private static final JSONObject defaultPreloadIntloadTimeout = AbstractC3007ie.a("default", 29500);
    @NotNull
    private static final JSONObject defaultPreloadIntMaxRetries = AbstractC3007ie.a("default", 3);
    @NotNull
    private static final JSONObject defaultPreloadIntRetryInterval = AbstractC3007ie.a("default", 1000);
    @NotNull
    private static final JSONObject defaultPreloadNativePreloadTimeout = AbstractC3007ie.a("default", 29500);
    @NotNull
    private static final JSONObject defaultPreloadNativeMuttTimeout = AbstractC3007ie.a("default", 29500);
    @NotNull
    private static final JSONObject defaultPreloadNativeloadTimeout = AbstractC3007ie.a("default", 14500);
    @NotNull
    private static final JSONObject defaultPreloadNativeMaxRetries = AbstractC3007ie.a("default", 3);
    @NotNull
    private static final JSONObject defaultPreloadNativeRetryInterval = AbstractC3007ie.a("default", 1000);
    @NotNull
    private static final JSONObject defaultPreloadAudioPreloadTimeout = AbstractC3007ie.a("default", 29500);
    @NotNull
    private static final JSONObject defaultPreloadAudioMuttTimeout = AbstractC3007ie.a("default", 29500);
    @NotNull
    private static final JSONObject defaultPreloadAudioloadTimeout = AbstractC3007ie.a("default", 14500);
    @NotNull
    private static final JSONObject defaultPreloadAudioMaxRetries = AbstractC3007ie.a("default", 3);
    @NotNull
    private static final JSONObject defaultPreloadAudioRetryInterval = AbstractC3007ie.a("default", 1000);
    @NotNull
    private static final Function2<JSONObject, Integer, Boolean> validator = C3039ke.f24940a;
    private int step4s = 15000;
    @NotNull
    private TimeoutConfigurations$MediationConfig mediationConfig = new TimeoutConfigurations$MediationConfig();

    public static final /* synthetic */ JSONObject A() {
        return defaultNonABNativeRetryInterval;
    }

    public static final /* synthetic */ JSONObject B() {
        return defaultNonABNativeloadTimeout;
    }

    public static final /* synthetic */ JSONObject C() {
        return defaultPreloadAudioMaxRetries;
    }

    public static final /* synthetic */ JSONObject D() {
        return defaultPreloadAudioMuttTimeout;
    }

    public static final /* synthetic */ JSONObject E() {
        return defaultPreloadAudioPreloadTimeout;
    }

    public static final /* synthetic */ JSONObject F() {
        return defaultPreloadAudioRetryInterval;
    }

    public static final /* synthetic */ JSONObject G() {
        return defaultPreloadAudioloadTimeout;
    }

    public static final /* synthetic */ JSONObject H() {
        return defaultPreloadBannerLoadTimeout;
    }

    public static final /* synthetic */ JSONObject I() {
        return defaultPreloadBannerMaxRetries;
    }

    public static final /* synthetic */ JSONObject J() {
        return defaultPreloadBannerMuttTimeout;
    }

    public static final /* synthetic */ JSONObject K() {
        return defaultPreloadBannerPreloadTimeout;
    }

    public static final /* synthetic */ JSONObject L() {
        return defaultPreloadBannerRetryInterval;
    }

    public static final /* synthetic */ JSONObject M() {
        return defaultPreloadIntMaxRetries;
    }

    public static final /* synthetic */ JSONObject N() {
        return defaultPreloadIntMuttTimeout;
    }

    public static final /* synthetic */ JSONObject O() {
        return defaultPreloadIntPreloadTimeout;
    }

    public static final /* synthetic */ JSONObject P() {
        return defaultPreloadIntRetryInterval;
    }

    public static final /* synthetic */ JSONObject Q() {
        return defaultPreloadIntloadTimeout;
    }

    public static final /* synthetic */ JSONObject R() {
        return defaultPreloadNativeMaxRetries;
    }

    public static final /* synthetic */ JSONObject S() {
        return defaultPreloadNativeMuttTimeout;
    }

    public static final /* synthetic */ JSONObject T() {
        return defaultPreloadNativePreloadTimeout;
    }

    public static final /* synthetic */ JSONObject U() {
        return defaultPreloadNativeRetryInterval;
    }

    public static final /* synthetic */ JSONObject V() {
        return defaultPreloadNativeloadTimeout;
    }

    public static final /* synthetic */ JSONObject a() {
        return defaultABAudioMaxRetries;
    }

    public static final /* synthetic */ JSONObject b() {
        return defaultABAudioRetryInterval;
    }

    public static final /* synthetic */ JSONObject c() {
        return defaultABAudioloadTimeout;
    }

    public static final /* synthetic */ JSONObject d() {
        return defaultABBannerMaxRetries;
    }

    public static final /* synthetic */ JSONObject e() {
        return defaultABBannerRetryInterval;
    }

    public static final /* synthetic */ JSONObject f() {
        return defaultABBannerloadTimeout;
    }

    public static final /* synthetic */ JSONObject g() {
        return defaultABIntMaxRetries;
    }

    public static final /* synthetic */ JSONObject h() {
        return defaultABIntRetryInterval;
    }

    public static final /* synthetic */ JSONObject i() {
        return defaultABIntloadTimeout;
    }

    public static final /* synthetic */ JSONObject j() {
        return defaultABNativeMaxRetries;
    }

    public static final /* synthetic */ JSONObject k() {
        return defaultABNativeRetryInterval;
    }

    public static final /* synthetic */ JSONObject l() {
        return defaultABNativeloadTimeout;
    }

    public static final /* synthetic */ JSONObject m() {
        return defaultNonABAudioMaxRetries;
    }

    public static final /* synthetic */ JSONObject n() {
        return defaultNonABAudioMuttTimeout;
    }

    public static final /* synthetic */ JSONObject o() {
        return defaultNonABAudioRetryInterval;
    }

    public static final /* synthetic */ JSONObject p() {
        return defaultNonABAudioloadTimeout;
    }

    public static final /* synthetic */ JSONObject q() {
        return defaultNonABBannerMaxRetries;
    }

    public static final /* synthetic */ JSONObject r() {
        return defaultNonABBannerMuttTimeout;
    }

    public static final /* synthetic */ JSONObject s() {
        return defaultNonABBannerRetryInterval;
    }

    public static final /* synthetic */ JSONObject t() {
        return defaultNonABBannerloadTimeout;
    }

    public static final /* synthetic */ JSONObject u() {
        return defaultNonABIntMaxRetries;
    }

    public static final /* synthetic */ JSONObject v() {
        return defaultNonABIntMuttTimeout;
    }

    public static final /* synthetic */ JSONObject w() {
        return defaultNonABIntRetryInterval;
    }

    public static final /* synthetic */ JSONObject x() {
        return defaultNonABIntloadTimeout;
    }

    public static final /* synthetic */ JSONObject y() {
        return defaultNonABNativeMaxRetries;
    }

    public static final /* synthetic */ JSONObject z() {
        return defaultNonABNativeMuttTimeout;
    }

    @NotNull
    public final TimeoutConfigurations$MediationConfig X() {
        return this.mediationConfig;
    }

    public final int Y() {
        return this.step4s;
    }

    public final boolean Z() {
        if (Y() >= 0 && this.mediationConfig.isValid()) {
            return true;
        }
        return false;
    }

    public final void a0() {
        int i10 = this.step4s;
        if (i10 <= 0) {
            i10 = 15000;
        }
        this.step4s = i10;
    }
}
