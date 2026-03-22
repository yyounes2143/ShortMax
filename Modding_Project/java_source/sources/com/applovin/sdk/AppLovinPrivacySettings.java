package com.applovin.sdk;

import android.content.Context;
import androidx.annotation.Nullable;
import com.applovin.impl.p0;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
/* loaded from: classes2.dex */
public class AppLovinPrivacySettings {
    @Nullable
    public static Boolean getAdditionalConsentStatus(int i10) {
        k kVar = k.D0;
        if (kVar == null) {
            o.h("AppLovinPrivacySettings", "AppLovinPrivacySettings.getAdditionalConsentStatus(...) called when AppLovin MAX SDK is not initialized yet");
            return null;
        }
        return kVar.s0().a(i10);
    }

    @Nullable
    public static Boolean getPurposeConsentStatus(int i10) {
        k kVar = k.D0;
        if (kVar == null) {
            o.h("AppLovinPrivacySettings", "AppLovinPrivacySettings.getPurposeConsentStatus(...) called when AppLovin MAX SDK is not initialized yet");
            return null;
        }
        return kVar.s0().b(i10);
    }

    @Nullable
    public static Boolean getSpecialFeatureOptInStatus(int i10) {
        k kVar = k.D0;
        if (kVar == null) {
            o.h("AppLovinPrivacySettings", "AppLovinPrivacySettings.getSpecialFeatureOptInStatus(...) called when AppLovin MAX SDK is not initialized yet");
            return null;
        }
        return kVar.s0().c(i10);
    }

    @Nullable
    public static Boolean getTcfVendorConsentStatus(int i10) {
        k kVar = k.D0;
        if (kVar == null) {
            o.h("AppLovinPrivacySettings", "AppLovinPrivacySettings.getTcfVendorConsentStatus(...) called when AppLovin MAX SDK is not initialized yet");
            return null;
        }
        return kVar.s0().d(i10);
    }

    public static boolean hasUserConsent() {
        return hasUserConsent(k.o());
    }

    public static boolean isDoNotSell() {
        return isDoNotSell(k.o());
    }

    public static boolean isDoNotSellSet() {
        return isDoNotSellSet(k.o());
    }

    public static boolean isUserConsentSet() {
        return isUserConsentSet(k.o());
    }

    public static void setDoNotSell(boolean z10) {
        setDoNotSell(z10, k.o());
    }

    public static void setHasUserConsent(boolean z10) {
        setHasUserConsent(z10, k.o());
    }

    @Deprecated
    public static boolean hasUserConsent(Context context) {
        Boolean b10 = p0.b().b(context);
        if (b10 != null) {
            return b10.booleanValue();
        }
        return false;
    }

    @Deprecated
    public static boolean isDoNotSell(Context context) {
        Boolean b10 = p0.a().b(context);
        if (b10 != null) {
            return b10.booleanValue();
        }
        return false;
    }

    @Deprecated
    public static boolean isDoNotSellSet(Context context) {
        return p0.a().b(context) != null;
    }

    @Deprecated
    public static boolean isUserConsentSet(Context context) {
        return p0.b().b(context) != null;
    }

    @Deprecated
    public static void setDoNotSell(boolean z10, Context context) {
        o.g("AppLovinPrivacySettings", "setDoNotSell()");
        if (p0.a(z10, context)) {
            AppLovinSdk.getInstance(context).reinitialize(null, Boolean.valueOf(z10));
        }
    }

    @Deprecated
    public static void setHasUserConsent(boolean z10, Context context) {
        o.g("AppLovinPrivacySettings", "setHasUserConsent()");
        if (p0.b(z10, context)) {
            AppLovinSdk.getInstance(context).reinitialize(Boolean.valueOf(z10), null);
        }
    }
}
