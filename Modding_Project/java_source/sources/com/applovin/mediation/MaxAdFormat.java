package com.applovin.mediation;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.o;
import com.applovin.impl.t3;
import com.applovin.sdk.AppLovinSdkUtils;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import com.vungle.ads.internal.Constants;
/* loaded from: classes2.dex */
public class MaxAdFormat {

    /* renamed from: a  reason: collision with root package name */
    private final String f10751a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10752b;
    public static final MaxAdFormat BANNER = new MaxAdFormat("BANNER", "Banner");
    public static final MaxAdFormat MREC = new MaxAdFormat("MREC", "MREC");
    public static final MaxAdFormat LEADER = new MaxAdFormat("LEADER", "Leader");
    public static final MaxAdFormat INTERSTITIAL = new MaxAdFormat("INTER", "Interstitial");
    public static final MaxAdFormat APP_OPEN = new MaxAdFormat("APPOPEN", "App Open");
    public static final MaxAdFormat REWARDED = new MaxAdFormat("REWARDED", "Rewarded");
    public static final MaxAdFormat NATIVE = new MaxAdFormat("NATIVE", "Native");
    @Deprecated
    public static final MaxAdFormat REWARDED_INTERSTITIAL = new MaxAdFormat("REWARDED_INTER", "Rewarded Interstitial");

    private MaxAdFormat(String str, String str2) {
        this.f10751a = str;
        this.f10752b = str2;
    }

    @Nullable
    public static MaxAdFormat formatFromString(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.equalsIgnoreCase("banner")) {
            return BANNER;
        }
        if (str.equalsIgnoreCase("mrec")) {
            return MREC;
        }
        if (str.equalsIgnoreCase("native")) {
            return NATIVE;
        }
        if (!str.equalsIgnoreCase("leaderboard") && !str.equalsIgnoreCase("leader")) {
            if (!str.equalsIgnoreCase(Constants.PLACEMENT_TYPE_INTERSTITIAL) && !str.equalsIgnoreCase("inter")) {
                if (!str.equalsIgnoreCase(Constants.PLACEMENT_TYPE_APP_OPEN) && !str.equalsIgnoreCase("app_open")) {
                    if (!str.equalsIgnoreCase(Constants.PLACEMENT_TYPE_REWARDED) && !str.equalsIgnoreCase(AdmobPreloadConfig.REWARD)) {
                        o.h("AppLovinSdk", "Unknown ad format: " + str);
                        return null;
                    }
                    return REWARDED;
                }
                return APP_OPEN;
            }
            return INTERSTITIAL;
        }
        return LEADER;
    }

    public AppLovinSdkUtils.Size getAdaptiveSize(Context context) {
        return getAdaptiveSize(-1, context);
    }

    @Deprecated
    public String getDisplayName() {
        return this.f10752b;
    }

    public String getLabel() {
        return this.f10751a;
    }

    public AppLovinSdkUtils.Size getSize() {
        if (this == BANNER) {
            return new AppLovinSdkUtils.Size(320, 50);
        }
        if (this == LEADER) {
            return new AppLovinSdkUtils.Size(728, 90);
        }
        if (this == MREC) {
            return new AppLovinSdkUtils.Size(300, 250);
        }
        return new AppLovinSdkUtils.Size(0, 0);
    }

    public boolean isAdViewAd() {
        if (this != BANNER && this != MREC && this != LEADER) {
            return false;
        }
        return true;
    }

    public boolean isBannerOrLeaderAd() {
        if (this != BANNER && this != LEADER) {
            return false;
        }
        return true;
    }

    public boolean isFullscreenAd() {
        if (this != INTERSTITIAL && this != APP_OPEN && this != REWARDED) {
            return false;
        }
        return true;
    }

    public String toString() {
        return "MaxAdFormat{label='" + this.f10751a + "'}";
    }

    public AppLovinSdkUtils.Size getAdaptiveSize(int i10, Context context) {
        if (this != BANNER && this != LEADER) {
            return getSize();
        }
        return t3.a(i10, this, context);
    }
}
