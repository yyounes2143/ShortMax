package com.google.android.gms.internal.consent_sdk;

import android.os.Build;
/* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
/* loaded from: classes4.dex */
public final class zzcu {
    public static boolean zza(boolean z10) {
        if (Build.VERSION.SDK_INT >= 31) {
            String str = Build.FINGERPRINT;
            if (!str.contains("generic") && !str.contains("emulator") && !Build.HARDWARE.contains("ranchu")) {
                return false;
            }
            return true;
        }
        return Build.DEVICE.startsWith("generic");
    }
}
