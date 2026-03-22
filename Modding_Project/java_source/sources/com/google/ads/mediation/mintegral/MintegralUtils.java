package com.google.ads.mediation.mintegral;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.mediation.AppLovinExtras;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.MobileAds;
import com.mbridge.msdk.MBridgeSDK;
import com.mbridge.msdk.out.MBConfiguration;
/* loaded from: classes4.dex */
public class MintegralUtils {
    public static final String TAG = "MintegralUtils";

    /* JADX INFO: Access modifiers changed from: protected */
    public static void configureMintegralPrivacy(Context context, MBridgeSDK mBridgeSDK) {
        boolean z10 = true;
        if (MobileAds.getRequestConfiguration().getTagForChildDirectedTreatment() != 1) {
            z10 = false;
        }
        mBridgeSDK.setCoppaStatus(context, z10);
    }

    public static int convertDipToPixel(@NonNull Context context, float f10) {
        Resources resources = context.getResources();
        if (resources == null) {
            return 0;
        }
        return (int) TypedValue.applyDimension(1, f10 + 0.5f, resources.getDisplayMetrics());
    }

    public static String getAdapterVersion() {
        return "16.9.91.0";
    }

    public static String getSdkVersion() {
        return MBConfiguration.SDK_VERSION;
    }

    public static boolean shouldMuteAudio(@NonNull Bundle bundle) {
        return bundle.getBoolean(AppLovinExtras.Keys.MUTE_AUDIO);
    }

    @Nullable
    public static AdError validateMintegralAdLoadParams(@Nullable String str, @Nullable String str2) {
        if (TextUtils.isEmpty(str)) {
            AdError createAdapterError = MintegralConstants.createAdapterError(101, "Missing or invalid ad Unit ID configured for this ad source instance in the AdMob or Ad Manager UI.");
            Log.e(TAG, createAdapterError.toString());
            return createAdapterError;
        } else if (TextUtils.isEmpty(str2)) {
            AdError createAdapterError2 = MintegralConstants.createAdapterError(101, "Missing or invalid Placement ID configured for this ad source instance in the AdMob or Ad Manager UI.");
            Log.e(TAG, createAdapterError2.toString());
            return createAdapterError2;
        } else {
            return null;
        }
    }

    @Nullable
    public static AdError validateMintegralAdLoadParams(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        AdError validateMintegralAdLoadParams = validateMintegralAdLoadParams(str, str2);
        if (validateMintegralAdLoadParams != null) {
            return validateMintegralAdLoadParams;
        }
        if (TextUtils.isEmpty(str3)) {
            AdError createAdapterError = MintegralConstants.createAdapterError(103, "Missing or invalid Mintegral bidding signal in this ad request.");
            Log.w(TAG, createAdapterError.toString());
            return createAdapterError;
        }
        return null;
    }
}
