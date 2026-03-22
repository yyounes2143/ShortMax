package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfnh {
    private static int zza = 2;

    public static void zza(@NonNull Context context) {
        context.registerReceiver(new zzfng(), new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
    }

    public static int zzb() {
        if (zzfnd.zza() != zzflr.CTV) {
            return 2;
        }
        return zza;
    }
}
