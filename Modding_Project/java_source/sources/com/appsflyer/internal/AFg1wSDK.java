package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.applovin.sdk.AppLovinEventTypes;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFg1uSDK;
import com.ss.texturerender.TextureRenderKeys;
/* loaded from: classes2.dex */
public final class AFg1wSDK implements AFg1uSDK {
    @VisibleForTesting
    private static IntentFilter AFAdRevenueData = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    @Override // com.appsflyer.internal.AFg1uSDK
    @NonNull
    public final AFg1uSDK.AFa1zSDK getCurrencyIso4217Code(@NonNull Context context) {
        String str = null;
        float f10 = 0.0f;
        try {
            Intent registerReceiver = context.registerReceiver(null, AFAdRevenueData);
            if (registerReceiver != null) {
                if (2 == registerReceiver.getIntExtra("status", -1)) {
                    int intExtra = registerReceiver.getIntExtra("plugged", -1);
                    if (intExtra != 1) {
                        if (intExtra != 2) {
                            if (intExtra != 4) {
                                str = "other";
                            } else {
                                str = "wireless";
                            }
                        } else {
                            str = "usb";
                        }
                    } else {
                        str = "ac";
                    }
                } else {
                    str = "no";
                }
                int intExtra2 = registerReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1);
                int intExtra3 = registerReceiver.getIntExtra(TextureRenderKeys.KEY_IS_SCALE, -1);
                if (-1 != intExtra2 && -1 != intExtra3) {
                    f10 = (intExtra2 * 100.0f) / intExtra3;
                }
            }
        } catch (Throwable th2) {
            AFLogger.afErrorLogForExcManagerOnly("Device that failed to register receiver", th2);
        }
        return new AFg1uSDK.AFa1zSDK(f10, str);
    }
}
